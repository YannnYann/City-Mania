###### Class io.bidmachine.protobuf.sdk.SDKViewabilityProto (io.bidmachine.protobuf.sdk.SDKViewabilityProto)
.class public final Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;
.super Ljava/lang/Object;
.source "SDKViewabilityProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_Measurement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_Measurement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 65
    const-string v0, "\n)bidmachine/protobuf/sdk/viewability.proto\u0012#bidmachine.protobuf.sdk.viewability\"_\n\u0018ViewabilityConfiguration\u0012C\n\u0005rules\u0018\u0001 \u0003(\u000b24.bidmachine.protobuf.sdk.viewability.ViewabilityRule\"\u00cb\u0001\n\u000fViewabilityRule\u0012\r\n\u0005event\u0018\u0001 \u0001(\r\u0012\u0010\n\u0008billable\u0018\u0002 \u0001(\u0008\u0012E\n\u000bmeasurement\u0018\u0003 \u0001(\u000b20.bidmachine.protobuf.sdk.viewability.Measurement\u0012P\n\u0010required_metrics\u0018\u0005 \u0003(\u000b26.bidmachine.protobuf.sdk.viewability.MetricRequirement\"i\n\u000bMeasurement\u0012\r\n\u0005count\u0018\u0001 \u0001(\r\u0012\u0013\n\u000binterval_ms\u0018\u0002 \u0001(\r\u0012\u001f\n\u0012failure_timeout_ms\u0018\u0004 \u0001(\rH\u0000\u0088\u0001\u0001B\u0015\n\u0013_failure_timeout_ms\"\u00e0\u0002\n\u0011MetricRequirement\u0012\u0019\n\u0011measurement_index\u0018\u0001 \u0001(\r\u0012G\n\u0008geometry\u0018\u0005 \u0001(\u000b23.bidmachine.protobuf.sdk.viewability.GeometryMetricH\u0000\u0012K\n\nvisibility\u0018\u0006 \u0001(\u000b25.bidmachine.protobuf.sdk.viewability.VisibilityMetricH\u0000\u0012I\n\tlifecycle\u0018\u0007 \u0001(\u000b24.bidmachine.protobuf.sdk.viewability.LifecycleMetricH\u0000\u0012E\n\u0007overlap\u0018\u0008 \u0001(\u000b22.bidmachine.protobuf.sdk.viewability.OverlapMetricH\u0000B\u0008\n\u0006metric\"\u0095\u0001\n\u000eGeometryMetric\u0012\u0016\n\tmin_width\u0018\u0001 \u0001(\rH\u0000\u0088\u0001\u0001\u0012\u0017\n\nmin_height\u0018\u0002 \u0001(\rH\u0001\u0088\u0001\u0001\u0012\u000f\n\u0007visible\u0018\u0003 \u0001(\u0008\u0012\u0016\n\tmin_alpha\u0018\u0006 \u0001(\u0001H\u0002\u0088\u0001\u0001B\u000c\n\n_min_widthB\r\n\u000b_min_heightB\u000c\n\n_min_alpha\"\u00c7\u0001\n\u0010VisibilityMetric\u0012T\n\u0005scope\u0018\u0001 \u0001(\u000e2E.bidmachine.protobuf.sdk.viewability.VisibilityMetric.VisibilityScope\u0012\u001e\n\u0016min_visible_percentage\u0018\u0002 \u0001(\u0001\"=\n\u000fVisibilityScope\u0012\u000f\n\u000bPARENT_VIEW\u0010\u0000\u0012\n\n\u0006SCREEN\u0010\u0001\u0012\r\n\tSAFE_AREA\u0010\u0002\"\u00ba\u0001\n\u000fLifecycleMetric\u0012\\\n\u000frequired_states\u0018\u0001 \u0003(\u000e2C.bidmachine.protobuf.sdk.viewability.LifecycleMetric.LifecycleState\"I\n\u000eLifecycleState\u0012\u000e\n\nFOREGROUND\u0010\u0000\u0012\u0014\n\u0010HAS_WINDOW_FOCUS\u0010\u0001\u0012\u0011\n\rVIEW_APPEARED\u0010\u0002\"\u00be\u0001\n\rOverlapMetric\u0012N\n\u0005scope\u0018\u0001 \u0001(\u000e2?.bidmachine.protobuf.sdk.viewability.OverlapMetric.OverlapScope\u0012\u001e\n\u0016max_overlap_percentage\u0018\u0002 \u0001(\u0001\"=\n\u000cOverlapScope\u0012\u0011\n\rVIEW_SIBLINGS\u0010\u0000\u0012\r\n\tALL_VIEWS\u0010\u0001\u0012\u000b\n\u0007WINDOWS\u0010\u0002B3\n\u001aio.bidmachine.protobuf.sdkB\u0013SDKViewabilityProtoP\u0001b\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 110
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 114
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 115
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Rules"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 120
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 121
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Measurement"

    const-string v3, "RequiredMetrics"

    const-string v4, "Event"

    const-string v5, "Billable"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_ViewabilityRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 126
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 127
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "IntervalMs"

    const-string v3, "FailureTimeoutMs"

    const-string v4, "Count"

    filled-new-array {v4, v2, v3, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_Measurement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 132
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 133
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v6, "Overlap"

    const-string v7, "Metric"

    const-string v2, "MeasurementIndex"

    const-string v3, "Geometry"

    const-string v4, "Visibility"

    const-string v5, "Lifecycle"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_MetricRequirement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 138
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 139
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v7, "MinHeight"

    const-string v8, "MinAlpha"

    const-string v2, "MinWidth"

    const-string v3, "MinHeight"

    const-string v4, "Visible"

    const-string v5, "MinAlpha"

    const-string v6, "MinWidth"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_GeometryMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 144
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 145
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MinVisiblePercentage"

    const-string v3, "Scope"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_VisibilityMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 150
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 151
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "RequiredStates"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_LifecycleMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 156
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 157
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "MaxOverlapPercentage"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->internal_static_bidmachine_protobuf_sdk_viewability_OverlapMetric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 60
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method
