###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission (io.bidmachine.protobuf.rendering.RenderingTaskPermission)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermissionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;,
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;,
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;,
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;,
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;,
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x1

.field public static final RESPONSE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4184
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    .line 4192
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 3408
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v0, -0x1

    .line 3511
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_91

    .line 50
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_52

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2b

    .line 84
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_23
    move v1, v3

    goto :goto_b

    :catchall_25
    move-exception p1

    goto :goto_87

    :catch_27
    move-exception p1

    goto :goto_78

    :catch_29
    move-exception p1

    goto :goto_82

    .line 71
    :cond_2b
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 72
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v5

    .line 75
    :cond_38
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_4f

    .line 77
    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    .line 78
    invoke-virtual {v5}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    .line 80
    :cond_4f
    iput v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    goto :goto_b

    .line 57
    :cond_52
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    if-ne v2, v3, :cond_5e

    .line 58
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v5

    .line 61
    :cond_5e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_75

    .line 63
    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 64
    invoke-virtual {v5}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    .line 66
    :cond_75
    iput v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I
    :try_end_77
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_77} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_77} :catch_27
    .catchall {:try_start_d .. :try_end_77} :catchall_25

    goto :goto_b

    .line 95
    :goto_78
    :try_start_78
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 96
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 93
    :goto_82
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_87
    .catchall {:try_start_78 .. :try_end_87} :catchall_25

    .line 98
    :goto_87
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 100
    throw p1

    .line 98
    :cond_91
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    const/4 p1, 0x0

    .line 3408
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 p1, -0x1

    .line 3511
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2900()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3202(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    return p1
.end method

.method public static synthetic access$3300(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3400()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 1

    .line 4188
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 104
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 1

    .line 3677
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3680
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3650
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3651
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3657
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3658
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3618
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3624
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3663
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3664
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3670
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3671
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3638
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3639
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3645
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3646
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3607
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3613
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3628
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3634
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;",
            ">;"
        }
    .end annotation

    .line 4203
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3558
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    if-nez v1, :cond_d

    .line 3559
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3561
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    .line 3563
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getPayloadOneofCase()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getPayloadOneofCase()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 3564
    :cond_1f
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    if-eq v1, v0, :cond_36

    const/4 v3, 0x2

    if-eq v1, v3, :cond_27

    goto :goto_45

    .line 3570
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v1

    .line 3571
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    .line 3566
    :cond_36
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v1

    .line 3567
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    .line 3576
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    return v2

    :cond_50
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2

    .line 4213
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;",
            ">;"
        }
    .end annotation

    .line 4208
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 2

    .line 3445
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3

    .line 3464
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 3465
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0

    .line 3467
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getRequestOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;
    .registers 3

    .line 3474
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 3475
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0

    .line 3477
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3

    .line 3495
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 3496
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0

    .line 3498
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;
    .registers 3

    .line 3505
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 3506
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0

    .line 3508
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 3536
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3540
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 3541
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    .line 3542
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 3544
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 3545
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    .line 3546
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3548
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3549
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasRequest()Z
    .registers 3

    .line 3456
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponse()Z
    .registers 3

    .line 3487
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 3582
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3586
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3587
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    goto :goto_36

    :cond_19
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 3594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v1, v0

    goto :goto_36

    :cond_28
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 3590
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->hashCode()I

    move-result v0

    goto :goto_26

    :goto_36
    mul-int/lit8 v1, v1, 0x1d

    .line 3599
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3600
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3514
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 3518
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3675
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 4

    .line 3691
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3684
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3685
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

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

    .line 3525
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 3526
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3528
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 3529
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3531
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.AnonymousClass1 (io.bidmachine.protobuf.rendering.RenderingTaskPermission$1)
.class Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "RenderingTaskPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4192
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4198
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4192
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.AnonymousClass2 (io.bidmachine.protobuf.rendering.RenderingTaskPermission$2)
.class synthetic Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$2;
.super Ljava/lang/Object;
.source "RenderingTaskPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3827
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->values()[Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$2;->$SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->REQUEST:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$2;->$SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->RESPONSE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$2;->$SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Builder (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Builder)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermissionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermissionOrBuilder;"
    }
