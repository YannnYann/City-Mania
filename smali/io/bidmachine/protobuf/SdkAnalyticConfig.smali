###### Class io.bidmachine.protobuf.SdkAnalyticConfig (io.bidmachine.protobuf.SdkAnalyticConfig)
.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;,
        Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;,
        Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final COUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field public static final INTERVAL_FIELD_NUMBER:I = 0x3

.field public static final METRIC_CONFIGS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile context_:Ljava/lang/Object;

.field private count_:I

.field private interval_:I

.field private memoizedIsInitialized:B

.field private metricConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2370
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2378
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1424
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 21
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_8e

    .line 50
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    const/16 v5, 0xa

    if-eq v3, v5, :cond_64

    const/16 v5, 0x12

    if-eq v3, v5, :cond_5d

    const/16 v5, 0x18

    if-eq v3, v5, :cond_56

    const/16 v5, 0x20

    if-eq v3, v5, :cond_4f

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_37

    .line 87
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2f
    move v1, v4

    goto :goto_c

    :catchall_31
    move-exception p1

    goto :goto_7a

    :catch_33
    move-exception p1

    goto :goto_6b

    :catch_35
    move-exception p1

    goto :goto_75

    :cond_37
    if-nez v2, :cond_41

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    move v2, v4

    .line 82
    :cond_41
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 83
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 82
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 74
    :cond_4f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    goto :goto_c

    .line 69
    :cond_56
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    goto :goto_c

    .line 62
    :cond_5d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 64
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    goto :goto_c

    .line 56
    :cond_64
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 58
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;
    :try_end_6a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_6a} :catch_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_6a} :catch_33
    .catchall {:try_start_e .. :try_end_6a} :catchall_31

    goto :goto_c

    .line 98
    :goto_6b
    :try_start_6b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 99
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 96
    :goto_75
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_31

    :goto_7a
    if-eqz v2, :cond_84

    .line 102
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 104
    :cond_84
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 106
    throw p1

    :cond_8e
    if-eqz v2, :cond_98

    .line 102
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 104
    :cond_98
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1424
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1800(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    return p1
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    return p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2300(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2400()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 1

    .line 2374
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 1

    .line 1606
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1609
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1579
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1580
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1587
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1547
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1553
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1593
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1600
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1568
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1574
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1575
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1536
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1542
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1557
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1563
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation

    .line 2389
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1490
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v1, :cond_d

    .line 1491
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1493
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 1495
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1497
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1499
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v1

    .line 1500
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 1501
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v1

    .line 1502
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    .line 1503
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v1

    .line 1504
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    .line 1505
    :cond_53
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    return v2

    :cond_5e
    return v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 1320
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 1321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1322
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1324
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1326
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1327
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1342
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 1343
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1344
    check-cast v0, Ljava/lang/String;

    .line 1345
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1347
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object v0

    .line 1350
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 1381
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2

    .line 2399
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public getInterval()I
    .registers 2

    .line 1366
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    return v0
.end method

.method public getMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3

    .line 1413
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1
.end method

.method public getMetricConfigsCount()I
    .registers 2

    .line 1406
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricConfigsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricConfigsOrBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    .registers 3

    .line 1421
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1
.end method

.method public getMetricConfigsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation

    .line 2394
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1458
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1462
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1463
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1465
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x2

    .line 1466
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1468
    :cond_2c
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    if-eqz v2, :cond_36

    const/4 v3, 0x3

    .line 1470
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1472
    :cond_36
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    if-eqz v2, :cond_40

    const/4 v3, 0x4

    .line 1474
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1476
    :cond_40
    :goto_40
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 1477
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 1478
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1480
    :cond_59
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1481
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 1274
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 1275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1276
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1278
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1280
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1281
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1296
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 1297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1298
    check-cast v0, Ljava/lang/String;

    .line 1299
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1301
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object v0

    .line 1304
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1511
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1515
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1519
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1521
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1523
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 1524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsCount()I

    move-result v0

    if-lez v0, :cond_59

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_59
    mul-int/lit8 v1, v1, 0x1d

    .line 1528
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1529
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 116
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1427
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1431
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1604
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 1620
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 1613
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1614
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1439
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1441
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1442
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1444
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 1445
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1447
    :cond_28
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 1448
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_30
    const/4 v0, 0x0

    .line 1450
    :goto_31
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 1451
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1453
    :cond_48
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.AnonymousClass1 (io.bidmachine.protobuf.SdkAnalyticConfig$1)
.class Lio/bidmachine/protobuf/SdkAnalyticConfig$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SdkAnalyticConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2378
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2384
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2378
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.Builder (io.bidmachine.protobuf.SdkAnalyticConfig$Builder)
.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private count_:I

.field private interval_:I

.field private metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metricConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1644
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1930
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2113
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1645
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1650
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1834
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1930
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2113
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1651
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 3

    .line 1626
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 2

    .line 1626
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>()V

    return-void
.end method

.method private ensureMetricConfigsIsMutable()V
    .registers 3

    .line 2115
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 2116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2117
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1632
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2340
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 2341
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2345
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2347
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2349
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1655
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1656
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllMetricConfigs(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;"
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2252
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2253
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2257
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 2237
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2238
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2239
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2242
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 2206
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2210
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2211
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2212
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2214
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMetricConfigs(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 2223
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2224
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2225
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2228
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMetricConfigs(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 2189
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2193
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2194
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2197
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMetricConfigsBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 2319
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2320
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v1

    .line 2319
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object v0
.end method

.method public addMetricConfigsBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 2327
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2328
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v1

    .line 2327
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 1750
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3

    .line 1692
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1694
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 3

    .line 1701
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    .line 1703
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1702(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1802(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I

    .line 1706
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2002(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I

    .line 1707
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_38

    .line 1708
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    .line 1709
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1710
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 1712
    :cond_32
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_3f

    .line 1714
    :cond_38
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;

    .line 1716
    :goto_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1661
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1662
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1664
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1666
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 1668
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 1670
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1671
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1672
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    return-object p0

    .line 1674
    :cond_1d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2001
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2002
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCount()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2107
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 2108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1733
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public clearInterval()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2064
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 2065
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMetricConfigs()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2265
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2266
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2267
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 2268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2270
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1738
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public clearUrl()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1905
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1722
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 1940
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1941
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1942
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1944
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1945
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1948
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1961
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1962
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1963
    check-cast v0, Ljava/lang/String;

    .line 1964
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1966
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1969
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 2080
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2

    .line 1687
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1682
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInterval()I
    .registers 2

    .line 2037
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    return v0
.end method

.method public getMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3

    .line 2148
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2149
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1

    .line 2151
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1
.end method

.method public getMetricConfigsBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 2292
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public getMetricConfigsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            ">;"
        }
    .end annotation

    .line 2335
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricConfigsCount()I
    .registers 2

    .line 2138
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2139
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2141
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMetricConfigsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2129
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2131
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricConfigsOrBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    .registers 3

    .line 2299
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2300
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1

    .line 2301
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1
.end method

.method public getMetricConfigsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2309
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2312
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 1844
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1845
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1846
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1848
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1849
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1852
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1865
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1867
    check-cast v0, Ljava/lang/String;

    .line 1868
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1870
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1873
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1638
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1639
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1821
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1827
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1823
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticConfig;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1824
    :try_start_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 1827
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1829
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 1754
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_b

    .line 1755
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1

    .line 1757
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 1763
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1764
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1765
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1700(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1766
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1768
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1769
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1800(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1772
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 1773
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setInterval(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1775
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    if-eqz v0, :cond_47

    .line 1776
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setCount(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1778
    :cond_47
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7a

    .line 1779
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1780
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1781
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1782
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    goto :goto_76

    .line 1784
    :cond_6a
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 1785
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1787
    :goto_76
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_b6

    .line 1790
    :cond_7a
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1791
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1792
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1793
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1794
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1795
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 1797
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 1798
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_aa
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_b6

    .line 1800
    :cond_ad
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1804
    :cond_b6
    :goto_b6
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2300(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2360
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public removeMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 2278
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2279
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2280
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2283
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1984
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1987
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContextBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2017
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2019
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2021
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCount(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2093
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 2094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 3

    .line 1728
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public setInterval(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2050
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 2051
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 2176
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2177
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2178
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2181
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 2159
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2163
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2164
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2167
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1626
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1626
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 4

    .line 1744
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2354
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public setUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1892
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1923
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1925
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig (io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig)
.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

.field public static final DIMENSIONS_FIELD_NUMBER:I = 0x2

.field public static final METRICS_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private dimensions_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private metrics_:Lcom/explorestack/protobuf/LazyStringList;

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1228
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    .line 1236
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 470
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->memoizedIsInitialized:B

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 234
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>()V

    .line 255
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_95

    .line 263
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5d

    const/16 v5, 0x12

    if-eq v3, v5, :cond_46

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 293
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_73

    :catch_2b
    move-exception p1

    goto :goto_64

    :catch_2d
    move-exception p1

    goto :goto_6e

    .line 284
    :cond_2f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_40

    .line 286
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 289
    :cond_40
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 275
    :cond_46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_57

    .line 277
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 280
    :cond_57
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 269
    :cond_5d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 271
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;
    :try_end_63
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_63} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_63} :catch_2b
    .catchall {:try_start_e .. :try_end_63} :catchall_29

    goto :goto_c

    .line 304
    :goto_64
    :try_start_64
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 305
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 302
    :goto_6e
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_29

    :goto_73
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_7f

    .line 308
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_7f
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_8b

    .line 311
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 313
    :cond_8b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 315
    throw p1

    :cond_95
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a1

    .line 308
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_a1
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_ad

    .line 311
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 313
    :cond_ad
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 470
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 3

    .line 222
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 222
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Ljava/lang/Object;
    .registers 1

    .line 222
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 222
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 222
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 222
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 222
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 222
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 222
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 1

    .line 1232
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 319
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 1

    .line 641
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 644
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 615
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 622
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 582
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 588
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 628
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 635
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 603
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 610
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 571
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 577
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 592
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 598
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 1247
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 531
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    if-nez v1, :cond_d

    .line 532
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 534
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    .line 536
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 538
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 539
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 540
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 541
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 542
    :cond_3d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    return v2

    :cond_48
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2

    .line 1257
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object v0
.end method

.method public getDimensions(I)Ljava/lang/String;
    .registers 3

    .line 403
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDimensionsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 416
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDimensionsCount()I
    .registers 2

    .line 391
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 380
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDimensionsList()Ljava/util/List;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Ljava/lang/String;
    .registers 3

    .line 454
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMetricsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 467
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCount()I
    .registers 2

    .line 442
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 431
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getMetricsList()Ljava/util/List;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 338
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    .line 339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 340
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 342
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 345
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 356
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    .line 357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 358
    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 361
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    return-object v0

    .line 364
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 1252
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 498
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 502
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 503
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    move v2, v1

    move v3, v2

    .line 507
    :goto_1c
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 508
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    add-int/2addr v0, v3

    .line 511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    .line 515
    :goto_3d
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_53

    .line 516
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_53
    add-int/2addr v0, v2

    .line 519
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 522
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 548
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 552
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 554
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsCount()I

    move-result v0

    if-lez v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 557
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 559
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsCount()I

    move-result v0

    if-lez v0, :cond_49

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_49
    mul-int/lit8 v1, v1, 0x1d

    .line 563
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 564
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 325
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 473
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 477
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 222
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 639
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 655
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 241
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 648
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 649
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 485
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    move v1, v0

    .line 487
    :goto_12
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 488
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 490
    :cond_27
    :goto_27
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 491
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 493
    :cond_3c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.AnonymousClass1 (io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig$1)
.class Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SdkAnalyticConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1236
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1242
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1236
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.Builder (io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig$Builder)
.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dimensions_:Lcom/explorestack/protobuf/LazyStringList;

.field private metrics_:Lcom/explorestack/protobuf/LazyStringList;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 679
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1064
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 680
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 685
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 842
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 918
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1064
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 686
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 3

    .line 661
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .registers 2

    .line 661
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>()V

    return-void
.end method

.method private ensureDimensionsIsMutable()V
    .registers 3

    .line 920
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 921
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 922
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .registers 3

    .line 1066
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 1067
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1068
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 667
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 690
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllDimensions(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;"
        }
    .end annotation

    .line 1023
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 1024
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllMetrics(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;"
        }
    .end annotation

    .line 1169
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 1170
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addDimensions(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 1008
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addDimensionsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1058
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 1059
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 1060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addMetrics(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 1154
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addMetricsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1203
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1204
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 1205
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 1206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 774
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 720
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 3

    .line 727
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    .line 729
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$402(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 731
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 732
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 734
    :cond_1f
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$502(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 735
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_38

    .line 736
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 737
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 739
    :cond_38
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$602(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 695
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 698
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 699
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 700
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    and-int/lit8 v0, v1, -0x4

    .line 701
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDimensions()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 1038
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1039
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 1040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 757
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public clearMetrics()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 1184
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1185
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 1186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 897
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 762
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 746
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .registers 2

    .line 713
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 708
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDimensions(I)Ljava/lang/String;
    .registers 3

    .line 958
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDimensionsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 971
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDimensionsCount()I
    .registers 2

    .line 946
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 935
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDimensionsList()Ljava/util/List;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Ljava/lang/String;
    .registers 3

    .line 1104
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMetricsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1117
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCount()I
    .registers 2

    .line 1092
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 1081
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetricsList()Ljava/util/List;
    .registers 2

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 848
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 849
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 850
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 852
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 853
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 856
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 865
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 867
    check-cast v0, Ljava/lang/String;

    .line 868
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 870
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 873
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 673
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 674
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 829
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 835
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 831
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 832
    :try_start_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 835
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 837
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 778
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    if-eqz v0, :cond_b

    .line 779
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1

    .line 781
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 787
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 788
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 789
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$400(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 792
    :cond_1a
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 793
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 794
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    .line 795
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    goto :goto_45

    .line 797
    :cond_39
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    :goto_45
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 802
    :cond_48
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 803
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 804
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    .line 805
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    goto :goto_73

    .line 807
    :cond_67
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 808
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 810
    :goto_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 812
    :cond_76
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$700(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 1218
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public setDimensions(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 986
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 989
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 661
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 3

    .line 752
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public setMetrics(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 1132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 1135
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 909
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 913
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 661
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 661
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 4

    .line 768
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .registers 2

    .line 1212
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder (io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfigOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
.super Ljava/lang/Object;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDimensions(I)Ljava/lang/String;
.end method

.method public abstract getDimensionsBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDimensionsCount()I
.end method

.method public abstract getDimensionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetrics(I)Ljava/lang/String;
.end method

.method public abstract getMetricsBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getMetricsCount()I
.end method

.method public abstract getMetricsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
