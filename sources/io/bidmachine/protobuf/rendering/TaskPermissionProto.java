package io.bidmachine.protobuf.rendering;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskPermissionProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n1bidmachine/protobuf/rendering/rendering_dto.proto\u0012\u0013bidmachine.protobuf\u001a-bidmachine/protobuf/rendering/rendering.proto\"ú\u0004\n\u0017RenderingTaskPermission\u0012G\n\u0007request\u0018\u0001 \u0001(\u000b24.bidmachine.protobuf.RenderingTaskPermission.RequestH\u0000\u0012I\n\bresponse\u0018\u0002 \u0001(\u000b25.bidmachine.protobuf.RenderingTaskPermission.ResponseH\u0000\u001a\u0095\u0002\n\u0007Request\u0012H\n\nevent_name\u0018\u0001 \u0001(\u000e24.bidmachine.protobuf.Rendering.Phase.Event.EventName\u0012\u0014\n\fevent_source\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bevent_value\u0018\u0003 \u0001(\t\u0012H\n\u000bevent_tasks\u0018\u0004 \u0003(\u000b2/.bidmachine.protobuf.Rendering.Phase.Event.TaskB\u0002\u0018\u0001\u0012K\n\ftask_buckets\u0018\u0005 \u0003(\u000b25.bidmachine.protobuf.Rendering.Phase.Event.TaskBucket\u001a¡\u0001\n\bResponse\u0012H\n\u000bevent_tasks\u0018\u0001 \u0003(\u000b2/.bidmachine.protobuf.Rendering.Phase.Event.TaskB\u0002\u0018\u0001\u0012K\n\ftask_buckets\u0018\u0002 \u0003(\u000b25.bidmachine.protobuf.Rendering.Phase.Event.TaskBucketB\u000f\n\rpayload_oneofB?\n io.bidmachine.protobuf.renderingB\u0013TaskPermissionProtoP\u0001¢\u0002\u0003BDMb\u0006proto3"}, new Descriptors.FileDescriptor[]{RenderingProto.getDescriptor()});
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable;

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private TaskPermissionProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor = descriptor2;
        internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Request", "Response", "PayloadOneof"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor = descriptor3;
        internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"EventName", "EventSource", "EventValue", "EventTasks", "TaskBuckets"});
        Descriptors.Descriptor descriptor4 = descriptor2.getNestedTypes().get(1);
        internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor = descriptor4;
        internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"EventTasks", "TaskBuckets"});
        RenderingProto.getDescriptor();
    }
}
