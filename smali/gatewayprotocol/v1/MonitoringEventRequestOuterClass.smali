###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass (gatewayprotocol.v1.MonitoringEventRequestOuterClass)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;,
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;,
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;,
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;,
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
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

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.AnonymousClass1 (gatewayprotocol.v1.MonitoringEventRequestOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
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

    .line 701
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEvent (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEvent)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

.field public static final DURATION_MS_FIELD_NUMBER:I = 0x4

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final IMPRESSION_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final MONITORING_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private eventType_:I

.field private impressionNumber_:J

.field private monitoringId_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 754
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;-><init>()V

    .line 757
    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 758
    const-class v1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 1

    .line 199
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V
    .registers 3

    .line 199
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setImpressionNumber(J)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 1

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearImpressionNumber()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V
    .registers 2

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setEventTypeValue(I)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .registers 2

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 1

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearEventType()V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V
    .registers 2

    .line 199
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setMonitoringId(I)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 1

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearMonitoringId()V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V
    .registers 3

    .line 199
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->setDurationMs(J)V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 1

    .line 199
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->clearDurationMs()V

    return-void
.end method

.method private clearDurationMs()V
    .registers 3

    .line 391
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 392
    iput-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-void
.end method

.method private clearEventType()V
    .registers 2

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private clearImpressionNumber()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-void
.end method

.method private clearMonitoringId()V
    .registers 2

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 1

    .line 763
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 1

    .line 472
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 2

    .line 475
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 411
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 418
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 405
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 423
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 430
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
            ">;"
        }
    .end annotation

    .line 769
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDurationMs(J)V
    .registers 4

    .line 380
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    .line 381
    iput-wide p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-void
.end method

