###### Class io.bidmachine.protobuf.rendering.TaskPermissionProto (io.bidmachine.protobuf.rendering.TaskPermissionProto)
.class public final Lio/bidmachine/protobuf/rendering/TaskPermissionProto;
.super Ljava/lang/Object;
.source "TaskPermissionProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 40
    const-string v0, "\n1bidmachine/protobuf/rendering/rendering_dto.proto\u0012\u0013bidmachine.protobuf\u001a-bidmachine/protobuf/rendering/rendering.proto\"\u00fa\u0004\n\u0017RenderingTaskPermission\u0012G\n\u0007request\u0018\u0001 \u0001(\u000b24.bidmachine.protobuf.RenderingTaskPermission.RequestH\u0000\u0012I\n\u0008response\u0018\u0002 \u0001(\u000b25.bidmachine.protobuf.RenderingTaskPermission.ResponseH\u0000\u001a\u0095\u0002\n\u0007Request\u0012H\n\nevent_name\u0018\u0001 \u0001(\u000e24.bidmachine.protobuf.Rendering.Phase.Event.EventName\u0012\u0014\n\u000cevent_source\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bevent_value\u0018\u0003 \u0001(\t\u0012H\n\u000bevent_tasks\u0018\u0004 \u0003(\u000b2/.bidmachine.protobuf.Rendering.Phase.Event.TaskB\u0002\u0018\u0001\u0012K\n\u000ctask_buckets\u0018\u0005 \u0003(\u000b25.bidmachine.protobuf.Rendering.Phase.Event.TaskBucket\u001a\u00a1\u0001\n\u0008Response\u0012H\n\u000bevent_tasks\u0018\u0001 \u0003(\u000b2/.bidmachine.protobuf.Rendering.Phase.Event.TaskB\u0002\u0018\u0001\u0012K\n\u000ctask_buckets\u0018\u0002 \u0003(\u000b25.bidmachine.protobuf.Rendering.Phase.Event.TaskBucketB\u000f\n\rpayload_oneofB?\n io.bidmachine.protobuf.renderingB\u0013TaskPermissionProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    filled-new-array {v1}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 69
    invoke-static {}, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 70
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Response"

    const-string v4, "PayloadOneof"

    const-string v5, "Request"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 75
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v1, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 76
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "EventName"

    const-string v4, "EventSource"

    const-string v5, "EventValue"

    const-string v6, "EventTasks"

    const-string v7, "TaskBuckets"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 81
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 82
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 86
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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

    .line 35
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method
