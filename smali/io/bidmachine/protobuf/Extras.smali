###### Class io.bidmachine.protobuf.Extras (io.bidmachine.protobuf.Extras)
.class public final Lio/bidmachine/protobuf/Extras;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Extras.java"

# interfaces
.implements Lio/bidmachine/protobuf/ExtrasOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/Extras$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

.field public static final INTERNAL_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/Extras;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_FIELD_NUMBER:I = 0x1

.field public static final PUBLIC_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private internal_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B

.field private private_:Lcom/explorestack/protobuf/Struct;

.field private public_:Lcom/explorestack/protobuf/Struct;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 950
    new-instance v0, Lio/bidmachine/protobuf/Extras;

    invoke-direct {v0}, Lio/bidmachine/protobuf/Extras;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    .line 958
    new-instance v0, Lio/bidmachine/protobuf/Extras$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/Extras$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 200
    iput-byte v0, p0, Lio/bidmachine/protobuf/Extras;->memoizedIsInitialized:B

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_aa

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_70

    const/16 v4, 0x12

    if-eq v2, v4, :cond_50

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_30

    .line 91
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_27
    move v1, v3

    goto :goto_b

    :catchall_29
    move-exception p1

    goto/16 :goto_a0

    :catch_2c
    move-exception p1

    goto :goto_91

    :catch_2e
    move-exception p1

    goto :goto_9b

    .line 79
    :cond_30
    iget-object v2, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_38

    .line 80
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 82
    :cond_38
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 84
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 85
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    goto :goto_b

    .line 66
    :cond_50
    iget-object v2, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_58

    .line 67
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 69
    :cond_58
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 71
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 72
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    goto :goto_b

    .line 53
    :cond_70
    iget-object v2, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_78

    .line 54
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 56
    :cond_78
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_b

    .line 58
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 59
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;
    :try_end_8f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_8f} :catch_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8f} :catch_2c
    .catchall {:try_start_d .. :try_end_8f} :catchall_29

    goto/16 :goto_b

    .line 102
    :goto_91
    :try_start_91
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 103
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 100
    :goto_9b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_29

    .line 105
    :goto_a0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 107
    throw p1

    .line 105
    :cond_aa
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/Extras$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/Extras;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 200
    iput-byte p1, p0, Lio/bidmachine/protobuf/Extras;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/Extras$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Extras;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/Extras;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/Extras;
    .registers 1

    .line 954
    sget-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 111
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 1

    .line 375
    sget-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->toBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 378
    sget-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->toBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 349
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 356
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 316
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 322
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 362
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 369
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 337
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 344
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 305
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 311
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/Extras;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 332
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Extras;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/Extras;",
            ">;"
        }
    .end annotation

    .line 969
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 254
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/Extras;

    if-nez v1, :cond_d

    .line 255
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 257
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/Extras;

    .line 259
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPrivate()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasPrivate()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 260
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPrivate()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 261
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 262
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 264
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasInternal()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasInternal()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 265
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasInternal()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 266
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 269
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPublic()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasPublic()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 270
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPublic()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 274
    :cond_70
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    return v3

    :cond_7b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;
    .registers 2

    .line 979
    sget-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    return-object v0
.end method

