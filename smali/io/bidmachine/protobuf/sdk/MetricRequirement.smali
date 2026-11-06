###### Class io.bidmachine.protobuf.sdk.MetricRequirement (io.bidmachine.protobuf.sdk.MetricRequirement)
.class public final Lio/bidmachine/protobuf/sdk/MetricRequirement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "MetricRequirement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;,
        Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

.field public static final GEOMETRY_FIELD_NUMBER:I = 0x5

.field public static final LIFECYCLE_FIELD_NUMBER:I = 0x7

.field public static final MEASUREMENT_INDEX_FIELD_NUMBER:I = 0x1

.field public static final OVERLAP_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private measurementIndex_:I

.field private memoizedIsInitialized:B

.field private metricCase_:I

.field private metric_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1391
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    .line 1399
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v0, -0x1

    .line 328
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_f8

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    const/16 v4, 0x8

    if-eq v2, v4, :cond_d7

    const/16 v5, 0x2a

    const/4 v6, 0x0

    if-eq v2, v5, :cond_af

    const/16 v5, 0x32

    if-eq v2, v5, :cond_87

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_60

    const/16 v5, 0x42

    if-eq v2, v5, :cond_3a

    .line 113
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2f
    move v1, v3

    goto :goto_b

    :catchall_31
    move-exception p1

    goto/16 :goto_ee

    :catch_34
    move-exception p1

    goto/16 :goto_df

    :catch_37
    move-exception p1

    goto/16 :goto_e9

    .line 100
    :cond_3a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    if-ne v2, v4, :cond_46

    .line 101
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v6

    .line 104
    :cond_46
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    if-eqz v6, :cond_5d

    .line 106
    check-cast v2, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {v6, v2}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    .line 107
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    .line 109
    :cond_5d
    iput v4, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    goto :goto_b

    .line 86
    :cond_60
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6d

    .line 87
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v6

    .line 90
    :cond_6d
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    if-eqz v6, :cond_84

    .line 92
    check-cast v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {v6, v2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    .line 93
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    .line 95
    :cond_84
    iput v3, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    goto :goto_b

    .line 72
    :cond_87
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_94

    .line 73
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v6

    .line 76
    :cond_94
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    if-eqz v6, :cond_ab

    .line 78
    check-cast v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {v6, v2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    .line 79
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    .line 81
    :cond_ab
    iput v3, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    goto/16 :goto_b

    .line 58
    :cond_af
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_bc

    .line 59
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->toBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v6

    .line 62
    :cond_bc
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    if-eqz v6, :cond_d3

    .line 64
    check-cast v2, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {v6, v2}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    .line 65
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    .line 67
    :cond_d3
    iput v3, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    goto/16 :goto_b

    .line 53
    :cond_d7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->measurementIndex_:I
    :try_end_dd
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_dd} :catch_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_dd} :catch_34
    .catchall {:try_start_d .. :try_end_dd} :catchall_31

    goto/16 :goto_b

    .line 124
    :goto_df
    :try_start_df
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 125
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 122
    :goto_e9
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_ee
    .catchall {:try_start_df .. :try_end_ee} :catchall_31

    .line 127
    :goto_ee
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 129
    throw p1

    .line 127
    :cond_f8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 p1, -0x1

    .line 328
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/MetricRequirement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->measurementIndex_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/MetricRequirement;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 1

    .line 1395
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 133
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 1

    .line 535
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->toBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 538
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->toBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 509
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 516
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 476
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 482
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 522
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 529
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 497
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 504
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 465
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 471
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 486
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 492
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation

    .line 1410
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 396
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    if-nez v1, :cond_d

    .line 397
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 399
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    .line 401
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result v1

    .line 402
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 403
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 404
    :cond_2a
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_67

    const/4 v2, 0x6

    if-eq v1, v2, :cond_58

    const/4 v2, 0x7

    if-eq v1, v2, :cond_49

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    goto :goto_76

    .line 418
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v3

    .line 414
    :cond_49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v1

    .line 415
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v3

    .line 410
    :cond_58
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v1

    .line 411
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v3

    .line 406
    :cond_67
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v1

    .line 407
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v3

    .line 424
    :cond_76
    :goto_76
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    return v3

    :cond_81
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2

    .line 1420
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-object v0
.end method

.method public getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 3

    .line 219
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 220
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0

    .line 222
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryOrBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;
    .registers 3

    .line 229
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 230
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0

    .line 232
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 3

    .line 281
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 282
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0

    .line 284
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleOrBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;
    .registers 3

    .line 291
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 292
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0

    .line 294
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementIndex()I
    .registers 2

    .line 201
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->measurementIndex_:I

    return v0
.end method

.method public getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 2

    .line 185
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v0

    return-object v0
