###### Class io.bidmachine.protobuf.sdk.LifecycleMetric (io.bidmachine.protobuf.sdk.LifecycleMetric)
.class public final Lio/bidmachine/protobuf/sdk/LifecycleMetric;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "LifecycleMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;,
        Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_STATES_FIELD_NUMBER:I = 0x1

.field private static final requiredStates_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private requiredStatesMemoizedSerializedSize:I

.field private requiredStates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 259
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 805
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    .line 813
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$2;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$2;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 314
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->memoizedIsInitialized:B

    .line 23
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>()V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_90

    .line 52
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    const/16 v5, 0x8

    if-eq v3, v5, :cond_55

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2b

    .line 81
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_23
    move v1, v4

    goto :goto_c

    :catchall_25
    move-exception p1

    goto :goto_7c

    :catch_27
    move-exception p1

    goto :goto_6d

    :catch_29
    move-exception p1

    goto :goto_77

    .line 67
    :cond_2b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 68
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 69
    :goto_33
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_51

    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    if-nez v2, :cond_47

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    move v2, v4

    .line 75
    :cond_47
    iget-object v6, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 77
    :cond_51
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_c

    .line 58
    :cond_55
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    if-nez v2, :cond_63

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    move v2, v4

    .line 63
    :cond_63
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_6c} :catch_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_6c} :catch_27
    .catchall {:try_start_e .. :try_end_6c} :catchall_25

    goto :goto_c

    .line 92
    :goto_6d
    :try_start_6d
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 93
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 90
    :goto_77
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_25

    :goto_7c
    if-eqz v2, :cond_86

    .line 96
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    .line 98
    :cond_86
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 100
    throw p1

    :cond_90
    if-eqz v2, :cond_9a

    .line 96
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    .line 98
    :cond_9a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 314
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Ljava/util/List;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/LifecycleMetric;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$600()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 1

    .line 809
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 104
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 1

    .line 466
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 469
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 440
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 447
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 407
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 413
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 453
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 460
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 428
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 435
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 396
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 402
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 423
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
            ">;"
        }
    .end annotation

    .line 824
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 367
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    if-nez v1, :cond_d

    .line 368
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 370
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    .line 372
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    iget-object v2, p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return v2

    .line 373
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v2

    :cond_26
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2

    .line 834
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
            ">;"
        }
    .end annotation

    .line 829
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRequiredStates(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 4

    .line 292
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p1
.end method

.method public getRequiredStatesCount()I
    .registers 2

    .line 283
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredStatesList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    sget-object v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getRequiredStatesValue(I)I
    .registers 3

    .line 310
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRequiredStatesValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 341
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 347
    :goto_8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 348
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    .line 349
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 352
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getRequiredStatesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    add-int/lit8 v0, v1, 0x1

    .line 354
    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_37

    :cond_36
    move v0, v1

    .line 355
    :goto_37
    iput v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStatesMemoizedSerializedSize:I

    .line 357
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 379
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 383
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 384
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getRequiredStatesCount()I

    move-result v0

    if-lez v0, :cond_23

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 386
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_23
    mul-int/lit8 v1, v1, 0x1d

    .line 388
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 389
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 317
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 321
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->newBuilderForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 464
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->newBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4

    .line 480
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 473
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 474
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;-><init>(Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getSerializedSize()I

    .line 329
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getRequiredStatesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/16 v0, 0xa

    .line 330
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 331
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStatesMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_17
    const/4 v0, 0x0

    .line 333
    :goto_18
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 334
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->requiredStates_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 336
    :cond_32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.LifecycleMetric.AnonymousClass1 (io.bidmachine.protobuf.sdk.LifecycleMetric$1)
.class Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;
.super Ljava/lang/Object;
.source "LifecycleMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/LifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 2

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->valueOf(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object p1

    if-nez p1, :cond_c

    .line 265
    sget-object p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 261
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;->convert(Ljava/lang/Integer;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.LifecycleMetric.AnonymousClass2 (io.bidmachine.protobuf.sdk.LifecycleMetric$2)
.class Lio/bidmachine/protobuf/sdk/LifecycleMetric$2;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "LifecycleMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/LifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 813
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 819
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 813
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$2;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.LifecycleMetric.Builder (io.bidmachine.protobuf.sdk.LifecycleMetric$Builder)
.class public final Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "LifecycleMetric.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/LifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requiredStates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 508
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 648
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 509
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 514
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 648
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 515
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V
    .registers 3

    .line 490
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V
    .registers 2

    .line 490
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;-><init>()V

    return-void
.end method

.method private ensureRequiredStatesIsMutable()V
    .registers 3

    .line 650
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 652
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 496
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 519
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllRequiredStates(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;"
        }
    .end annotation

    .line 715
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 716
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 717
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 719
    :cond_21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllRequiredStatesValue(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;"
        }
    .end annotation

    .line 779
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 780
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 781
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 783
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 593
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public addRequiredStates(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 704
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRequiredStatesValue(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 767
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 768
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3

    .line 543
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 545
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3

    .line 552
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/LifecycleMetric$1;)V

    .line 553
    iget v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    .line 555
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 556
    iget v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    .line 558
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$402(Lio/bidmachine/protobuf/sdk/LifecycleMetric;Ljava/util/List;)Ljava/util/List;

    .line 559
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clear()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 524
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 525
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 526
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 576
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 581
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public clearRequiredStates()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 727
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 728
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    .line 729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 565
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->clone()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 2

    .line 538
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 533
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRequiredStates(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 4

    .line 676
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p1
.end method

.method public getRequiredStatesCount()I
    .registers 2

    .line 668
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredStatesList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 661
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getRequiredStatesValue(I)I
    .registers 3

    .line 746
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRequiredStatesValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 502
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    const-class v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    .line 503
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

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

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

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

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

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

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

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 634
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 640
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 636
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 637
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

    .line 640
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    .line 642
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 597
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    if-eqz v0, :cond_b

    .line 598
    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1

    .line 600
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4

    .line 606
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 607
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$400(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 608
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 609
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$400(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    .line 610
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->bitField0_:I

    goto :goto_32

    .line 612
    :cond_26
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 613
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$400(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    :goto_32
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 617
    :cond_35
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->access$500(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    .line 618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 795
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 490
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 3

    .line 571
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4

    .line 587
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

.method public setRequiredStates(ILio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4

    .line 687
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 690
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRequiredStatesValue(II)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 4

    .line 756
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->ensureRequiredStatesIsMutable()V

    .line 757
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->requiredStates_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 490
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 789
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.LifecycleMetric.LifecycleState (io.bidmachine.protobuf.sdk.LifecycleMetric$LifecycleState)
.class public final enum Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
.super Ljava/lang/Enum;
.source "LifecycleMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/LifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field public static final enum FOREGROUND:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field public static final FOREGROUND_VALUE:I = 0x0

.field public static final enum HAS_WINDOW_FOCUS:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field public static final HAS_WINDOW_FOCUS_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field public static final enum VIEW_APPEARED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

.field public static final VIEW_APPEARED_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 127
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->FOREGROUND:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 135
    new-instance v1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    const-string v2, "HAS_WINDOW_FOCUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->HAS_WINDOW_FOCUS:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 143
    new-instance v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    const-string v3, "VIEW_APPEARED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->VIEW_APPEARED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 144
    new-instance v3, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 118
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->$VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    .line 209
    new-instance v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 233
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->values()[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    iput p3, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->VIEW_APPEARED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p0

    .line 198
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->HAS_WINDOW_FOCUS:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p0

    .line 197
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->FOREGROUND:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 230
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->forNumber(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 3

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 242
    sget-object p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p0

    .line 244
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 238
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 2

    .line 118
    const-class v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 1

    .line 118
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->$VALUES:[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 226
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 174
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    if-eq p0, v0, :cond_7

    .line 178
    iget v0, p0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->value:I

    return v0

    .line 175
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 218
    sget-object v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    if-eq p0, v0, :cond_17

    .line 222
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 219
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.sdk.LifecycleMetric.LifecycleState.AnonymousClass1 (io.bidmachine.protobuf.sdk.LifecycleMetric$LifecycleState$1)
.class Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState$1;
.super Ljava/lang/Object;
.source "LifecycleMetric.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 210
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState$1;->findValueByNumber(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;
    .registers 2

    .line 212
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->forNumber(I)Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object p1

    return-object p1
.end method
