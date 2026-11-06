###### Class io.bidmachine.protobuf.AdCachePlacementControl (io.bidmachine.protobuf.AdCachePlacementControl)
.class public final Lio/bidmachine/protobuf/AdCachePlacementControl;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdCachePlacementControl.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

.field public static final MAX_AGE_FIELD_NUMBER:I = 0x3

.field public static final MAX_CACHE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final MAX_RETAIN_COUNT_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private maxAge_:I

.field private maxCacheSize_:I

.field private maxRetainCount_:I

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 578
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 586
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_5c

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3c

    const/16 v4, 0x18

    if-eq v2, v4, :cond_35

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2e

    .line 67
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_52

    :catch_2a
    move-exception p1

    goto :goto_43

    :catch_2c
    move-exception p1

    goto :goto_4d

    .line 63
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    goto :goto_b

    .line 58
    :cond_35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    goto :goto_b

    .line 53
    :cond_3c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I
    :try_end_42
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_42} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_42} :catch_2a
    .catchall {:try_start_d .. :try_end_42} :catchall_28

    goto :goto_b

    .line 78
    :goto_43
    :try_start_43
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 79
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 76
    :goto_4d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_28

    .line 81
    :goto_52
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 83
    throw p1

    .line 81
    :cond_5c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 131
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    return p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 1

    .line 582
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 87
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 1

    .line 291
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 294
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 278
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 285
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 253
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 260
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 248
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 597
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 185
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-nez v1, :cond_d

    .line 186
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 188
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 192
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v1

    .line 193
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 194
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v1

    .line 195
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 196
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v3

    :cond_3c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2

    .line 607
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object v0
.end method

.method public getMaxAge()I
    .registers 2

    .line 128
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    return v0
.end method

.method public getMaxCacheSize()I
    .registers 2

    .line 106
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    return v0
.end method

.method public getMaxRetainCount()I
    .registers 2

    .line 117
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 602
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 159
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 163
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 165
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 167
    :goto_11
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    if-eqz v1, :cond_1b

    const/4 v2, 0x3

    .line 169
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_1b
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    if-eqz v1, :cond_25

    const/4 v2, 0x4

    .line 173
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_25
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 202
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 206
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 208
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 213
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 214
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 93
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const-class v2, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 134
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 289
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 4

    .line 305
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 3

    .line 298
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 299
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 145
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 148
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x3

    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 151
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    if-eqz v0, :cond_18

    const/4 v1, 0x4

    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdCachePlacementControl.AnonymousClass1 (io.bidmachine.protobuf.AdCachePlacementControl$1)
.class Lio/bidmachine/protobuf/AdCachePlacementControl$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdCachePlacementControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdCachePlacementControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdCachePlacementControl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 586
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 592
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdCachePlacementControl.Builder (io.bidmachine.protobuf.AdCachePlacementControl$Builder)
.class public final Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdCachePlacementControl.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdCachePlacementControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;"
    }
.end annotation


# instance fields
.field private maxAge_:I

.field private maxCacheSize_:I

.field private maxRetainCount_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 329
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 330
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 335
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 336
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .registers 3

    .line 311
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .registers 2

    .line 311
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 317
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 340
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 3

    .line 415
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->build()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->build()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 370
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3

    .line 377
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    .line 378
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$402(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 379
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$502(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 380
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$602(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 345
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 348
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 350
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 398
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public clearMaxAge()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 555
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    .line 556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxCacheSize()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxRetainCount()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 403
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 387
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 2

    .line 363
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 358
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxAge()I
    .registers 2

    .line 536
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    return v0
.end method

.method public getMaxCacheSize()I
    .registers 2

    .line 474
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    return v0
.end method

.method public getMaxRetainCount()I
    .registers 2

    .line 505
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 323
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const-class v2, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 324
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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 455
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 461
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 457
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdCachePlacementControl;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 458
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

    .line 461
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 463
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 3

    .line 419
    instance-of v0, p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz v0, :cond_b

    .line 420
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1

    .line 422
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 3

    .line 428
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 429
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    if-eqz v0, :cond_14

    .line 430
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxCacheSize(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 432
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    if-eqz v0, :cond_21

    .line 433
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxRetainCount(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 435
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 436
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxAge(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 438
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$700(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 568
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 3

    .line 393
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public setMaxAge(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 545
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    .line 546
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxCacheSize(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 483
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 484
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxRetainCount(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 514
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 4

    .line 409
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .registers 2

    .line 562
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method