.method public getInternal()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInternalOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/Extras;",
            ">;"
        }
    .end annotation

    .line 974
    sget-object v0, Lio/bidmachine/protobuf/Extras;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPrivate()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 138
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPrivateOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 145
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getPublic()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 190
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPublicOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 228
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 232
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 236
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 238
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasInternal()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivate()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPublic()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 280
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 284
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 285
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPrivate()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 287
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 289
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasInternal()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 293
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 297
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 298
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 117
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/Extras;

    const-class v2, Lio/bidmachine/protobuf/Extras$Builder;

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 203
    iget-byte v0, p0, Lio/bidmachine/protobuf/Extras;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/Extras;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->newBuilderForType()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->newBuilderForType()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 373
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->newBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 4

    .line 389
    new-instance v0, Lio/bidmachine/protobuf/Extras$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/Extras$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/Extras$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/Extras;

    invoke-direct {p1}, Lio/bidmachine/protobuf/Extras;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->toBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->toBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 382
    sget-object v0, Lio/bidmachine/protobuf/Extras;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Extras;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 383
    new-instance v0, Lio/bidmachine/protobuf/Extras$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Extras$Builder;-><init>(Lio/bidmachine/protobuf/Extras$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/Extras$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Extras$Builder;-><init>(Lio/bidmachine/protobuf/Extras$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

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

    .line 214
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 217
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 218
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 220
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 223
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.Extras.AnonymousClass1 (io.bidmachine.protobuf.Extras$1)
.class Lio/bidmachine/protobuf/Extras$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Extras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/Extras;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 958
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 964
    new-instance v0, Lio/bidmachine/protobuf/Extras;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/Extras;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/Extras$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 958
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.Extras.Builder (io.bidmachine.protobuf.Extras$Builder)
.class public final Lio/bidmachine/protobuf/Extras$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Extras.java"

# interfaces
.implements Lio/bidmachine/protobuf/ExtrasOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/Extras$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/ExtrasOrBuilder;"
    }
.end annotation


# instance fields
.field private internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private internal_:Lcom/explorestack/protobuf/Struct;

.field private privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private private_:Lcom/explorestack/protobuf/Struct;

.field private publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private public_:Lcom/explorestack/protobuf/Struct;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 413
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 414
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 419
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 420
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/Extras$1;)V
    .registers 3

    .line 395
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/Extras$1;)V
    .registers 2

    .line 395
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 401
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getInternalFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 802
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 803
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 805
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 810
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPrivateFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 683
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 684
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 691
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPublicFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 921
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 922
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 924
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 925
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 929
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 424
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 523
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/Extras;
    .registers 3

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 466
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/Extras;
    .registers 3

    .line 473
    new-instance v0, Lio/bidmachine/protobuf/Extras;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/Extras;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/Extras$1;)V

    .line 474
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 475
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$402(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 477
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$402(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 479
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 480
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$502(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2c

    .line 482
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$502(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 484
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 485
    iget-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$602(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3f

    .line 487
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Extras;->access$602(Lio/bidmachine/protobuf/Extras;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 489
    :goto_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clear()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clear()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clear()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clear()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 429
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 430
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 431
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    goto :goto_f

    .line 433
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 434
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 436
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 437
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1a

    .line 439
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 440
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 442
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 443
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    return-object p0

    .line 445
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 446
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public clearInternal()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 767
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 768
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 769
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 771
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 772
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 511
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public clearPrivate()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 648
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 649
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 652
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 653
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearPublic()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 886
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 887
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 890
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 891
    iput-object v1, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 495
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Extras$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->clone()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/Extras;
    .registers 2

    .line 459
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 454
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInternal()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 709
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 710
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 712
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getInternalBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 783
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getInternalFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getInternalOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 789
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 790
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 792
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 793
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPrivate()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 590
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 591
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 593
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getPrivateBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 664
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getPrivateFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getPrivateOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 670
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 671
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 673
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 674
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPublic()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 828
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 829
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 831
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getPublicBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 901
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 902
    invoke-direct {p0}, Lio/bidmachine/protobuf/Extras$Builder;->getPublicFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getPublicOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 908
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 909
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 911
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 912
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasInternal()Z
    .registers 2

    .line 702
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

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

.method public hasPrivate()Z
    .registers 2

    .line 583
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

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

.method public hasPublic()Z
    .registers 2

    .line 821
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

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

    .line 407
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/Extras;

    const-class v2, Lio/bidmachine/protobuf/Extras$Builder;

    .line 408
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

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Extras$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Extras$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 563
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 569
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 565
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/Extras;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 566
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

    .line 569
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 571
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 527
    instance-of v0, p1, Lio/bidmachine/protobuf/Extras;

    if-eqz v0, :cond_b

    .line 528
    check-cast p1, Lio/bidmachine/protobuf/Extras;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1

    .line 530
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 536
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 537
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasPrivate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 538
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Extras$Builder;->mergePrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 540
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasInternal()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 541
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Extras$Builder;->mergeInternal(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 543
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 544
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Extras$Builder;->mergePublic(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 546
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/Extras;->access$700(Lio/bidmachine/protobuf/Extras;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeInternal(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 749
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 750
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 752
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 754
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 756
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 758
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 630
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 631
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 633
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 635
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 637
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 639
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePublic(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 868
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 869
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 871
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 873
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 875
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 877
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 940
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 395
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Extras$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 501
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public setInternal(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 736
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 737
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 740
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInternal(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 719
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->internalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->internal_:Lcom/explorestack/protobuf/Struct;

    .line 724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 726
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPrivate(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 617
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 618
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 621
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 600
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->privateBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->private_:Lcom/explorestack/protobuf/Struct;

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 607
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPublic(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 855
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 856
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 859
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPublic(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 3

    .line 838
    iget-object v0, p0, Lio/bidmachine/protobuf/Extras$Builder;->publicBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 840
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    iput-object p1, p0, Lio/bidmachine/protobuf/Extras$Builder;->public_:Lcom/explorestack/protobuf/Struct;

    .line 843
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 845
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Extras$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Extras$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 4

    .line 517
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 395
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 934
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Extras$Builder;

    return-object p1
.end method
