###### Class io.bidmachine.protobuf.DeviceExtension (io.bidmachine.protobuf.DeviceExtension)
.class public final Lio/bidmachine/protobuf/DeviceExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "DeviceExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/DeviceExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/DeviceExtension$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BATTERY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/DeviceExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOTED_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private battery_:I

.field private memoizedIsInitialized:B

.field private rooted_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 547
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/DeviceExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    .line 555
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/DeviceExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 123
    iput-byte v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->memoizedIsInitialized:B

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_51

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 62
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_47

    :catch_26
    move-exception p1

    goto :goto_38

    :catch_28
    move-exception p1

    goto :goto_42

    .line 58
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/DeviceExtension;->rooted_:Z

    goto :goto_b

    .line 53
    :cond_31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/DeviceExtension;->battery_:I
    :try_end_37
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_37} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_26
    .catchall {:try_start_d .. :try_end_37} :catchall_24

    goto :goto_b

    .line 73
    :goto_38
    :try_start_38
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 74
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 71
    :goto_42
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_24

    .line 76
    :goto_47
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 78
    throw p1

    .line 76
    :cond_51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 123
    iput-byte p1, p0, Lio/bidmachine/protobuf/DeviceExtension;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/DeviceExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/DeviceExtension;->battery_:I

    return p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/DeviceExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/DeviceExtension;->rooted_:Z

    return p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/DeviceExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/DeviceExtension;
    .registers 1

    .line 551
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 82
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 1

    .line 273
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/DeviceExtension;->toBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 276
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/DeviceExtension;->toBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 247
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 254
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 260
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 267
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 235
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 242
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 203
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 209
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/DeviceExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/DeviceExtension;",
            ">;"
        }
    .end annotation

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 170
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/DeviceExtension;

    if-nez v1, :cond_d

    .line 171
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 173
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension;

    .line 175
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v1

    .line 176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 177
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v1

    .line 178
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 179
    :cond_26
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v3

    :cond_31
    return v0
.end method

.method public getBattery()I
    .registers 2

    .line 105
    iget v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->battery_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2

    .line 576
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/DeviceExtension;",
            ">;"
        }
    .end annotation

    .line 571
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRooted()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->rooted_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 148
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 152
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->battery_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 154
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 156
    :goto_11
    iget-boolean v1, p0, Lio/bidmachine/protobuf/DeviceExtension;->rooted_:Z

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    .line 158
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 161
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

    .line 185
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 189
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 194
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v0

    .line 193
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 195
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 196
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 88
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/DeviceExtension;

    const-class v2, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 126
    iget-byte v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/DeviceExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->newBuilderForType()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->newBuilderForType()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 271
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->newBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 4

    .line 287
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/DeviceExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/DeviceExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/DeviceExtension;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->toBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension;->toBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 3

    .line 280
    sget-object v0, Lio/bidmachine/protobuf/DeviceExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/DeviceExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 281
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>(Lio/bidmachine/protobuf/DeviceExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>(Lio/bidmachine/protobuf/DeviceExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 137
    iget v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->battery_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 140
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension;->rooted_:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 141
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 143
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.DeviceExtension.AnonymousClass1 (io.bidmachine.protobuf.DeviceExtension$1)
.class Lio/bidmachine/protobuf/DeviceExtension$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "DeviceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/DeviceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/DeviceExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 555
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 561
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/DeviceExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/DeviceExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.DeviceExtension.Builder (io.bidmachine.protobuf.DeviceExtension$Builder)
.class public final Lio/bidmachine/protobuf/DeviceExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "DeviceExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/DeviceExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/DeviceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/DeviceExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/DeviceExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private battery_:I

.field private rooted_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 312
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 317
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 318
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .registers 3

    .line 293
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .registers 2

    .line 293
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 299
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 322
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 3

    .line 394
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->build()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->build()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3

    .line 348
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lio/bidmachine/protobuf/DeviceExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 350
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/DeviceExtension;
    .registers 3

    .line 357
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/DeviceExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/DeviceExtension$1;)V

    .line 358
    iget v1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension;->access$402(Lio/bidmachine/protobuf/DeviceExtension;I)I

    .line 359
    iget-boolean v1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension;->access$502(Lio/bidmachine/protobuf/DeviceExtension;Z)Z

    .line 360
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 327
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 330
    iput-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    return-object p0
.end method

.method public clearBattery()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 482
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 377
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 382
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public clearRooted()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    .line 525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 366
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBattery()I
    .registers 2

    .line 454
    iget v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;
    .registers 2

    .line 343
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstance()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 338
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRooted()Z
    .registers 2

    .line 497
    iget-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 305
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/DeviceExtension;

    const-class v2, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 306
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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 431
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 437
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 433
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/DeviceExtension;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 434
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

    .line 437
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 439
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 3

    .line 398
    instance-of v0, p1, Lio/bidmachine/protobuf/DeviceExtension;

    if-eqz v0, :cond_b

    .line 399
    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1

    .line 401
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 3

    .line 407
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstance()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 408
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v0

    if-eqz v0, :cond_14

    .line 409
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setBattery(I)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 411
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 412
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRooted(Z)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 414
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/DeviceExtension;->access$600(Lio/bidmachine/protobuf/DeviceExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 537
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public setBattery(I)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 467
    iput p1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 468
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 3

    .line 372
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 4

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public setRooted(Z)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 510
    iput-boolean p1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    .line 511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .registers 2

    .line 531
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method
