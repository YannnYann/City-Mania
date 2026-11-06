###### Class io.bidmachine.protobuf.sdk.Session (io.bidmachine.protobuf.sdk.Session)
.class public final Lio/bidmachine/protobuf/sdk/Session;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Session$Builder;,
        Lio/bidmachine/protobuf/sdk/Session$Context;,
        Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private context_:Lio/bidmachine/protobuf/sdk/Session$Context;

.field private memoizedIsInitialized:B

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2611
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Session;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    .line 2619
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Session$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2010
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Session;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_6c

    .line 47
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2a

    .line 72
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_62

    :catch_26
    move-exception p1

    goto :goto_53

    :catch_28
    move-exception p1

    goto :goto_5d

    .line 60
    :cond_2a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v2, :cond_33

    .line 61
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Session$Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 63
    :goto_34
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/Session$Context;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v2, :cond_b

    .line 65
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 66
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    goto :goto_b

    .line 53
    :cond_4c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 55
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;
    :try_end_52
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_52} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_52} :catch_26
    .catchall {:try_start_d .. :try_end_52} :catchall_24

    goto :goto_b

    .line 83
    :goto_53
    :try_start_53
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 84
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 81
    :goto_5d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_24

    .line 86
    :goto_62
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 88
    throw p1

    .line 86
    :cond_6c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2010
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Session;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1700()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/sdk/Session;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/sdk/Session;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/sdk/Session;Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/sdk/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;
    .registers 1

    .line 2615
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 92
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 1

    .line 2163
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2166
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2136
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2137
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2143
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2144
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2104
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2110
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2149
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2150
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2156
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2157
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2124
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2125
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2132
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2093
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2099
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2114
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2120
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            ">;"
        }
    .end annotation

    .line 2630
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2056
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Session;

    if-nez v1, :cond_d

    .line 2057
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2059
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Session;

    .line 2061
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 2062
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 2063
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 2064
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2065
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v1

    .line 2066
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Session$Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 2068
    :cond_3f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public getContext()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2

    .line 1996
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getContextOrBuilder()Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;
    .registers 2

    .line 2007
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;
    .registers 2

    .line 2640
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            ">;"
        }
    .end annotation

    .line 2635
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2035
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2039
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2040
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2042
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    .line 2044
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2046
    :cond_27
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2047
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 1938
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    .line 1939
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1940
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1942
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1944
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1945
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1960
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    .line 1961
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1962
    check-cast v0, Ljava/lang/String;

    .line 1963
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1965
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1968
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 1984
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2074
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2078
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2080
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2083
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_34
    mul-int/lit8 v1, v1, 0x1d

    .line 2085
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2086
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 98
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Session;

    const-class v2, Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2013
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Session;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2017
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Session;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2161
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 4

    .line 2177
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/sdk/Session;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Session;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2170
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2171
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Session$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

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

    .line 2024
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 2025
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2027
    :cond_10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 2028
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2030
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Session.AnonymousClass1 (io.bidmachine.protobuf.sdk.Session$1)
.class Lio/bidmachine/protobuf/sdk/Session$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Session;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2619
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2625
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Session;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2619
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Session.Builder (io.bidmachine.protobuf.sdk.Session$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Session$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Session$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/SessionOrBuilder;"
    }
.end annotation