.end annotation


# instance fields
.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3719
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 3868
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 3720
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3725
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 3868
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 3726
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 3701
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 2

    .line 3701
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3707
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4009
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 4010
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 4011
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4013
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    .line 4016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4017
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4018
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4020
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 4021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4022
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4150
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_25

    .line 4151
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 4152
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4154
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    .line 4157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4159
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4161
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 4162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4163
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3730
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$2900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3813
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3

    .line 3754
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    .line 3755
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3756
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 4

    .line 3763
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    .line 3764
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 3765
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 3766
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 3768
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3771
    :cond_1c
    :goto_1c
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 3772
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2b

    .line 3773
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 3775
    :cond_2b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3778
    :cond_32
    :goto_32
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3202(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;I)I

    .line 3779
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3735
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 3736
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 3737
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3796
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3801
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public clearPayloadOneof()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3877
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 3878
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 6

    .line 3968
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    .line 3969
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 3970
    iput v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 3971
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 3975
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 3976
    iput v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 3977
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3979
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 6

    .line 4109
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    .line 4110
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 4111
    iput v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 4112
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 4116
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 4117
    iput v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    .line 4118
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4120
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 3785
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 2

    .line 3749
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3744
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 2

    .line 3872
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 4

    .line 3900
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 3901
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 3902
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0

    .line 3904
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0

    .line 3906
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 3907
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0

    .line 3909
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 3987
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object v0
.end method

.method public getRequestOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;
    .registers 4

    .line 3994
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 3995
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 3998
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0

    .line 4000
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 4

    .line 4041
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_13

    .line 4042
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 4043
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0

    .line 4045
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0

    .line 4047
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 4048
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0

    .line 4050
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 4128
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object v0
.end method