.end method

.method public getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 3

    .line 312
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 313
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0

    .line 315
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getOverlapOrBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;
    .registers 3

    .line 322
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 323
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0

    .line 325
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
            ">;"
        }
    .end annotation

    .line 1415
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 362
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 366
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->measurementIndex_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 368
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 370
    :goto_11
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1f

    .line 371
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    .line 372
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_1f
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2d

    .line 375
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    .line 376
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_2d
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3b

    .line 379
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    .line 380
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_3b
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4a

    .line 383
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    .line 384
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_4a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 3

    .line 250
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 251
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0

    .line 253
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityOrBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;
    .registers 3

    .line 260
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0

    .line 263
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public hasGeometry()Z
    .registers 3

    .line 211
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasLifecycle()Z
    .registers 3

    .line 273
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlap()Z
    .registers 3

    .line 304
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasVisibility()Z
    .registers 3

    .line 242
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 430
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 434
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 436
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result v0

    add-int/2addr v1, v0

    .line 437
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_56

    const/4 v2, 0x6

    if-eq v0, v2, :cond_48

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2b

    goto :goto_64

    :cond_2b
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->hashCode()I

    move-result v0

    :goto_38
    add-int/2addr v1, v0

    goto :goto_64

    :cond_3a
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 448
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->hashCode()I

    move-result v0

    goto :goto_38

    :cond_48
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 444
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->hashCode()I

    move-result v0

    goto :goto_38

    :cond_56
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hashCode()I

    move-result v0

    goto :goto_38

    :goto_64
    mul-int/lit8 v1, v1, 0x1d

    .line 457
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 458
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 139
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    const-class v2, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 331
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 335
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->newBuilderForType()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 533
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->newBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 4

    .line 549
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->toBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->toBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 542
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 543
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;-><init>(Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

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

    .line 342
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->measurementIndex_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 343
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 345
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 346
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 348
    :cond_14
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    .line 349
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 351
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2c

    .line 352
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 354
    :cond_2c
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 355
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 357
    :cond_39
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.MetricRequirement.AnonymousClass1 (io.bidmachine.protobuf.sdk.MetricRequirement$1)
.class Lio/bidmachine/protobuf/sdk/MetricRequirement$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "MetricRequirement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MetricRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/MetricRequirement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1399
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1405
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1399
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.MetricRequirement.AnonymousClass2 (io.bidmachine.protobuf.sdk.MetricRequirement$2)
.class synthetic Lio/bidmachine/protobuf/sdk/MetricRequirement$2;
.super Ljava/lang/Object;
.source "MetricRequirement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MetricRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 701
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->values()[Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->GEOMETRY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->VISIBILITY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->LIFECYCLE:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->OVERLAP:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->METRIC_NOT_SET:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.MetricRequirement.Builder (io.bidmachine.protobuf.sdk.MetricRequirement$Builder)
.class public final Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "MetricRequirement.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MetricRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/MetricRequirementOrBuilder;"
    }
.end annotation


# instance fields
.field private geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private measurementIndex_:I

.field private metricCase_:I

.field private metric_:Ljava/lang/Object;

.field private overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 573
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 750
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 574
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 579
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 750
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 580
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V
    .registers 3

    .line 555
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V
    .registers 2

    .line 555
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 561
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getGeometryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric;",
            "Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_25

    .line 935
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-eq v0, v1, :cond_f

    .line 936
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 938
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    .line 941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 943
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 945
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 947
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLifecycleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric;",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x7

    if-nez v0, :cond_25

    .line 1217
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-eq v0, v1, :cond_f

    .line 1218
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1220
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    .line 1223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1225
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1227
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1228
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1229
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getOverlapFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric;",
            "Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x8

    if-nez v0, :cond_26

    .line 1358
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-eq v0, v1, :cond_10

    .line 1359
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1361
    :cond_10
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    .line 1364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1366
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1368
    :cond_26
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1370
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getVisibilityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric;",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;",
            "Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_25

    .line 1076
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-eq v0, v1, :cond_f

    .line 1077
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1079
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    .line 1082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1086
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1088
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 584
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 684
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->build()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 3

    .line 610
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 612
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 4

    .line 619
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/MetricRequirement$1;)V

    .line 620
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->measurementIndex_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$402(Lio/bidmachine/protobuf/sdk/MetricRequirement;I)I

    .line 621
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_21

    .line 622
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1a

    .line 623
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 625
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_21
    :goto_21
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_37

    .line 629
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_30

    .line 630
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 632
    :cond_30
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_37
    :goto_37
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4d

    .line 636
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_46

    .line 637
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 639
    :cond_46
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_4d
    :goto_4d
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_64

    .line 643
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5d

    .line 644
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 646
    :cond_5d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$502(Lio/bidmachine/protobuf/sdk/MetricRequirement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_64
    :goto_64
    iget v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$602(Lio/bidmachine/protobuf/sdk/MetricRequirement;I)I

    .line 650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clear()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clear()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clear()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clear()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 589
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 590
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->measurementIndex_:I

    .line 592
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 667
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public clearGeometry()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 6

    .line 893
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_13

    .line 894
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v3, :cond_12

    .line 895
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 896
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 900
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v4, v3, :cond_1b

    .line 901
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 902
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 904
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLifecycle()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 6

    .line 1175
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-nez v0, :cond_13

    .line 1176
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v3, :cond_12

    .line 1177
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1178
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1182
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v4, v3, :cond_1b

    .line 1183
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1184
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1186
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMeasurementIndex()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 804
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->measurementIndex_:I

    .line 805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMetric()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 759
    iput v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v0, 0x0

    .line 760
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 672
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public clearOverlap()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 6

    .line 1316
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_14

    .line 1317
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v3, :cond_13

    .line 1318
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1319
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_13
    return-object p0

    .line 1323
    :cond_14
    iget v4, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v4, v3, :cond_1c

    .line 1324
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1325
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1327
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearVisibility()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 6

    .line 1034
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_13

    .line 1035
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v3, :cond_12

    .line 1036
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1037
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1041
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v4, v3, :cond_1b

    .line 1042
    iput v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    .line 1043
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1045
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 656
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->clone()Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MetricRequirement;
    .registers 2

    .line 605
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 600
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;
    .registers 4

    .line 825
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_13

    .line 826
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_e

    .line 827
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0

    .line 829
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0

    .line 831
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_1e

    .line 832
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0

    .line 834
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;
    .registers 2

    .line 912
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getGeometryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    return-object v0
.end method

.method public getGeometryOrBuilder()Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;
    .registers 4

    .line 919
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 920
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetricOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 923
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    return-object v0

    .line 925
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;
    .registers 4

    .line 1107
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x7

    if-nez v0, :cond_13

    .line 1108
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_e

    .line 1109
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0

    .line 1111
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_1e

    .line 1114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0

    .line 1116
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;
    .registers 2

    .line 1194
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getLifecycleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    return-object v0
.end method

.method public getLifecycleOrBuilder()Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;
    .registers 4

    .line 1201
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1202
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetricOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1205
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    return-object v0

    .line 1207
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementIndex()I
    .registers 2

    .line 777
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->measurementIndex_:I

    return v0
.end method

.method public getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 2

    .line 754
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v0

    return-object v0
.end method

.method public getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;
    .registers 4

    .line 1248
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x8

    if-nez v0, :cond_14

    .line 1249
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_f

    .line 1250
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0

    .line 1252
    :cond_f
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_14
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_1f

    .line 1255
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0

    .line 1257
    :cond_1f
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getOverlapBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;
    .registers 2

    .line 1335
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getOverlapFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    return-object v0
.end method

.method public getOverlapOrBuilder()Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;
    .registers 4

    .line 1342
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_11

    .line 1343
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetricOrBuilder;

    return-object v0

    :cond_11
    if-ne v0, v1, :cond_18

    .line 1346
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    return-object v0

    .line 1348
    :cond_18
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;
    .registers 4

    .line 966
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_13

    .line 967
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_e

    .line 968
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0

    .line 970
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0

    .line 972
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_1e

    .line 973
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0

    .line 975
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;
    .registers 2

    .line 1053
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->getVisibilityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    return-object v0
.end method

.method public getVisibilityOrBuilder()Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;
    .registers 4

    .line 1060
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1061
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetricOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1064
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    return-object v0

    .line 1066
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    return-object v0
.end method

.method public hasGeometry()Z
    .registers 3

    .line 817
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasLifecycle()Z
    .registers 3

    .line 1099
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlap()Z
    .registers 3

    .line 1240
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasVisibility()Z
    .registers 3

    .line 958
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 567
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    const-class v2, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 568
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

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

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

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

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

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

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

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 739
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 745
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 741
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/MetricRequirement;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 742
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

    .line 745
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 747
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 688
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    if-eqz v0, :cond_b

    .line 689
    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1

    .line 691
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 4

    .line 697
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MetricRequirement;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 698
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result v0

    if-eqz v0, :cond_14

    .line 699
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setMeasurementIndex(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 701
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$2;->$SwitchMap$io$bidmachine$protobuf$sdk$MetricRequirement$MetricCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2d

    goto :goto_4c

    .line 715
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeOverlap(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    goto :goto_4c

    .line 711
    :cond_35
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeLifecycle(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    goto :goto_4c

    .line 707
    :cond_3d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeVisibility(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    goto :goto_4c

    .line 703
    :cond_45
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeGeometry(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 722
    :goto_4c
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->access$700(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    .line 723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGeometry(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 5

    .line 871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_2a

    .line 872
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 873
    invoke-static {}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 874
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/GeometryMetric;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->newBuilder(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object v0

    .line 875
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    goto :goto_26

    .line 877
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 879
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 881
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_31

    .line 882
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 884
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 886
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public mergeLifecycle(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 5

    .line 1153
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x7

    if-nez v0, :cond_2a

    .line 1154
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1155
    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1156
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->newBuilder(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object v0

    .line 1157
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    goto :goto_26

    .line 1159
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1161
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1163
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_31

    .line 1164
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1166
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1168
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public mergeOverlap(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 5

    .line 1294
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x8

    if-nez v0, :cond_2b

    .line 1295
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1296
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1297
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/OverlapMetric;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->newBuilder(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object v0

    .line 1298
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    goto :goto_27

    .line 1300
    :cond_25
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1302
    :goto_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_37

    .line 1304
    :cond_2b
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_32

    .line 1305
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1307
    :cond_32
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1309
    :goto_37
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 1381
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public mergeVisibility(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 5

    .line 1012
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_2a

    .line 1013
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1014
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1015
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->newBuilder(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object v0

    .line 1016
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    goto :goto_26

    .line 1018
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1020
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1022
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    if-ne v2, v1, :cond_31

    .line 1023
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1025
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1027
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 662
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public setGeometry(Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 858
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 859
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 862
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/GeometryMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x5

    .line 864
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setGeometry(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 841
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->geometryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 843
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 848
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x5

    .line 850
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setLifecycle(Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1140
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1141
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1144
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x7

    .line 1146
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setLifecycle(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1123
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->lifecycleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1130
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x7

    .line 1132
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setMeasurementIndex(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 790
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->measurementIndex_:I

    .line 791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOverlap(Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1281
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1282
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1285
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/OverlapMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/16 p1, 0x8

    .line 1287
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setOverlap(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 1264
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->overlapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1268
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1271
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/16 p1, 0x8

    .line 1273
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 4

    .line 678
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 2

    .line 1375
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;

    return-object p1
.end method

.method public setVisibility(Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 999
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1000
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 1001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1003
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$Builder;->build()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x6

    .line 1005
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

.method public setVisibility(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;
    .registers 3

    .line 982
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->visibilityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 984
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metric_:Ljava/lang/Object;

    .line 987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 989
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x6

    .line 991
    iput p1, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$Builder;->metricCase_:I

    return-object p0
.end method

###### Class io.bidmachine.protobuf.sdk.MetricRequirement.MetricCase (io.bidmachine.protobuf.sdk.MetricRequirement$MetricCase)
.class public final enum Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
.super Ljava/lang/Enum;
.source "MetricRequirement.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MetricRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

.field public static final enum GEOMETRY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

.field public static final enum LIFECYCLE:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

.field public static final enum METRIC_NOT_SET:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

.field public static final enum OVERLAP:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

.field public static final enum VISIBILITY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 149
    new-instance v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    const/4 v1, 0x5

    const-string v2, "GEOMETRY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->GEOMETRY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    .line 150
    new-instance v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    const/4 v2, 0x1

    const/4 v4, 0x6

    const-string v5, "VISIBILITY"

    invoke-direct {v1, v5, v2, v4}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->VISIBILITY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    .line 151
    new-instance v2, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    const/4 v4, 0x2

    const/4 v5, 0x7

    const-string v6, "LIFECYCLE"

    invoke-direct {v2, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->LIFECYCLE:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    .line 152
    new-instance v4, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "OVERLAP"

    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->OVERLAP:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    .line 153
    new-instance v5, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    const-string v6, "METRIC_NOT_SET"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v3}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->METRIC_NOT_SET:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    .line 146
    filled-new-array {v0, v1, v2, v4, v5}, [Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput p3, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 2

    if-eqz p0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x6

    if-eq p0, v0, :cond_17

    const/4 v0, 0x7

    if-eq p0, v0, :cond_14

    const/16 v0, 0x8

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_11
    sget-object p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->OVERLAP:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0

    .line 172
    :cond_14
    sget-object p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->LIFECYCLE:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0

    .line 171
    :cond_17
    sget-object p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->VISIBILITY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0

    .line 170
    :cond_1a
    sget-object p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->GEOMETRY:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0

    .line 174
    :cond_1d
    sget-object p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->METRIC_NOT_SET:Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 2

    .line 146
    const-class v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;
    .registers 1

    .line 146
    sget-object v0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 179
    iget v0, p0, Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;->value:I

    return v0
.end method