# instance fields
.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Session$Context;",
            "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;",
            "Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lio/bidmachine/protobuf/sdk/Session$Context;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2201
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2202
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2207
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2342
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2208
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 3

    .line 2183
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 2

    .line 2183
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;-><init>()V

    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Session$Context;",
            "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;",
            "Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2582
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2583
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2585
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v1

    .line 2586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2588
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2590
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2189
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2212
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->access$1700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2292
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Session;
    .registers 3

    .line 2242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    .line 2243
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2244
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Session;
    .registers 3

    .line 2251
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Session$1;)V

    .line 2252
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session;->access$1902(Lio/bidmachine/protobuf/sdk/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 2254
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session;->access$2002(Lio/bidmachine/protobuf/sdk/Session;Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context;

    goto :goto_1e

    .line 2256
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session;->access$2002(Lio/bidmachine/protobuf/sdk/Session;Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2258
    :goto_1e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2217
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2218
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2220
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2221
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0

    .line 2223
    :cond_f
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2224
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2535
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2536
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2539
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2540
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2275
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2280
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2413
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2264
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2

    .line 2461
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2462
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2464
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object v0
.end method

.method public getContextBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 2554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2555
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;
    .registers 2

    .line 2565
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2566
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;

    return-object v0

    .line 2568
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-nez v0, :cond_13

    .line 2569
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session;
    .registers 2

    .line 2237
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2232
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 2352
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2353
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2354
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2356
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2357
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2360
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2373
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2374
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2375
    check-cast v0, Ljava/lang/String;

    .line 2376
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2378
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2381
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 2450
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

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

    .line 2195
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Session;

    const-class v2, Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 2196
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

.method public mergeContext(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2513
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2514
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v0, :cond_17

    .line 2516
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilder(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    goto :goto_19

    .line 2518
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2520
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2522
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Builder;

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

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Builder;

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

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Builder;

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

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2330
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2336
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2332
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Session;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2333
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

    .line 2336
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 2338
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2296
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v0, :cond_b

    .line 2297
    check-cast p1, Lio/bidmachine/protobuf/sdk/Session;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1

    .line 2299
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2305
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2306
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2307
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session;->access$1900(Lio/bidmachine/protobuf/sdk/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2310
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2311
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session;->getContext()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeContext(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 2313
    :cond_27
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session;->access$2100(Lio/bidmachine/protobuf/sdk/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 2314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2601
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public setContext(Lio/bidmachine/protobuf/sdk/Session$Context$Builder;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2496
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2497
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2500
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setContext(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2475
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2479
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->context_:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 2480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2482
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2183
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 3

    .line 2270
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 4

    .line 2286
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2399
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2431
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2433
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Builder;->sessionId_:Ljava/lang/Object;

    .line 2434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2183
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 2595
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Session.Context (io.bidmachine.protobuf.sdk.Session$Context)
.class public final Lio/bidmachine/protobuf/sdk/Session$Context;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

.field public static final IAA_FIELD_NUMBER:I = 0x7

.field public static final IAP_FIELD_NUMBER:I = 0x6

.field public static final LAST_SESSION_DURATION_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session$Context;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETENTION_FIELD_NUMBER:I = 0x3

.field public static final SC_FIELD_NUMBER:I = 0x2

.field public static final SESSIONDURATION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation
.end field

.field private iaa_:Lcom/explorestack/protobuf/BoolValue;

.field private iap_:Lcom/explorestack/protobuf/BoolValue;

.field private lastSessionDuration_:J

.field private memoizedIsInitialized:B

.field private retention_:I

.field private sc_:I

.field private sessionduration_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1892
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 1900
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Session$Context$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 263
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 590
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->memoizedIsInitialized:B

    .line 264
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>()V

    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_de

    .line 293
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_ab

    const/16 v5, 0x18

    if-eq v3, v5, :cond_a3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_8a

    const/16 v5, 0x28

    if-eq v3, v5, :cond_83

    const/16 v5, 0x32

    const/4 v6, 0x0

    if-eq v3, v5, :cond_63

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_43

    .line 354
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_38
    move v1, v4

    goto :goto_c

    :catchall_3a
    move-exception p1

    goto/16 :goto_ca

    :catch_3d
    move-exception p1

    goto/16 :goto_bb

    :catch_40
    move-exception p1

    goto/16 :goto_c5

    .line 342
    :cond_43
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_4b

    .line 343
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 345
    :cond_4b
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 347
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 348
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_c

    .line 329
    :cond_63
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_6b

    .line 330
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 332
    :cond_6b
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 334
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 335
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_c

    .line 324
    :cond_83
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->lastSessionDuration_:J

    goto :goto_c

    :cond_8a
    if-nez v2, :cond_94

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    move v2, v4

    .line 318
    :cond_94
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    .line 319
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 318
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 310
    :cond_a3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->retention_:I

    goto/16 :goto_c

    .line 305
    :cond_ab
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sc_:I

    goto/16 :goto_c

    .line 300
    :cond_b3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sessionduration_:J
    :try_end_b9
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_b9} :catch_40
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_b9} :catch_3d
    .catchall {:try_start_e .. :try_end_b9} :catchall_3a

    goto/16 :goto_c

    .line 365
    :goto_bb
    :try_start_bb
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 366
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 363
    :goto_c5
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_ca
    .catchall {:try_start_bb .. :try_end_ca} :catchall_3a

    :goto_ca
    if-eqz v2, :cond_d4

    .line 369
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    .line 371
    :cond_d4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 373
    throw p1

    :cond_de
    if-eqz v2, :cond_e8

    .line 369
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    .line 371
    :cond_e8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 261
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 590
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 254
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$1100()Z
    .registers 1

    .line 254
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/sdk/Session$Context;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 254
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 254
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Session$Context;J)J
    .registers 3

    .line 254
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sessionduration_:J

    return-wide p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Session$Context;I)I
    .registers 2

    .line 254
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sc_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Session$Context;I)I
    .registers 2

    .line 254
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->retention_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;
    .registers 1

    .line 254
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Session$Context;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 254
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Session$Context;J)J
    .registers 3

    .line 254
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->lastSessionDuration_:J

    return-wide p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 254
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 1

    .line 1896
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 377
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 1

    .line 808
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 811
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 782
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 789
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 755
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 795
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 802
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 770
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 777
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 738
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 744
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 759
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 765
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session$Context;",
            ">;"
        }
    .end annotation

    .line 1911
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 672
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    if-nez v1, :cond_d

    .line 673
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 675
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 677
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v1

    .line 678
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 679
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v1

    .line 680
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 681
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v1

    .line 682
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v3

    if-eq v1, v3, :cond_33

    return v2

    .line 683
    :cond_33
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 684
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    .line 685
    :cond_42
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v3

    .line 686
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4f

    return v2

    .line 687
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIap()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIap()Z

    move-result v3

    if-eq v1, v3, :cond_5a

    return v2

    .line 688
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIap()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 690
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    .line 692
    :cond_6f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIaa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIaa()Z

    move-result v3

    if-eq v1, v3, :cond_7a

    return v2

    .line 693
    :cond_7a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIaa()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 694
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 695
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    return v2

    .line 697
    :cond_8f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v2

    :cond_9a
    return v0
.end method

.method public getData(I)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3

    .line 478
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p1
.end method

.method public getDataCount()I
    .registers 2

    .line 467
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    return-object v0
.end method

.method public getDataOrBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;
    .registers 3

    .line 490
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;

    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2

    .line 1921
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    return-object v0
.end method

.method public getIaa()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 575
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getIaaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 587
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getIap()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 534
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getIapOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 546
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getLastSessionDuration()J
    .registers 3

    .line 505
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->lastSessionDuration_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Session$Context;",
            ">;"
        }
    .end annotation

    .line 1916
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRetention()I
    .registers 2

    .line 430
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->retention_:I

    return v0
.end method

.method public getSc()I
    .registers 2

    .line 415
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sc_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 630
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 634
    :cond_6
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sessionduration_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    .line 636
    invoke-static {v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v5

    .line 638
    :goto_16
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sc_:I

    if-eqz v1, :cond_20

    const/4 v4, 0x2

    .line 640
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_20
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->retention_:I

    if-eqz v1, :cond_2a

    const/4 v4, 0x3

    .line 644
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_43

    .line 647
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    .line 648
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 650
    :cond_43
    iget-wide v4, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->lastSessionDuration_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4f

    const/4 v1, 0x5

    .line 652
    invoke-static {v1, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    :cond_4f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v1, :cond_5d

    const/4 v1, 0x6

    .line 656
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 658
    :cond_5d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v1, :cond_6b

    const/4 v1, 0x7

    .line 660
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 662
    :cond_6b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 663
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionduration()J
    .registers 3

    .line 400
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sessionduration_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasIaa()Z
    .registers 2

    .line 562
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIap()Z
    .registers 2

    .line 521
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 703
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 707
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 710
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v2

    .line 709
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 712
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 714
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v0

    add-int/2addr v1, v0

    .line 715
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDataCount()I

    move-result v0

    if-lez v0, :cond_4a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 717
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4a
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 721
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v2

    .line 720
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 722
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIap()Z

    move-result v0

    if-eqz v0, :cond_6e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 726
    :cond_6e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIaa()Z

    move-result v0

    if-eqz v0, :cond_83

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_83
    mul-int/lit8 v1, v1, 0x1d

    .line 730
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 731
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 383
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Session$Context;

    const-class v2, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 593
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 597
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 254
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 806
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 822
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 271
    new-instance p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 815
    sget-object v0, Lio/bidmachine/protobuf/sdk/Session$Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Session$Context;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 816
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Session$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sessionduration_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 605
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 607
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->sc_:I

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    .line 608
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 610
    :cond_14
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->retention_:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    .line 611
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1c
    const/4 v0, 0x0

    .line 613
    :goto_1d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 614
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->data_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 616
    :cond_34
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->lastSessionDuration_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x5

    .line 617
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 619
    :cond_3e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_4a

    const/4 v0, 0x6

    .line 620
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 622
    :cond_4a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_56

    const/4 v0, 0x7

    .line 623
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 625
    :cond_56
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Session.Context.AnonymousClass1 (io.bidmachine.protobuf.sdk.Session$Context$1)
.class Lio/bidmachine/protobuf/sdk/Session$Context$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Session$Context;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1900
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1906
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Session$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1900
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Session.Context.Builder (io.bidmachine.protobuf.sdk.Session$Context$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation
.end field

.field private iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private iaa_:Lcom/explorestack/protobuf/BoolValue;

.field private iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private iap_:Lcom/explorestack/protobuf/BoolValue;

.field private lastSessionDuration_:J

.field private retention_:I

.field private sc_:I

.field private sessionduration_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 846
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1192
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 847
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 852
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1192
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 853
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 3

    .line 828
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Session$1;)V
    .registers 2

    .line 828
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>()V

    return-void
.end method

.method private ensureDataIsMutable()V
    .registers 3

    .line 1194
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 1196
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 1492
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 1496
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1498
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 1500
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 834
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getIaaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1864
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1866
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1868
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1869
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1871
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getIapFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1700
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1702
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1705
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1707
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 857
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 858
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;"
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1371
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1372
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1376
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addData(ILio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 1352
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1353
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1357
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addData(ILio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 1313
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1315
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1318
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1321
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addData(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1334
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1335
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1336
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1339
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addData(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1292
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1297
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1300
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addDataBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 1462
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1463
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v1

    .line 1462
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object v0
.end method

.method public addDataBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 4

    .line 1474
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1475
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v1

    .line 1474
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 974
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 3

    .line 906
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 908
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 4

    .line 915
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Session$1;)V

    .line 917
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$402(Lio/bidmachine/protobuf/sdk/Session$Context;J)J

    .line 918
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$502(Lio/bidmachine/protobuf/sdk/Session$Context;I)I

    .line 919
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$602(Lio/bidmachine/protobuf/sdk/Session$Context;I)I

    .line 920
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_33

    .line 921
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    .line 922
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 923
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 925
    :cond_2d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$702(Lio/bidmachine/protobuf/sdk/Session$Context;Ljava/util/List;)Ljava/util/List;

    goto :goto_3a

    .line 927
    :cond_33
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$702(Lio/bidmachine/protobuf/sdk/Session$Context;Ljava/util/List;)Ljava/util/List;

    .line 929
    :goto_3a
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$802(Lio/bidmachine/protobuf/sdk/Session$Context;J)J

    .line 930
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 931
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$902(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_52

    .line 933
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$902(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 935
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 936
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1002(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_65

    .line 938
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1002(Lio/bidmachine/protobuf/sdk/Session$Context;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 940
    :goto_65
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 863
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 864
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    const/4 v2, 0x0

    .line 866
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 868
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 870
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1b

    .line 871
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 872
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    goto :goto_1e

    .line 874
    :cond_1b
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 876
    :goto_1e
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    .line 878
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 879
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_2c

    .line 881
    :cond_28
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 882
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 884
    :goto_2c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_33

    .line 885
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    return-object p0

    .line 887
    :cond_33
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 888
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearData()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 1388
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1389
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 1390
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 1391
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1393
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 957
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public clearIaa()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1813
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1814
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1817
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1818
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearIap()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1649
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1650
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1653
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1654
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLastSessionDuration()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1541
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    .line 1542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 962
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public clearRetention()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1186
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 1187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSc()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1143
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 1144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionduration()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1100
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    .line 1101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 946
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Lio/bidmachine/protobuf/sdk/ContextualData;
    .registers 3

    .line 1239
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1240
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p1

    .line 1242
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    return-object p1
.end method

.method public getDataBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 3

    .line 1423
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public getDataBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            ">;"
        }
    .end annotation

    .line 1486
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataCount()I
    .registers 2

    .line 1225
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1226
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1228
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1212
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1214
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataOrBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;
    .registers 3

    .line 1434
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1435
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;

    return-object p1

    .line 1436
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;

    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 1449
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1451
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;
    .registers 2

    .line 901
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 896
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getIaa()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1735
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1736
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1738
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getIaaBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1834
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getIaaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getIaaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1845
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1846
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1848
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1849
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getIap()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1571
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1572
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1574
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getIapBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1670
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getIapFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getIapOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1681
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1682
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1684
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1685
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLastSessionDuration()J
    .registers 3

    .line 1514
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    return-wide v0
.end method

.method public getRetention()I
    .registers 2

    .line 1159
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    return v0
.end method

.method public getSc()I
    .registers 2

    .line 1116
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    return v0
.end method

.method public getSessionduration()J
    .registers 3

    .line 1073
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    return-wide v0
.end method

.method public hasIaa()Z
    .registers 2

    .line 1723
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasIap()Z
    .registers 2

    .line 1559
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

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

    .line 840
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Session$Context;

    const-class v2, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 841
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

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1049
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1055
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1051
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Session$Context;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1052
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

    .line 1055
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 1057
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 978
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v0, :cond_b

    .line 979
    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1

    .line 981
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 6

    .line 987
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 988
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 989
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 991
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v0

    if-eqz v0, :cond_25

    .line 992
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 994
    :cond_25
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v0

    if-eqz v0, :cond_32

    .line 995
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 997
    :cond_32
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_65

    .line 998
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 999
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1000
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 1001
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    goto :goto_61

    .line 1003
    :cond_55
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1004
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1006
    :goto_61
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_a1

    .line 1009
    :cond_65
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1010
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1011
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1012
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1013
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 1014
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 1016
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1017
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_95
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_a1

    .line 1019
    :cond_98
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1023
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b0

    .line 1024
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 1026
    :cond_b0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIap()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1027
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIap()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeIap(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 1029
    :cond_bd
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->hasIaa()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1030
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getIaa()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeIaa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 1032
    :cond_ca
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1200(Lio/bidmachine/protobuf/sdk/Session$Context;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 1033
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeIaa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1790
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1791
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1793
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1795
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1797
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1799
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeIap(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1626
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1627
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1629
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1631
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1633
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1635
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 1882
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public removeData(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1405
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1406
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1407
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1410
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setData(ILio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 1275
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1276
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1277
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1280
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setData(ILio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 1254
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 1259
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1262
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 828
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 952
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public setIaa(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1772
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1773
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1776
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIaa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1750
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1752
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1754
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iaa_:Lcom/explorestack/protobuf/BoolValue;

    .line 1755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1757
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIap(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1608
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1609
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1612
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIap(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1586
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iapBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1590
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->iap_:Lcom/explorestack/protobuf/BoolValue;

    .line 1591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1593
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1527
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    .line 1528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 4

    .line 968
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 1172
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 1173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 1129
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 1130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 3

    .line 1086
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 828
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 2

    .line 1876
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Session.ContextOrBuilder (io.bidmachine.protobuf.sdk.Session$ContextOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContextOrBuilder"
.end annotation


# virtual methods
.method public abstract getData(I)Lio/bidmachine/protobuf/sdk/ContextualData;
.end method

.method public abstract getDataCount()I
.end method

.method public abstract getDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataOrBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;
.end method

.method public abstract getDataOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getIaa()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getIaaOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getIap()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getIapOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getLastSessionDuration()J
.end method

.method public abstract getRetention()I
.end method

.method public abstract getSc()I
.end method

.method public abstract getSessionduration()J
.end method

.method public abstract hasIaa()Z
.end method

.method public abstract hasIap()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