.method public getResponseOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;
    .registers 4

    .line 4135
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 4136
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 4139
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0

    .line 4141
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .registers 3

    .line 3892
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasResponse()Z
    .registers 3

    .line 4033
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3713
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    .line 3714
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

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

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

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

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

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

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

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3857
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 3863
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 3859
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 3860
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

    .line 3863
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    .line 3865
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3817
    instance-of v0, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    if-eqz v0, :cond_b

    .line 3818
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1

    .line 3820
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 4

    .line 3826
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3827
    :cond_7
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$2;->$SwitchMap$io$bidmachine$protobuf$rendering$RenderingTaskPermission$PayloadOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getPayloadOneofCase()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    goto :goto_29

    .line 3833
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeResponse(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    goto :goto_29

    .line 3829
    :cond_22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getRequest()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeRequest(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    .line 3840
    :goto_29
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->access$3300(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    .line 3841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRequest(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 5

    .line 3946
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 3947
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3948
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 3949
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilder(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    .line 3950
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 3952
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3954
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 3956
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 3957
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3959
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3961
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public mergeResponse(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 5

    .line 4087
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    .line 4088
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4089
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 4090
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->newBuilder(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    .line 4091
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 4093
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4095
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 4097
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 4098
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4100
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4102
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 4174
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3701
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3791
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3701
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3701
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 4

    .line 3807
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

.method public setRequest(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3933
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3934
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 3937
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x1

    .line 3939
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setRequest(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 3916
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3918
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3920
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 3921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 3923
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x1

    .line 3925
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponse(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 4074
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4075
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 4078
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x2

    .line 4080
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponse(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 3

    .line 4057
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4059
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4061
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 4064
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x2

    .line 4066
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;
    .registers 2

    .line 4168
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.PayloadOneofCase (io.bidmachine.protobuf.rendering.RenderingTaskPermission$PayloadOneofCase)
.class public final enum Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
.super Ljava/lang/Enum;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

.field public static final enum PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

.field public static final enum REQUEST:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

.field public static final enum RESPONSE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 3413
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->REQUEST:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    .line 3414
    new-instance v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    const-string v4, "RESPONSE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->RESPONSE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    .line 3415
    new-instance v3, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    const-string v4, "PAYLOADONEOF_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    .line 3410
    filled-new-array {v0, v1, v3}, [Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3418
    iput p3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 3433
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->RESPONSE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-object p0

    .line 3432
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->REQUEST:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-object p0

    .line 3434
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3427
    invoke-static {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 2

    .line 3410
    const-class v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;
    .registers 1

    .line 3410
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 3439
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$PayloadOneofCase;->value:I

    return v0
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

.field public static final EVENT_NAME_FIELD_NUMBER:I = 0x1

.field public static final EVENT_SOURCE_FIELD_NUMBER:I = 0x2

.field public static final EVENT_TASKS_FIELD_NUMBER:I = 0x4

.field public static final EVENT_VALUE_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_BUCKETS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private eventName_:I

.field private volatile eventSource_:Ljava/lang/Object;

.field private eventTasks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation
.end field

.field private volatile eventValue_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private taskBuckets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1985
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    .line 1993
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 278
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 630
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    .line 281
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    .line 282
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    .line 283
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>()V

    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_b3

    .line 312
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_74

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_6d

    const/16 v5, 0x22

    if-eq v3, v5, :cond_52

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_37

    .line 354
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2f
    move v1, v4

    goto :goto_c

    :catchall_31
    move-exception p1

    goto :goto_91

    :catch_33
    move-exception p1

    goto :goto_82

    :catch_35
    move-exception p1

    goto :goto_8c

    :cond_37
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_44

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 349
    :cond_44
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    .line 350
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 349
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_52
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5f

    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 340
    :cond_5f
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    .line 341
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 340
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 330
    :cond_6d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 332
    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    goto :goto_c

    .line 324
    :cond_74
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 326
    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    goto :goto_c

    .line 318
    :cond_7b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 320
    iput v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I
    :try_end_81
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_81} :catch_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_81} :catch_33
    .catchall {:try_start_e .. :try_end_81} :catchall_31

    goto :goto_c

    .line 365
    :goto_82
    :try_start_82
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 366
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 363
    :goto_8c
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_31

    :goto_91
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9d

    .line 369
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    :cond_9d
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_a9

    .line 372
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    .line 374
    :cond_a9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 376
    throw p1

    :cond_b3
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_bf

    .line 369
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    :cond_bf
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_cb

    .line 372
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    .line 374
    :cond_cb
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 276
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 630
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 269
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()Z
    .registers 1

    .line 269
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 269
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 269
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)I
    .registers 1

    .line 269
    iget p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    return p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;I)I
    .registers 2

    .line 269
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    return p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/lang/Object;
    .registers 1

    .line 269
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 269
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/lang/Object;
    .registers 1

    .line 269
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 269
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;
    .registers 1

    .line 269
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 269
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;
    .registers 1

    .line 269
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 269
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$900()Z
    .registers 1

    .line 269
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 1

    .line 1989
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 380
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 1

    .line 813
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 816
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 787
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 794
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 754
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 760
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 800
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 807
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 775
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 782
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 743
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 764
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 770
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
            ">;"
        }
    .end annotation

    .line 2004
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 696
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    if-nez v1, :cond_d

    .line 697
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 699
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    .line 701
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    iget v2, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 702
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSource()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v3

    .line 704
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValue()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v3

    .line 706
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventTasksList()Ljava/util/List;

    move-result-object v1

    .line 707
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventTasksList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v3

    .line 708
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getTaskBucketsList()Ljava/util/List;

    move-result-object v1

    .line 709
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getTaskBucketsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v3

    .line 710
    :cond_53
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    return v3

    :cond_5e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2

    .line 2014
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    return-object v0
.end method

.method public getEventName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
    .registers 2

    .line 414
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->valueOf(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    move-result-object v0

    if-nez v0, :cond_a

    .line 415
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    :cond_a
    return-object v0
.end method

.method public getEventNameValue()I
    .registers 2

    .line 402
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    return v0
.end method

.method public getEventSource()Ljava/lang/String;
    .registers 3

    .line 430
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    .line 431
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 432
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 434
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 436
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 437
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventSourceBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 452
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    .line 453
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 454
    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 457
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    return-object v0

    .line 460
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1
.end method

.method public getEventTasksCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventTasksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    return-object v0
.end method

.method public getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1
.end method

.method public getEventTasksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    return-object v0
.end method

.method public getEventValue()Ljava/lang/String;
    .registers 3

    .line 476
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    .line 477
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 478
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 480
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 482
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 483
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 498
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    .line 499
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 500
    check-cast v0, Ljava/lang/String;

    .line 501
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 503
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    return-object v0

    .line 506
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
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
            ">;"
        }
    .end annotation

    .line 2009
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 664
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 668
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    .line 669
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    const/4 v1, 0x1

    .line 670
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 672
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSourceBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x2

    .line 673
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 675
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x3

    .line 676
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    move v1, v2

    .line 678
    :goto_3f
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    .line 679
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    .line 680
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 682
    :cond_58
    :goto_58
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_71

    .line 683
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    .line 684
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 686
    :cond_71
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
    .registers 3

    .line 615
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1
.end method

.method public getTaskBucketsCount()I
    .registers 2

    .line 604
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTaskBucketsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    return-object v0
.end method

.method public getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
    .registers 3

    .line 627
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1
.end method

.method public getTaskBucketsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 716
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 720
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 722
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 726
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventTasksCount()I

    move-result v0

    if-lez v0, :cond_4c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 729
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventTasksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 731
    :cond_4c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getTaskBucketsCount()I

    move-result v0

    if-lez v0, :cond_61

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 733
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getTaskBucketsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    mul-int/lit8 v1, v1, 0x1d

    .line 735
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 736
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 386
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 633
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 637
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 269
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 811
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 827
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 290
    new-instance p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 820
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 821
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

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

    .line 644
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 645
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventName_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 647
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSourceBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 648
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventSource_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 650
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    .line 651
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_30
    const/4 v0, 0x0

    move v1, v0

    .line 653
    :goto_32
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 654
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->eventTasks_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 656
    :cond_49
    :goto_49
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 657
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 659
    :cond_60
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.AnonymousClass1 (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request$1)
.class Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "RenderingTaskPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1993
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1999
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1993
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Request.Builder (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Request$Builder)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventName_:I

.field private eventSource_:Ljava/lang/Object;

.field private eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventTasks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation
.end field

.field private eventValue_:Ljava/lang/Object;

.field private taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private taskBuckets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 851
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 1077
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 1151
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1247
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1344
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1656
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 852
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 857
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 1077
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 1151
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1247
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1344
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1656
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 858
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 833
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 2

    .line 833
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;-><init>()V

    return-void
.end method

.method private ensureEventTasksIsMutable()V
    .registers 3

    .line 1346
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1348
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureTaskBucketsIsMutable()V
    .registers 3

    .line 1658
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 1659
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 1660
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 839
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1643
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 1644
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 1648
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1650
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1652
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 1956
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 1960
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1961
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1962
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 1964
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 862
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$200()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 863
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 864
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllEventTasks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;)",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1523
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1524
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1528
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllTaskBuckets(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;)",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;"
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1835
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1836
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1840
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1504
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1505
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1506
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1509
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1467
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1469
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1470
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1473
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1486
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1487
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1488
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1491
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1444
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1448
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1449
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1452
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasksBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1614
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1615
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v1

    .line 1614
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object v0
.end method

.method public addEventTasksBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1626
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1627
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v1

    .line 1626
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 970
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public addTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 1816
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1817
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1818
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1821
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 1777
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1779
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1781
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1782
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1785
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 1798
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1799
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1800
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1803
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 1756
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1760
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1761
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1764
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBucketsBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 3

    .line 1926
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1927
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v1

    .line 1926
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object v0
.end method

.method public addTaskBucketsBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 4

    .line 1938
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1939
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v1

    .line 1938
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3

    .line 904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 906
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 3

    .line 913
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    .line 915
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$402(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;I)I

    .line 916
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$502(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$602(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_33

    .line 919
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    .line 920
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 921
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 923
    :cond_2d
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$702(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_3a

    .line 925
    :cond_33
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$702(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;

    .line 927
    :goto_3a
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_58

    .line 928
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_52

    .line 929
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 930
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 932
    :cond_52
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$802(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_5f

    .line 934
    :cond_58
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$802(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;Ljava/util/List;)Ljava/util/List;

    .line 936
    :goto_5f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 869
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 874
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1b

    .line 877
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 878
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    goto :goto_1e

    .line 880
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 882
    :goto_1e
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2d

    .line 883
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 884
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    return-object p0

    .line 886
    :cond_2d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearEventName()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1146
    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 1147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEventSource()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1222
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEventTasks()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1540
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1541
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1542
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 1543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1545
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearEventValue()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1318
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 953
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 958
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public clearTaskBuckets()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1852
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1853
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 1854
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 1855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1857
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 942
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    .registers 2

    .line 899
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 894
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEventName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
    .registers 2

    .line 1115
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->valueOf(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1116
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    :cond_a
    return-object v0
.end method

.method public getEventNameValue()I
    .registers 2

    .line 1087
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    return v0
.end method

.method public getEventSource()Ljava/lang/String;
    .registers 3

    .line 1161
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1162
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1163
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1165
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1166
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    return-object v0

    .line 1169
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventSourceBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1182
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1184
    check-cast v0, Ljava/lang/String;

    .line 1185
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1187
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    return-object v0

    .line 1190
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1391
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1392
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1

    .line 1394
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1
.end method

.method public getEventTasksBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1575
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object p1
.end method

.method public getEventTasksBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTasksCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1377
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1378
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1380
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEventTasksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1363
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1364
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1366
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1586
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1587
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1

    .line 1588
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1
.end method

.method public getEventTasksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1600
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 1601
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1603
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventValue()Ljava/lang/String;
    .registers 3

    .line 1257
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1258
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1259
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1261
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1262
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    return-object v0

    .line 1265
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1278
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1280
    check-cast v0, Ljava/lang/String;

    .line 1281
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1283
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    return-object v0

    .line 1286
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
    .registers 3

    .line 1703
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1704
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1

    .line 1706
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1
.end method

.method public getTaskBucketsBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 3

    .line 1887
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object p1
.end method

.method public getTaskBucketsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            ">;"
        }
    .end annotation

    .line 1950
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBucketsCount()I
    .registers 2

    .line 1689
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1690
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1692
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTaskBucketsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation

    .line 1675
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1676
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
    .registers 3

    .line 1898
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1899
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1

    .line 1900
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1
.end method

.method public getTaskBucketsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1912
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 1913
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1915
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 845
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 846
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

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

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

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

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

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

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

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1064
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$1200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1070
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1066
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1067
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

    .line 1070
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 1072
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 974
    instance-of v0, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    if-eqz v0, :cond_b

    .line 975
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1

    .line 977
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 5

    .line 983
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 984
    :cond_7
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$400(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 985
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventNameValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setEventNameValue(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 987
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 988
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$500(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 991
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->getEventValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 992
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$600(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 995
    :cond_3a
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_6e

    .line 996
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 997
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 998
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 999
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    goto :goto_6a

    .line 1001
    :cond_5e
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1004
    :goto_6a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_ab

    .line 1007
    :cond_6e
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1008
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1009
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1010
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1011
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    .line 1012
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 1014
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$900()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1015
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_9f

    :cond_9e
    move-object v0, v1

    :goto_9f
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_ab

    .line 1017
    :cond_a2
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$700(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1021
    :cond_ab
    :goto_ab
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_de

    .line 1022
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_119

    .line 1023
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1024
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 1025
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    goto :goto_da

    .line 1027
    :cond_ce
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1028
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1030
    :goto_da
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_119

    .line 1033
    :cond_de
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_119

    .line 1034
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1035
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1036
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1037
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    .line 1038
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->bitField0_:I

    .line 1040
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1041
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_10d
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_119

    .line 1043
    :cond_110
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$800(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1047
    :cond_119
    :goto_119
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$1100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 1048
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1975
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public removeEventTasks(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1557
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1558
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1559
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1562
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeTaskBuckets(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 1869
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1870
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1871
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1874
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setEventName(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 1133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventNameValue(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1100
    iput p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventName_:I

    .line 1101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventSource(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventSourceBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1240
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1242
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventSource_:Ljava/lang/Object;

    .line 1243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1427
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1428
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1429
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1432
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1406
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1408
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1410
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureEventTasksIsMutable()V

    .line 1411
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1414
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEventValue(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1305
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventValueBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1338
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->eventValue_:Ljava/lang/Object;

    .line 1339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 833
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 3

    .line 948
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 833
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 833
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 964
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

.method public setTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 1739
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1740
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1741
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1744
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 4

    .line 1718
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1720
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1722
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->ensureTaskBucketsIsMutable()V

    .line 1723
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1726
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 833
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;
    .registers 2

    .line 1969
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.RequestOrBuilder (io.bidmachine.protobuf.rendering.RenderingTaskPermission$RequestOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$RequestOrBuilder;
.super Ljava/lang/Object;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getEventName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
.end method

.method public abstract getEventNameValue()I
.end method

.method public abstract getEventSource()Ljava/lang/String;
.end method

.method public abstract getEventSourceBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventValue()Ljava/lang/String;
.end method

.method public abstract getEventValueBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
.end method

.method public abstract getTaskBucketsCount()I
.end method

.method public abstract getTaskBucketsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
.end method

.method public abstract getTaskBucketsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

.field public static final EVENT_TASKS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_BUCKETS_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private eventTasks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private taskBuckets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3374
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    .line 3382
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2123
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2335
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->memoizedIsInitialized:B

    .line 2124
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    .line 2125
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2144
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>()V

    .line 2146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2150
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_92

    .line 2154
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    const/16 v5, 0xa

    if-eq v3, v5, :cond_46

    const/16 v5, 0x12

    if-eq v3, v5, :cond_2b

    .line 2178
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_23
    move v1, v4

    goto :goto_c

    :catchall_25
    move-exception p1

    goto :goto_70

    :catch_27
    move-exception p1

    goto :goto_61

    :catch_29
    move-exception p1

    goto :goto_6b

    :cond_2b
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_38

    .line 2170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 2173
    :cond_38
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    .line 2174
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 2173
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_46
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_53

    .line 2161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 2164
    :cond_53
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    .line 2165
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 2164
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_60} :catch_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_60} :catch_27
    .catchall {:try_start_e .. :try_end_60} :catchall_25

    goto :goto_c

    .line 2189
    :goto_61
    :try_start_61
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2190
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2187
    :goto_6b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_25

    :goto_70
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_7c

    .line 2193
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    :cond_7c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_88

    .line 2196
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    .line 2198
    :cond_88
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2200
    throw p1

    :cond_92
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_9e

    .line 2193
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    :cond_9e
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_aa

    .line 2196
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    .line 2198
    :cond_aa
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2114
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2121
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2335
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 2114
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1800()Z
    .registers 1

    .line 2114
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;
    .registers 1

    .line 2114
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 2114
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;
    .registers 1

    .line 2114
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 2114
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2200()Z
    .registers 1

    .line 2114
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2300()Z
    .registers 1

    .line 2114
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2400(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2114
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2114
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 1

    .line 3378
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2204
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 1

    .line 2488
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2491
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2461
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2462
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2468
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2469
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2429
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2435
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2474
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2475
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2481
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2482
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2449
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2450
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2456
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2457
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2418
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2424
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2439
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2445
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
            ">;"
        }
    .end annotation

    .line 3393
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2382
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    if-nez v1, :cond_d

    .line 2383
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2385
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    .line 2387
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getEventTasksList()Ljava/util/List;

    move-result-object v1

    .line 2388
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getEventTasksList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 2389
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getTaskBucketsList()Ljava/util/List;

    move-result-object v1

    .line 2390
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getTaskBucketsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 2391
    :cond_2e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    return v2

    :cond_39
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2

    .line 3403
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    return-object v0
.end method

.method public getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2260
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1
.end method

.method public getEventTasksCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2249
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventTasksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2226
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    return-object v0
.end method

.method public getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2272
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1
.end method

.method public getEventTasksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2238
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
            ">;"
        }
    .end annotation

    .line 3398
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 2360
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2364
    :goto_9
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 2365
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    .line 2366
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2368
    :cond_22
    :goto_22
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 2369
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    .line 2370
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 2372
    :cond_3b
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 2373
    iput v2, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v2
.end method

.method public getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
    .registers 3

    .line 2320
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1
.end method

.method public getTaskBucketsCount()I
    .registers 2

    .line 2309
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTaskBucketsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation

    .line 2286
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    return-object v0
.end method

.method public getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
    .registers 3

    .line 2332
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1
.end method

.method public getTaskBucketsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2298
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2138
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 2397
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2401
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getEventTasksCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getEventTasksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2406
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getTaskBucketsCount()I

    move-result v0

    if-lez v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2408
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getTaskBucketsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3a
    mul-int/lit8 v1, v1, 0x1d

    .line 2410
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2411
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2210
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    .line 2211
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2338
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2342
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2114
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2486
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 2502
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2132
    new-instance p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 2495
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2496
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;-><init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

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

    const/4 v0, 0x0

    move v1, v0

    .line 2349
    :goto_2
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 2350
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->eventTasks_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2352
    :cond_19
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 2353
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->taskBuckets_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 2355
    :cond_30
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.AnonymousClass1 (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response$1)
.class Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "RenderingTaskPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3382
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3388
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.Response.Builder (io.bidmachine.protobuf.rendering.RenderingTaskPermission$Response$Builder)
.class public final Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventTasks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation
.end field

.field private taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private taskBuckets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2526
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2733
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 3045
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2527
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2532
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2733
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 3045
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2533
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 3

    .line 2508
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V
    .registers 2

    .line 2508
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;-><init>()V

    return-void
.end method

.method private ensureEventTasksIsMutable()V
    .registers 3

    .line 2735
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 2736
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2737
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureTaskBucketsIsMutable()V
    .registers 3

    .line 3047
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 3048
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 3049
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2514
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3032
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 3033
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 3037
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3039
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 3041
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3344
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 3345
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 3349
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3350
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3351
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 3353
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 2537
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2538
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2539
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllEventTasks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;)",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2911
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2912
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2913
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2917
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllTaskBuckets(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;)",
            "Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;"
        }
    .end annotation

    .line 3223
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 3224
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3225
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3229
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2893
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2894
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2895
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2898
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2854
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2856
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2858
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2859
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2862
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2875
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2876
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2877
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2880
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasks(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2833
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2837
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2838
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2841
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventTasksBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3003
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3004
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v1

    .line 3003
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object v0
.end method

.method public addEventTasksBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3015
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3016
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object v1

    .line 3015
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 2636
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public addTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 3205
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3206
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3207
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3210
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 3166
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3170
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3171
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3174
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 3187
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3188
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3189
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3192
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBuckets(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 3145
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3149
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3150
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3153
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTaskBucketsBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 3

    .line 3315
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3316
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v1

    .line 3315
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object v0
.end method

.method public addTaskBucketsBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 4

    .line 3327
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3328
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object v1

    .line 3327
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 3

    .line 2573
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    .line 2574
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2575
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 4

    .line 2582
    new-instance v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$1;)V

    .line 2583
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2584
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_24

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    .line 2586
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2587
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2589
    :cond_1e
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2002(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_2b

    .line 2591
    :cond_24
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2002(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;

    .line 2593
    :goto_2b
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_49

    .line 2594
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_43

    .line 2595
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2596
    iget v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2598
    :cond_43
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_50

    .line 2600
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2102(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;Ljava/util/List;)Ljava/util/List;

    .line 2602
    :goto_50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2544
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2545
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2546
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2547
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    goto :goto_15

    .line 2549
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 2551
    :goto_15
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_24

    .line 2552
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2553
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    return-object p0

    .line 2555
    :cond_24
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearEventTasks()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2929
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2930
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2931
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2934
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2619
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2624
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public clearTaskBuckets()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 3241
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 3242
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 3243
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 3244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3246
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 2608
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->clone()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    .registers 2

    .line 2568
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2563
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2780
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2781
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1

    .line 2783
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    return-object p1
.end method

.method public getEventTasksBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2964
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;

    return-object p1
.end method

.method public getEventTasksBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3027
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTasksCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2766
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2767
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2769
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEventTasksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2752
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2753
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2755
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2975
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2976
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1

    .line 2977
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;

    return-object p1
.end method

.method public getEventTasksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2989
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2990
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2992
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
    .registers 3

    .line 3092
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3093
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1

    .line 3095
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    return-object p1
.end method

.method public getTaskBucketsBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;
    .registers 3

    .line 3276
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;

    return-object p1
.end method

.method public getTaskBucketsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;",
            ">;"
        }
    .end annotation

    .line 3339
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBucketsCount()I
    .registers 2

    .line 3078
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 3079
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3081
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTaskBucketsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation

    .line 3064
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 3065
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3067
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
    .registers 3

    .line 3287
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3288
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1

    .line 3289
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;

    return-object p1
.end method

.method public getTaskBucketsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3301
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 3302
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3304
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2520
    sget-object v0, Lio/bidmachine/protobuf/rendering/TaskPermissionProto;->internal_static_bidmachine_protobuf_RenderingTaskPermission_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    const-class v2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    .line 2521
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

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

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

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

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

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

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

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2719
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2725
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2721
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2722
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

    .line 2725
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    .line 2727
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 2640
    instance-of v0, p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    if-eqz v0, :cond_b

    .line 2641
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1

    .line 2643
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 5

    .line 2649
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2650
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 2651
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 2652
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2653
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2654
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    goto :goto_37

    .line 2656
    :cond_2b
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2657
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2659
    :goto_37
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_78

    .line 2662
    :cond_3b
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 2663
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2664
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2665
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2666
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    .line 2667
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2669
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2670
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getEventTasksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_6c

    :cond_6b
    move-object v0, v1

    :goto_6c
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_78

    .line 2672
    :cond_6f
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2000(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2676
    :cond_78
    :goto_78
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_ab

    .line 2677
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2678
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2679
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2680
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    goto :goto_a7

    .line 2682
    :cond_9b
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 2683
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2685
    :goto_a7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_e6

    .line 2688
    :cond_ab
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2689
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2690
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2691
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2692
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    .line 2693
    iget v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->bitField0_:I

    .line 2695
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 2696
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->getTaskBucketsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_da
    iput-object v1, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_e6

    .line 2698
    :cond_dd
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2100(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2702
    :cond_e6
    :goto_e6
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->access$2400(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    .line 2703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 3364
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public removeEventTasks(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2946
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2947
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2948
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2951
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeTaskBuckets(I)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 3258
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 3259
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3260
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3261
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3263
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2816
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2817
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2818
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2821
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEventTasks(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2795
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2797
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2799
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureEventTasksIsMutable()V

    .line 2800
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->eventTasks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2803
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2508
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 3

    .line 2614
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2508
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2508
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 2630
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

.method public setTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 3128
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 3129
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3130
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3133
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setTaskBuckets(ILio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 4

    .line 3107
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBucketsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 3109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3111
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->ensureTaskBucketsIsMutable()V

    .line 3112
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->taskBuckets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3115
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2508
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;
    .registers 2

    .line 3358
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.rendering.RenderingTaskPermission.ResponseOrBuilder (io.bidmachine.protobuf.rendering.RenderingTaskPermission$ResponseOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$ResponseOrBuilder;
.super Ljava/lang/Object;
.source "RenderingTaskPermission.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getEventTasks(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEventTasksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTaskBuckets(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;
.end method

.method public abstract getTaskBucketsCount()I
.end method

.method public abstract getTaskBucketsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskBucketsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;
.end method

.method public abstract getTaskBucketsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$TaskBucketOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