.method private setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .registers 2

    .line 292
    invoke-virtual {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private setEventTypeValue(I)V
    .registers 2

    .line 281
    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return-void
.end method

.method private setImpressionNumber(J)V
    .registers 3

    .line 231
    iput-wide p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-void
.end method

.method private setMonitoringId(I)V
    .registers 2

    .line 331
    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 701
    sget-object p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5c

    .line 747
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 741
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 726
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 728
    const-class p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    monitor-enter p2

    .line 729
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 731
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 734
    sput-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 736
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

    .line 723
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object p1

    .line 709
    :pswitch_38
    const-string p1, "bitField0_"

    const-string p2, "impressionNumber_"

    const-string p3, "eventType_"

    const-string v0, "monitoringId_"

    const-string v1, "durationMs_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 716
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u000c\u0003\u0004\u0004\u1002\u0000"

    .line 719
    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 706
    :pswitch_4f
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V

    return-object p1

    .line 703
    :pswitch_55
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-direct {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;-><init>()V

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getDurationMs()J
    .registers 3

    .line 369
    iget-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->durationMs_:J

    return-wide v0
.end method

.method public getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 2

    .line 269
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 270
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    :cond_a
    return-object v0
.end method

.method public getEventTypeValue()I
    .registers 2

    .line 257
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->eventType_:I

    return v0
.end method

.method public getImpressionNumber()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->impressionNumber_:J

    return-wide v0
.end method

.method public getMonitoringId()I
    .registers 2

    .line 319
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->monitoringId_:I

    return v0
.end method

.method public hasDurationMs()Z
    .registers 3

    .line 357
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEvent.Builder (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEvent$Builder)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 492
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$000()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V
    .registers 2

    .line 485
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDurationMs()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 2

    .line 597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearImpressionNumber()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 2

    .line 531
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearMonitoringId()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 2

    .line 637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public getDurationMs()J
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    return-object v0
.end method

.method public getEventTypeValue()I
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public getImpressionNumber()J
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getImpressionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitoringId()I
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getMonitoringId()I

    move-result v0

    return v0
.end method

.method public hasDurationMs()Z
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->hasDurationMs()Z

    move-result v0

    return v0
.end method

.method public setDurationMs(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 4

    .line 676
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V

    return-object p0
.end method

.method public setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 3

    .line 584
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V

    return-object p0
.end method

.method public setEventTypeValue(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 3

    .line 558
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V

    return-object p0
.end method

.method public setImpressionNumber(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 4

    .line 518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$100(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V

    return-object p0
.end method

.method public setMonitoringId(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .registers 3

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventOrBuilder (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MonitoringEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getDurationMs()J
.end method

.method public abstract getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
.end method

.method public abstract getEventTypeValue()I
.end method

.method public abstract getImpressionNumber()J
.end method

.method public abstract getMonitoringId()I
.end method

.method public abstract hasDurationMs()Z
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventRequest (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventRequest)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2

.field public static final MONITORING_EVENT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1420
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;-><init>()V

    .line 1423
    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    .line 1424
    const-class v1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 846
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$1100()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 1

    .line 841
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .registers 1

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$1700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .registers 1

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method public static synthetic access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-void
.end method

.method public static synthetic access$1900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 2

    .line 841
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-void
.end method

.method public static synthetic access$2000(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V
    .registers 1

    .line 841
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->clearMonitoringEvent()V

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 977
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 978
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private clearMonitoringEvent()V
    .registers 2

    const/4 v0, 0x0

    .line 1043
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1044
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 912
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 1

    .line 1429
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 4

    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_22

    .line 962
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 963
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 964
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_24

    .line 966
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 968
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 4

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    if-eqz v0, :cond_22

    .line 1028
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 1029
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1030
    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    goto :goto_24

    .line 1032
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1034
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 4

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_22

    .line 896
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 897
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 898
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_24

    .line 900
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 902
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 1

    .line 1124
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 2

    .line 1127
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1063
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1070
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1050
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1057
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1075
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
            ">;"
        }
    .end annotation

    .line 1435
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 949
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 2

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    .line 1015
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 883
    iget p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1368
    sget-object p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 1413
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 1407
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1392
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 1394
    const-class p2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    monitor-enter p2

    .line 1395
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 1397
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1400
    sput-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 1402
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

    .line 1389
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object p1

    .line 1376
    :pswitch_38
    const-string p1, "bitField0_"

    const-string p2, "staticDeviceInfo_"

    const-string p3, "dynamicDeviceInfo_"

    const-string v0, "monitoringEvent_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 1382
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 1385
    sget-object p3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1373
    :pswitch_4d
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V

    return-object p1

    .line 1370
    :pswitch_53
    new-instance p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;-><init>()V

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

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 2

    .line 937
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2

    .line 1003
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->monitoringEvent_:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDefaultInstance()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 2

    .line 871
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .registers 2

    .line 926
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMonitoringEvent()Z
    .registers 2

    .line 992
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .registers 3

    .line 860
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1144
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1100()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V
    .registers 2

    .line 1137
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 2

    .line 1285
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public clearMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 2

    .line 1356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$2000(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 2

    .line 1214
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 2

    .line 1239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 2

    .line 1310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 2

    .line 1168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMonitoringEvent()Z
    .registers 2

    .line 1299
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasMonitoringEvent()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .registers 2

    .line 1157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1274
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1345
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1346
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1262
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1249
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1191
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .registers 3

    .line 1178
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MonitoringEventRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
.end method

.method public abstract getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
.end method

.method public abstract getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
.end method

.method public abstract hasDynamicDeviceInfo()Z
.end method

.method public abstract hasMonitoringEvent()Z
.end method

.method public abstract hasStaticDeviceInfo()Z
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventType (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventType)
.class public final enum Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
.super Ljava/lang/Enum;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonitoringEventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

.field public static final enum MONITORING_EVENT_TYPE_CLOSE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

.field public static final MONITORING_EVENT_TYPE_CLOSE_VALUE:I = 0x2

.field public static final enum MONITORING_EVENT_TYPE_OPEN:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

.field public static final MONITORING_EVENT_TYPE_OPEN_VALUE:I = 0x1

.field public static final enum MONITORING_EVENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

.field public static final MONITORING_EVENT_TYPE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 4

    .line 19
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    sget-object v1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_OPEN:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    sget-object v2, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_CLOSE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    sget-object v3, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    filled-new-array {v0, v1, v2, v3}, [Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 24
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    const-string v1, "MONITORING_EVENT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    .line 32
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    const-string v1, "MONITORING_EVENT_TYPE_OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_OPEN:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    .line 40
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    const-string v1, "MONITORING_EVENT_TYPE_CLOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_CLOSE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    .line 41
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    .line 19
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->$values()[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->$VALUES:[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    .line 99
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_a
    sget-object p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_CLOSE:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    return-object p0

    .line 88
    :cond_d
    sget-object p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_OPEN:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    return-object p0

    .line 87
    :cond_10
    sget-object p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->MONITORING_EVENT_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 109
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-static {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 2

    .line 19
    const-class v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 1

    .line 19
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->$VALUES:[Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 68
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->UNRECOGNIZED:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    if-eq p0, v0, :cond_7

    .line 72
    iget v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->value:I

    return v0

    .line 69
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventType.AnonymousClass1 (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventType$1)
.class public Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$1;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$1;->findValueByNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 2

    .line 103
    invoke-static {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestOuterClass.MonitoringEventType.MonitoringEventTypeVerifier (gatewayprotocol.v1.MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;
.super Ljava/lang/Object;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringEventTypeVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType$MonitoringEventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 117
    invoke-static {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;->forNumber(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
