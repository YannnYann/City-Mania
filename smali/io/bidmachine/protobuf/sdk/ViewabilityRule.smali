###### Class io.bidmachine.protobuf.sdk.ViewabilityRule (io.bidmachine.protobuf.sdk.ViewabilityRule)
.class public final Lio/bidmachine/protobuf/sdk/ViewabilityRule;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ViewabilityRule.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    }
.end annotation


# static fields
.field public static final BILLABLE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

.field public static final EVENT_FIELD_NUMBER:I = 0x1

.field public static final MEASUREMENT_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_METRICS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private billable_:Z

.field private event_:I

.field private measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

.field private memoizedIsInitialized:B

.field private requiredMetrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1234
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    .line 1242
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 250
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_9e

    .line 48
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    const/16 v5, 0x8

    if-eq v3, v5, :cond_74

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6d

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4b

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_33

    .line 86
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2b
    move v1, v4

    goto :goto_c

    :catchall_2d
    move-exception p1

    goto :goto_8a

    :catch_2f
    move-exception p1

    goto :goto_7b

    :catch_31
    move-exception p1

    goto :goto_85

    :cond_33
    if-nez v2, :cond_3d

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    move v2, v4

    .line 81
    :cond_3d
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    .line 82
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 65
    :cond_4b
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v3, :cond_54

    .line 66
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Measurement;->toBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v3

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 68
    :goto_55
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/sdk/Measurement;

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v3, :cond_c

    .line 70
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    .line 71
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    goto :goto_c

    .line 60
    :cond_6d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->billable_:Z

    goto :goto_c

    .line 55
    :cond_74
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->event_:I
    :try_end_7a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_7a} :catch_31
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7a} :catch_2f
    .catchall {:try_start_e .. :try_end_7a} :catchall_2d

    goto :goto_c

    .line 97
    :goto_7b
    :try_start_7b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 98
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 95
    :goto_85
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_2d

    :goto_8a
    if-eqz v2, :cond_94

    .line 101
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    .line 103
    :cond_94
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 105
    throw p1

    :cond_9e
    if-eqz v2, :cond_a8

    .line 101
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    .line 103
    :cond_a8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 250
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/ViewabilityRule;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->event_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->billable_:Z

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$800()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 1

    .line 1238
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 109
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 1

    .line 429
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 432
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 403
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 410
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 416
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 423
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 391
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 398
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation

    .line 1253
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 311
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    if-nez v1, :cond_d

    .line 312
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 314
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    .line 316
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v1

    .line 317
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 318
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v1

    .line 319
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 320
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->hasMeasurement()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->hasMeasurement()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 321
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->hasMeasurement()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Measurement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    .line 325
    :cond_46
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getRequiredMetricsList()Ljava/util/List;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getRequiredMetricsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v3

    .line 327
    :cond_55
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    return v3

    :cond_60
    return v0
.end method

.method public getBillable()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->billable_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2

    .line 1263
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    return-object v0
.end method

.method public getEvent()I
    .registers 2

    .line 134
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->event_:I

    return v0
.end method

.method public getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2

    .line 176
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMeasurementOrBuilder()Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;
    .registers 2

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
            ">;"
        }
    .end annotation

    .line 1258
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRequiredMetrics(I)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3

    .line 235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p1
.end method

.method public getRequiredMetricsCount()I
    .registers 2

    .line 224
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredMetricsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredMetricsOrBuilder(I)Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;
    .registers 3

    .line 247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;

    return-object p1
.end method

.method public getRequiredMetricsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 281
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 285
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->event_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 287
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    .line 289
    :goto_12
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->billable_:Z

    if-eqz v2, :cond_1c

    const/4 v3, 0x2

    .line 291
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_1c
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v2, :cond_2a

    const/4 v2, 0x3

    .line 295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 298
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    .line 299
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 301
    :cond_43
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMeasurement()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 333
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 337
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 339
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 342
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v0

    .line 341
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->hasMeasurement()Z

    move-result v0

    if-eqz v0, :cond_3f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Measurement;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 347
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getRequiredMetricsCount()I

    move-result v0

    if-lez v0, :cond_54

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getRequiredMetricsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_54
    mul-int/lit8 v1, v1, 0x1d

    .line 351
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 352
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 115
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 253
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 427
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->newBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 443
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 436
    sget-object v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 437
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

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

    .line 264
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->event_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 267
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->billable_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 268
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 270
    :cond_10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    .line 271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_1c
    const/4 v0, 0x0

    .line 273
    :goto_1d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 274
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 276
    :cond_34
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.ViewabilityRule.AnonymousClass1 (io.bidmachine.protobuf.sdk.ViewabilityRule$1)
.class Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "ViewabilityRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ViewabilityRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/ViewabilityRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1242
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1248
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1242
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.ViewabilityRule.Builder (io.bidmachine.protobuf.sdk.ViewabilityRule$Builder)
.class public final Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ViewabilityRule.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ViewabilityRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ViewabilityRuleOrBuilder;"
    }
.end annotation


# instance fields
.field private billable_:Z

.field private bitField0_:I

.field private event_:I

.field private measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Measurement;",
            "Lio/bidmachine/protobuf/sdk/Measurement$Builder;",
            "Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

.field private requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;",
            "Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private requiredMetrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 905
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 468
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 473
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 905
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 474
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V
    .registers 3

    .line 449
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V
    .registers 2

    .line 449
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;-><init>()V

    return-void
.end method

