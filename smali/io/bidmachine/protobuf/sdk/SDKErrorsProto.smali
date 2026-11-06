###### Class io.bidmachine.protobuf.sdk.SDKErrorsProto (io.bidmachine.protobuf.sdk.SDKErrorsProto)
.class public final Lio/bidmachine/protobuf/sdk/SDKErrorsProto;
.super Ljava/lang/Object;
.source "SDKErrorsProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_errors_Error_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_errors_Error_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_errors_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_errors_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 35
    const-string v0, "\n$bidmachine/protobuf/sdk/errors.proto\u0012\u001ebidmachine.protobuf.sdk.errors\"\u00b7\u0001\n\u0005Error\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00129\n\u0005error\u0018\u0002 \u0001(\u000b2*.bidmachine.protobuf.sdk.errors.Error.Data\u0012:\n\u0006reason\u0018\u0003 \u0001(\u000b2*.bidmachine.protobuf.sdk.errors.Error.Data\u001a)\n\u0004Data\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0011\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t*\u00ac\u0003\n\u0014ErrorReasonAnalytics\u0012\"\n\u001eERROR_REASON_ANALYTICS_INVALID\u0010\u0000\u0012%\n ERROR_REASON_ANALYTICS_UNDEFINED\u0010\u00d0\u000f\u0012-\n(ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED\u0010\u00b4\u0010\u0012.\n)ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT\u0010\u00b5\u0010\u0012/\n*ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT\u0010\u00b6\u0010\u0012,\n\'ERROR_REASON_ANALYTICS_READER_UNDEFINED\u0010\u0098\u0011\u0012-\n(ERROR_REASON_ANALYTICS_READER_NO_CONTENT\u0010\u0099\u0011\u0012.\n)ERROR_REASON_ANALYTICS_READER_BAD_CONTENT\u0010\u009a\u0011\u0012,\n\'ERROR_REASON_ANALYTICS_READER_NO_ACCESS\u0010\u009b\u0011B.\n\u001aio.bidmachine.protobuf.sdkB\u000eSDKErrorsProtoP\u0001b\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 57
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 61
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->internal_static_bidmachine_protobuf_sdk_errors_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 62
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Error"

    const-string v4, "Reason"

    const-string v5, "Name"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->internal_static_bidmachine_protobuf_sdk_errors_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 67
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->internal_static_bidmachine_protobuf_sdk_errors_Error_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 68
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Code"

    const-string v3, "Description"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->internal_static_bidmachine_protobuf_sdk_errors_Error_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

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

    .line 30
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method
