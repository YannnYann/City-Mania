###### Class io.bidmachine.protobuf.InitRequestV2 (io.bidmachine.protobuf.InitRequestV2)
.class public final Lio/bidmachine/protobuf/InitRequestV2;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitRequestV2.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequestV2$Builder;
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

.field public static final EXT_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequestV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 762
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequestV2;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    .line 770
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequestV2$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 161
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_84

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2b

    .line 78
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_23
    move v1, v3

    goto :goto_b

    :catchall_25
    move-exception p1

    goto :goto_7a

    :catch_27
    move-exception p1

    goto :goto_6b

    :catch_29
    move-exception p1

    goto :goto_75

    .line 66
    :cond_2b
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_33

    .line 67
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 69
    :cond_33
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 71
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 72
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_b

    .line 53
    :cond_4b
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v2, :cond_53

    .line 54
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v5

    .line 56
    :cond_53
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Context;

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v5, :cond_b

    .line 58
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 59
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;
    :try_end_6a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_6a} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6a} :catch_27
    .catchall {:try_start_d .. :try_end_6a} :catchall_25

    goto :goto_b

    .line 89
    :goto_6b
    :try_start_6b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 90
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 87
    :goto_75
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_25

    .line 92
    :goto_7a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 94
    throw p1

    .line 92
    :cond_84
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequestV2$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 161
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequestV2;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequestV2$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/InitRequestV2;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequestV2;
    .registers 1

    .line 766
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 98
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequestV2_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 1

    .line 320
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequestV2;->toBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 323
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequestV2;->toBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 294
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 301
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 261
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 267
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 307
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 314
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 282
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 289
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 277
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequestV2;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequestV2;",
            ">;"
        }
    .end annotation

    .line 781
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 208
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequestV2;

    if-nez v1, :cond_d

    .line 209
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 211
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2;

    .line 213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->hasContext()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 214
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 218
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 219
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 220
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 223
    :cond_50
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    return v3

    :cond_5b
    return v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 125
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2

    .line 791
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 151
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequestV2;",
            ">;"
        }
    .end annotation

    .line 786
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 186
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 190
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 194
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasExt()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 229
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 233
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 238
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 240
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3a
    mul-int/lit8 v1, v1, 0x1d

    .line 242
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 243
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 104
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequestV2_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequestV2;

    const-class v2, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 164
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 168
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequestV2;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->newBuilderForType()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->newBuilderForType()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 318
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->newBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 4

    .line 334
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequestV2$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/InitRequestV2;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequestV2;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->toBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->toBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 327
    sget-object v0, Lio/bidmachine/protobuf/InitRequestV2;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequestV2;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 328
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;-><init>(Lio/bidmachine/protobuf/InitRequestV2$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;-><init>(Lio/bidmachine/protobuf/InitRequestV2$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

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

    .line 175
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 178
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 181
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequestV2.AnonymousClass1 (io.bidmachine.protobuf.InitRequestV2$1)
.class Lio/bidmachine/protobuf/InitRequestV2$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitRequestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitRequestV2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 770
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 776
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitRequestV2;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequestV2$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequestV2.Builder (io.bidmachine.protobuf.InitRequestV2$Builder)
.class public final Lio/bidmachine/protobuf/InitRequestV2$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitRequestV2.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequestV2$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequestV2OrBuilder;"
    }
.end annotation


# instance fields
.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 359
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 364
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 365
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequestV2$1;)V
    .registers 3

    .line 340
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequestV2$1;)V
    .registers 2

    .line 340
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;-><init>()V

    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 615
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 620
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 622
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 346
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequestV2_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 734
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 736
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 741
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 369
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 457
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->build()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->build()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequestV2;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 405
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitRequestV2;
    .registers 3

    .line 412
    new-instance v0, Lio/bidmachine/protobuf/InitRequestV2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequestV2;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequestV2$1;)V

    .line 413
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 414
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2;->access$402(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_19

    .line 416
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2;->access$402(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    .line 418
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 419
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2;->access$502(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2c

    .line 421
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequestV2;->access$502(Lio/bidmachine/protobuf/InitRequestV2;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 423
    :goto_2c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clear()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clear()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clear()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clear()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 374
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 375
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 376
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_f

    .line 378
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 379
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 381
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 382
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p0

    .line 384
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 385
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 579
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 580
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 583
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 584
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 698
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 699
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 702
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 703
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 440
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 445
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 429
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->clone()Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 521
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 522
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_c
    return-object v0

    .line 524
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context;

    return-object v0
.end method

.method public getContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 595
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 601
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 602
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ContextOrBuilder;

    return-object v0

    .line 604
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_13

    .line 605
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequestV2;
    .registers 2

    .line 398
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 393
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequestV2_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 640
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 641
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 643
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 714
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 720
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 721
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 723
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 724
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasContext()Z
    .registers 2

    .line 514
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

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

.method public hasExt()Z
    .registers 2

    .line 633
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 352
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequestV2_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequestV2;

    const-class v2, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 353
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

.method public mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 561
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 562
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_17

    .line 564
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_19

    .line 566
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 568
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 570
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 680
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 681
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 683
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 685
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 687
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 689
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

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

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

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

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

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

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

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 494
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 500
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 496
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequestV2;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 497
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

    .line 500
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 502
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 461
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequestV2;

    if-eqz v0, :cond_b

    .line 462
    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1

    .line 464
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitRequestV2;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 470
    invoke-static {}, Lio/bidmachine/protobuf/InitRequestV2;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequestV2;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 471
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 472
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 474
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 475
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequestV2;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 477
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequestV2;->access$600(Lio/bidmachine/protobuf/InitRequestV2;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    .line 478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 752
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context$Builder;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 548
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 549
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 552
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 531
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 538
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 667
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 668
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 671
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 650
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequestV2$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 657
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 340
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 3

    .line 435
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 340
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 340
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 4

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequestV2$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequestV2$Builder;
    .registers 2

    .line 746
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequestV2$Builder;

    return-object p1
.end method