.method private ensureRequiredMetricsIsMutable()V
    .registers 3

    .line 907
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 909
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 455
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMeasurementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Measurement;",
            "Lio/bidmachine/protobuf/sdk/Measurement$Builder;",
            "Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 894
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 896
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v1

    .line 897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 901
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;",
            "Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 1205
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 1209
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1211
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 1213
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 478
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllRequiredMetrics(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1084
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1085
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1089
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 578
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public addRequiredMetrics(ILio/bidmachine/protobuf/sdk/MetricRequirement$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 1065
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1066
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1067
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1070
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRequiredMetrics(ILio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 1026
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1028
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1031
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1034
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRequiredMetrics(Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 1047
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1048
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1049
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1052
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRequiredMetrics(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 1005
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1010
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1013
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRequiredMetricsBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1175
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1176
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v1

    .line 1175
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object v0
.end method

.method public addRequiredMetricsBuilder(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 4

    .line 1187
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1188
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v1

    .line 1187
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3

    .line 517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 519
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 3

    .line 526
    new-instance v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/ViewabilityRule$1;)V

    .line 528
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->event_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$402(Lio/bidmachine/protobuf/sdk/ViewabilityRule;I)I

    .line 529
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->billable_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$502(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Z)Z

    .line 530
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1a

    .line 531
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$602(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement;

    goto :goto_23

    .line 533
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Measurement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$602(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement;

    .line 535
    :goto_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_41

    .line 536
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    .line 537
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 538
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    .line 540
    :cond_3b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$702(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Ljava/util/List;)Ljava/util/List;

    goto :goto_48

    .line 542
    :cond_41
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$702(Lio/bidmachine/protobuf/sdk/ViewabilityRule;Ljava/util/List;)Ljava/util/List;

    .line 544
    :goto_48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 484
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->event_:I

    .line 487
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->billable_:Z

    .line 489
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 490
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    goto :goto_14

    .line 492
    :cond_10
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 493
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 495
    :goto_14
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_23

    .line 496
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 497
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    return-object p0

    .line 499
    :cond_23
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearBillable()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->billable_:Z

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEvent()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 701
    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->event_:I

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 561
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public clearMeasurement()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 846
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 847
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 848
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 850
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 851
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 566
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public clearRequiredMetrics()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 1101
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1102
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 1103
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    .line 1104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1106
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 550
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBillable()Z
    .registers 2

    .line 717
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->billable_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    .registers 2

    .line 512
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 507
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEvent()I
    .registers 2

    .line 670
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->event_:I

    return v0
.end method

.method public getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;
    .registers 2

    .line 772
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 773
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    :cond_c
    return-object v0

    .line 775
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Measurement;

    return-object v0
.end method

.method public getMeasurementBuilder()Lio/bidmachine/protobuf/sdk/Measurement$Builder;
    .registers 2

    .line 865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 866
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getMeasurementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    return-object v0
.end method

.method public getMeasurementOrBuilder()Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;
    .registers 2

    .line 876
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 877
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MeasurementOrBuilder;

    return-object v0

    .line 879
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-nez v0, :cond_13

    .line 880
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Measurement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRequiredMetrics(I)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3

    .line 952
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 953
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p1

    .line 955
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p1
.end method

.method public getRequiredMetricsBuilder(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1136
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public getRequiredMetricsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;",
            ">;"
        }
    .end annotation

    .line 1199
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredMetricsCount()I
    .registers 2

    .line 938
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 939
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 941
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRequiredMetricsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 925
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 927
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredMetricsOrBuilder(I)Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;
    .registers 3

    .line 1147
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1148
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;

    return-object p1

    .line 1149
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;

    return-object p1
.end method

.method public getRequiredMetricsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 1162
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1164
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMeasurement()Z
    .registers 2

    .line 761
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 461
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 462
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

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

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

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

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

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

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

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 644
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 650
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 646
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/ViewabilityRule;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 647
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

    .line 650
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 652
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 582
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    if-eqz v0, :cond_b

    .line 583
    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1

    .line 585
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 591
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 592
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v0

    if-eqz v0, :cond_14

    .line 593
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setEvent(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 595
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 596
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setBillable(Z)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 598
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->hasMeasurement()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 599
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeMeasurement(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 601
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_61

    .line 602
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 603
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 604
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 605
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    goto :goto_5d

    .line 607
    :cond_51
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 608
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    :goto_5d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_9d

    .line 613
    :cond_61
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 614
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 615
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 617
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    .line 618
    iget v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->bitField0_:I

    .line 620
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$800()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 621
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->getRequiredMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_91
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_9d

    .line 623
    :cond_94
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$700(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 627
    :cond_9d
    :goto_9d
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->access$900(Lio/bidmachine/protobuf/sdk/ViewabilityRule;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    .line 628
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMeasurement(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 824
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 825
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    if-eqz v0, :cond_17

    .line 827
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Measurement;->newBuilder(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/Measurement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    goto :goto_19

    .line 829
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 831
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 833
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 1224
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public removeRequiredMetrics(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 1118
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1119
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 1120
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1123
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setBillable(Z)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 730
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->billable_:Z

    .line 731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEvent(I)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 685
    iput p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->event_:I

    .line 686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 449
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 556
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public setMeasurement(Lio/bidmachine/protobuf/sdk/Measurement$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 807
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 808
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->build()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 809
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 811
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Measurement$Builder;->build()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMeasurement(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 3

    .line 786
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->measurement_:Lio/bidmachine/protobuf/sdk/Measurement;

    .line 791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 793
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 572
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method

.method public setRequiredMetrics(ILio/bidmachine/protobuf/sdk/MetricRequirement$Builder;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 988
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 989
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 990
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 993
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRequiredMetrics(ILio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 4

    .line 967
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 969
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->ensureRequiredMetricsIsMutable()V

    .line 972
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->requiredMetrics_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 975
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 449
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;
    .registers 2

    .line 1218
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ViewabilityRule$Builder;

    return-object p1
.end method
