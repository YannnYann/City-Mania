###### Class io.bidmachine.protobuf.sdk.Reader (io.bidmachine.protobuf.sdk.Reader)
.class public final Lio/bidmachine/protobuf/sdk/Reader;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Builder;,
        Lio/bidmachine/protobuf/sdk/Reader$Record;,
        Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule;,
        Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;,
        Lio/bidmachine/protobuf/sdk/Reader$Configuration;,
        Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDS_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private records_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9931
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    .line 9939
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 8961
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    .line 20
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_93

    .line 49
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_69

    const/16 v5, 0x12

    if-eq v3, v5, :cond_47

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 83
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_7f

    :catch_2b
    move-exception p1

    goto :goto_70

    :catch_2d
    move-exception p1

    goto :goto_7a

    :cond_2f
    if-nez v2, :cond_39

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    move v2, v4

    .line 78
    :cond_39
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    .line 79
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 78
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 62
    :cond_47
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_50

    .line 63
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v3

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    .line 65
    :goto_51
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Timestamp;

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_c

    .line 67
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 68
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_c

    .line 55
    :cond_69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 57
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;
    :try_end_6f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_6f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_6f} :catch_2b
    .catchall {:try_start_e .. :try_end_6f} :catchall_29

    goto :goto_c

    .line 94
    :goto_70
    :try_start_70
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 95
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 92
    :goto_7a
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_29

    :goto_7f
    if-eqz v2, :cond_89

    .line 98
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    .line 100
    :cond_89
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 102
    throw p1

    :cond_93
    if-eqz v2, :cond_9d

    .line 98
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    .line 100
    :cond_9d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 8961
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$6600()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$6800(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6802(Lio/bidmachine/protobuf/sdk/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6902(Lio/bidmachine/protobuf/sdk/Reader;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$7002(Lio/bidmachine/protobuf/sdk/Reader;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$7100()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7200(Lio/bidmachine/protobuf/sdk/Reader;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$7300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$7400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 1

    .line 9935
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 106
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 1

    .line 9127
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9130
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9100
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9101
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9107
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9108
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9068
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9074
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9113
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9114
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9120
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9121
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9088
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9089
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9095
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 9096
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9057
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9063
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9078
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9084
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader;",
            ">;"
        }
    .end annotation

    .line 9950
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 9014
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader;

    if-nez v1, :cond_d

    .line 9015
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9017
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader;

    .line 9019
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 9020
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 9021
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->hasTimestamp()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 9022
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 9023
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 9024
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 9026
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getRecordsList()Ljava/util/List;

    move-result-object v1

    .line 9027
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->getRecordsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    .line 9028
    :cond_4e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2

    .line 9960
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 8829
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    .line 8830
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 8831
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8833
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8835
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8836
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 8851
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    .line 8852
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 8853
    check-cast v0, Ljava/lang/String;

    .line 8854
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8856
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    return-object v0

    .line 8859
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
            "Lio/bidmachine/protobuf/sdk/Reader;",
            ">;"
        }
    .end annotation

    .line 9955
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRecords(I)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3

    .line 8946
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p1
.end method

.method public getRecordsCount()I
    .registers 2

    .line 8935
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation

    .line 8912
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    return-object v0
.end method

.method public getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;
    .registers 3

    .line 8958
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;

    return-object p1
.end method

.method public getRecordsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8924
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 8989
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 8993
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 8994
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 8996
    :goto_1a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_28

    const/4 v2, 0x2

    .line 8998
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9000
    :cond_28
    :goto_28
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 9001
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    .line 9002
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 9004
    :cond_41
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9005
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 8887
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 8898
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .line 8875
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 9034
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 9038
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 9040
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9041
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 9043
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9045
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getRecordsCount()I

    move-result v0

    if-lez v0, :cond_49

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 9047
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getRecordsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_49
    mul-int/lit8 v1, v1, 0x1d

    .line 9049
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9050
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 112
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 8964
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 8968
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9125
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9141
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9134
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 9135
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8975
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8976
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8978
    :cond_10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 8979
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_1c
    const/4 v0, 0x0

    .line 8981
    :goto_1d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 8982
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader;->records_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 8984
    :cond_34
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$1)
.class Lio/bidmachine/protobuf/sdk/Reader$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9939
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9945
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9939
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.AnonymousClass2 (io.bidmachine.protobuf.sdk.Reader$2)
.class synthetic Lio/bidmachine/protobuf/sdk/Reader$2;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 7059
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->values()[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->PUR_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Builder (io.bidmachine.protobuf.sdk.Reader$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ReaderOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            "Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private records_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation
.end field

.field private timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9165
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 9350
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9602
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9166
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 9171
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 9350
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9602
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9172
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 9147
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 9147
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;-><init>()V

    return-void
.end method

.method private ensureRecordsIsMutable()V
    .registers 3

    .line 9604
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 9605
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9606
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 9153
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            "Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9901
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 9902
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 9906
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9908
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9910
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9590
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9591
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 9594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9596
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9598
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 9176
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9177
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllRecords(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Reader$Builder;"
        }
    .end annotation

    .line 9780
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 9781
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9782
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9784
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9786
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(ILio/bidmachine/protobuf/sdk/Reader$Record$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9762
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 9763
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9764
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9767
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(ILio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9723
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 9725
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9727
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9728
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9731
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9744
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 9745
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9746
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9747
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9749
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecords(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9702
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 9704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9706
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9707
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9710
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRecordsBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 9872
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9873
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v1

    .line 9872
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object v0
.end method

.method public addRecordsBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 4

    .line 9884
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9885
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v1

    .line 9884
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9273
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3

    .line 9213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    .line 9214
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 9215
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 3

    .line 9222
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 9224
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader;->access$6802(Lio/bidmachine/protobuf/sdk/Reader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9225
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 9226
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader;->access$6902(Lio/bidmachine/protobuf/sdk/Reader;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_1e

    .line 9228
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader;->access$6902(Lio/bidmachine/protobuf/sdk/Reader;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 9230
    :goto_1e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3c

    .line 9231
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_36

    .line 9232
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9233
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    .line 9235
    :cond_36
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7002(Lio/bidmachine/protobuf/sdk/Reader;Ljava/util/List;)Ljava/util/List;

    goto :goto_43

    .line 9237
    :cond_3c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7002(Lio/bidmachine/protobuf/sdk/Reader;Ljava/util/List;)Ljava/util/List;

    .line 9239
    :goto_43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9182
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 9183
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 9186
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_13

    .line 9188
    :cond_f
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9189
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9191
    :goto_13
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_22

    .line 9192
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9193
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    return-object p0

    .line 9195
    :cond_22
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9256
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public clearName()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9421
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9261
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public clearRecords()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 9799
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9800
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    .line 9801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9803
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9543
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9544
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9547
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9548
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9245
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader;
    .registers 2

    .line 9208
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 9203
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 9360
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9361
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 9362
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 9364
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 9365
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 9368
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 9381
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 9383
    check-cast v0, Ljava/lang/String;

    .line 9384
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 9386
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 9389
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getRecords(I)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3

    .line 9649
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9650
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p1

    .line 9652
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p1
.end method

.method public getRecordsBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 9833
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public getRecordsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;",
            ">;"
        }
    .end annotation

    .line 9896
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsCount()I
    .registers 2

    .line 9635
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 9636
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9638
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRecordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation

    .line 9621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 9622
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9624
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;
    .registers 3

    .line 9844
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9845
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;

    return-object p1

    .line 9846
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;

    return-object p1
.end method

.method public getRecordsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9858
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 9859
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9861
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9469
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9470
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9472
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getTimestampBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 9562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9563
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 9573
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9574
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 9576
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 9577
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .line 9458
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

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

    .line 9159
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 9160
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

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

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

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

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

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

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

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9337
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->access$7300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 9343
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 9339
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 9340
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

    .line 9343
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 9345
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9277
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader;

    if-eqz v0, :cond_b

    .line 9278
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1

    .line 9280
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9286
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 9287
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 9288
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$6800(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9291
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 9292
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader;->getTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 9294
    :cond_27
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5a

    .line 9295
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 9296
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 9297
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9298
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    goto :goto_56

    .line 9300
    :cond_4a
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9301
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9303
    :goto_56
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_96

    .line 9306
    :cond_5a
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 9307
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 9308
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 9309
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 9310
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    .line 9311
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->bitField0_:I

    .line 9313
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->access$7100()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 9314
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->getRecordsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_8a
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_96

    .line 9316
    :cond_8d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7000(Lio/bidmachine/protobuf/sdk/Reader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 9320
    :cond_96
    :goto_96
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7200(Lio/bidmachine/protobuf/sdk/Reader;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 9321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9521
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9522
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 9524
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 9526
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9528
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9530
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9921
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public removeRecords(I)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9815
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 9816
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9820
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 9147
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9251
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9407
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9439
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader;->access$7400(Lcom/explorestack/protobuf/ByteString;)V

    .line 9441
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->name_:Ljava/lang/Object;

    .line 9442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRecords(ILio/bidmachine/protobuf/sdk/Reader$Record$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9685
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 9686
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9687
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9690
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRecords(ILio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9664
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->recordsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 9666
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9668
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->ensureRecordsIsMutable()V

    .line 9669
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->records_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9672
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 9147
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 9147
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 4

    .line 9267
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

.method public setTimestamp(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9504
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9505
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9508
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 3

    .line 9483
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9487
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Builder;->timestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 9488
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9490
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9147
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Builder;
    .registers 2

    .line 9915
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Configuration (io.bidmachine.protobuf.sdk.Reader$Configuration)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Configuration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x5

.field public static final UNIQUE_ONLY_FIELD_NUMBER:I = 0x4

.field public static final UPDATE_INTERVAL_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private name_:Lcom/explorestack/protobuf/StringValue;

.field private rules_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

.field private updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

.field private url_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2128
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    .line 2136
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 302
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 662
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->memoizedIsInitialized:B

    .line 303
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>()V

    .line 324
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_f9

    .line 332
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_b5

    const/16 v5, 0x12

    if-eq v3, v5, :cond_94

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_73

    const/16 v5, 0x22

    if-eq v3, v5, :cond_53

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_3b

    .line 399
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_30
    move v1, v4

    goto :goto_c

    :catchall_32
    move-exception p1

    goto/16 :goto_e5

    :catch_35
    move-exception p1

    goto/16 :goto_d6

    :catch_38
    move-exception p1

    goto/16 :goto_e0

    :cond_3b
    if-nez v2, :cond_45

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    move v2, v4

    .line 394
    :cond_45
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    .line 395
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 394
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 378
    :cond_53
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_5b

    .line 379
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v6

    .line 381
    :cond_5b
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v6, :cond_c

    .line 383
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 384
    invoke-virtual {v6}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_c

    .line 365
    :cond_73
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v3, :cond_7b

    .line 366
    invoke-virtual {v3}, Lcom/explorestack/protobuf/UInt32Value;->toBuilder()Lcom/explorestack/protobuf/UInt32Value$Builder;

    move-result-object v6

    .line 368
    :cond_7b
    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/UInt32Value;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v6, :cond_c

    .line 370
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/UInt32Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value$Builder;

    .line 371
    invoke-virtual {v6}, Lcom/explorestack/protobuf/UInt32Value$Builder;->buildPartial()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    goto/16 :goto_c

    .line 352
    :cond_94
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_9c

    .line 353
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 355
    :cond_9c
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 357
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 358
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 339
    :cond_b5
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_bd

    .line 340
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v6

    .line 342
    :cond_bd
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v6, :cond_c

    .line 344
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 345
    invoke-virtual {v6}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;
    :try_end_d4
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_d4} :catch_38
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_d4} :catch_35
    .catchall {:try_start_e .. :try_end_d4} :catchall_32

    goto/16 :goto_c

    .line 410
    :goto_d6
    :try_start_d6
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 411
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 408
    :goto_e0
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_e5
    .catchall {:try_start_d6 .. :try_end_e5} :catchall_32

    :goto_e5
    if-eqz v2, :cond_ef

    .line 414
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    .line 416
    :cond_ef
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 418
    throw p1

    :cond_f9
    if-eqz v2, :cond_103

    .line 414
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    .line 416
    :cond_103
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 300
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 662
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 293
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1100()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 293
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 293
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 293
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 293
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value;
    .registers 2

    .line 293
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 293
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;
    .registers 1

    .line 293
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 293
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$900()Z
    .registers 1

    .line 293
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 1

    .line 2132
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 422
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 1

    .line 866
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 869
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 840
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 847
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 807
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 813
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 853
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 860
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 828
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 835
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 796
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 802
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 817
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 823
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
            ">;"
        }
    .end annotation

    .line 2147
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 730
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    if-nez v1, :cond_d

    .line 731
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 733
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    .line 735
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 736
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasName()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 737
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 738
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 740
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUrl()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUrl()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 741
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 742
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 743
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 745
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUpdateInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUpdateInterval()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 746
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUpdateInterval()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 747
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v1

    .line 748
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 750
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 751
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 753
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 755
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesList()Ljava/util/List;

    move-result-object v1

    .line 756
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    return v3

    .line 757
    :cond_9f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    return v3

    :cond_aa
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2

    .line 2157
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    return-object v0
.end method

.method public getName()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 459
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getNameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 471
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
            ">;"
        }
    .end annotation

    .line 2152
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRules(I)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3

    .line 646
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p1
.end method

.method public getRulesCount()I
    .registers 2

    .line 634
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
    .registers 3

    .line 659
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 696
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 700
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 702
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 704
    :goto_16
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    .line 706
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 708
    :cond_24
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v2, :cond_32

    const/4 v2, 0x3

    .line 710
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 712
    :cond_32
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    .line 714
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 716
    :cond_40
    :goto_40
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 717
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    .line 718
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 720
    :cond_59
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 721
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 582
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUniqueOnlyOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;
    .registers 2

    .line 541
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->getDefaultInstance()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUpdateIntervalOrBuilder()Lcom/explorestack/protobuf/UInt32ValueOrBuilder;
    .registers 2

    .line 553
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 500
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUrlOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 512
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .line 446
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUniqueOnly()Z
    .registers 2

    .line 569
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdateInterval()Z
    .registers 2

    .line 528
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .line 487
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 763
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 767
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 768
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasName()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 770
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 772
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 774
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 776
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUpdateInterval()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 778
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 780
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 782
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 784
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesCount()I

    move-result v0

    if-lez v0, :cond_79

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 786
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_79
    mul-int/lit8 v1, v1, 0x1d

    .line 788
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 789
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 428
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 665
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 669
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 864
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 880
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 310
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 873
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 874
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->name_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    .line 677
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 679
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 680
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 682
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 683
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 685
    :cond_24
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    .line 686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_30
    const/4 v0, 0x0

    .line 688
    :goto_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 689
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->rules_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 691
    :cond_48
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Configuration.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Configuration$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Configuration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2136
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2142
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2136
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Configuration.Builder (io.bidmachine.protobuf.sdk.Reader$Configuration$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Lcom/explorestack/protobuf/StringValue;

.field private rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

.field private updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/UInt32Value;",
            "Lcom/explorestack/protobuf/UInt32Value$Builder;",
            "Lcom/explorestack/protobuf/UInt32ValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

.field private urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 904
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1781
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 905
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 910
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1781
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 911
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 886
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 886
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;-><init>()V

    return-void
.end method

.method private ensureRulesIsMutable()V
    .registers 3

    .line 1783
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 1785
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 892
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getNameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1278
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1283
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1285
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 2099
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2103
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2105
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 2107
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getUniqueOnlyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1769
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1770
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1772
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1775
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1777
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUpdateIntervalFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/UInt32Value;",
            "Lcom/explorestack/protobuf/UInt32Value$Builder;",
            "Lcom/explorestack/protobuf/UInt32ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1606
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1608
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v1

    .line 1609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1611
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1613
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUrlFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1442
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1444
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1445
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1447
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1449
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 915
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 916
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;"
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1970
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1971
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1975
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1042
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public addRules(ILio/bidmachine/protobuf/sdk/Reader$Rule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1950
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1951
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1952
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1955
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(ILio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1909
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1911
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1913
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1914
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1917
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1931
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1932
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1933
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1936
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRules(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1887
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1892
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1895
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addRulesBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 2067
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2068
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    .line 2067
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object v0
.end method

.method public addRulesBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 4

    .line 2080
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2081
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    .line 2080
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3

    .line 968
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 970
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 3

    .line 977
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 979
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 980
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$402(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 982
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$402(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 984
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 985
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$502(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2c

    .line 987
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$502(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 989
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 990
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$602(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value;

    goto :goto_3f

    .line 992
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$602(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value;

    .line 994
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 995
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$702(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_52

    .line 997
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$702(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 999
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_70

    .line 1000
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6a

    .line 1001
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 1002
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    .line 1004
    :cond_6a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$802(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Ljava/util/List;)Ljava/util/List;

    goto :goto_77

    .line 1006
    :cond_70
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$802(Lio/bidmachine/protobuf/sdk/Reader$Configuration;Ljava/util/List;)Ljava/util/List;

    .line 1008
    :goto_77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 921
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 922
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 923
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 925
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 926
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 928
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 929
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1a

    .line 931
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 932
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 934
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 935
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    goto :goto_25

    .line 937
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 938
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 940
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 941
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_30

    .line 943
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 944
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 946
    :goto_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3f

    .line 947
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 948
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    return-object p0

    .line 950
    :cond_3f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 1025
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public clearName()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1227
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1228
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1231
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1232
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 1030
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public clearRules()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 1988
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1989
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 1990
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    .line 1991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1993
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearUniqueOnly()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1719
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1720
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1723
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1724
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUpdateInterval()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1555
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1556
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1559
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1560
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUrl()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1391
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1392
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1393
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1395
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1396
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 1014
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 886
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    .registers 2

    .line 963
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 958
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1149
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1150
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1152
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getNameBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 1247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1248
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getNameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1259
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1260
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 1262
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 1263
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRules(I)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3

    .line 1831
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1832
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p1

    .line 1834
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p1
.end method

.method public getRulesBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 2025
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public getRulesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
            ">;"
        }
    .end annotation

    .line 2093
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .registers 2

    .line 1816
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1819
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation

    .line 1801
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1802
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1804
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
    .registers 3

    .line 2037
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2038
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;

    return-object p1

    .line 2039
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2053
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2055
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1641
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1642
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1644
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getUniqueOnlyBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1740
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUniqueOnlyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getUniqueOnlyOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1751
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1752
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 1754
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 1755
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;
    .registers 2

    .line 1477
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1478
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->getDefaultInstance()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1480
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UInt32Value;

    return-object v0
.end method

.method public getUpdateIntervalBuilder()Lcom/explorestack/protobuf/UInt32Value$Builder;
    .registers 2

    .line 1575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1576
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUpdateIntervalFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UInt32Value$Builder;

    return-object v0
.end method

.method public getUpdateIntervalOrBuilder()Lcom/explorestack/protobuf/UInt32ValueOrBuilder;
    .registers 2

    .line 1587
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1588
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UInt32ValueOrBuilder;

    return-object v0

    .line 1590
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-nez v0, :cond_13

    .line 1591
    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->getDefaultInstance()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUrl()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1313
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1314
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1316
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUrlBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 1411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1412
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getUrlFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUrlOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1423
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1424
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 1426
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 1427
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .line 1137
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUniqueOnly()Z
    .registers 2

    .line 1629
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasUpdateInterval()Z
    .registers 2

    .line 1465
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

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

.method public hasUrl()Z
    .registers 2

    .line 1301
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

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

    .line 898
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 899
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

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

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

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

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

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

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

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1111
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1117
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1113
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Configuration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1114
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

    .line 1117
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1119
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1046
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    if-eqz v0, :cond_b

    .line 1047
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1

    .line 1049
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1055
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1056
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1057
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeName(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1059
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1060
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUrl(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1062
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUpdateInterval()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1063
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUpdateInterval(Lcom/explorestack/protobuf/UInt32Value;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1065
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1066
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUniqueOnly(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1068
    :cond_3b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6e

    .line 1069
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1070
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1071
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 1072
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    goto :goto_6a

    .line 1074
    :cond_5e
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1075
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1077
    :goto_6a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_aa

    .line 1080
    :cond_6e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1081
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1082
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1083
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1084
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    .line 1085
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->bitField0_:I

    .line 1087
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1088
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->getRulesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9e
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_aa

    .line 1090
    :cond_a1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$800(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1094
    :cond_aa
    :goto_aa
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->access$1000(Lio/bidmachine/protobuf/sdk/Reader$Configuration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    .line 1095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeName(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1205
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 1207
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 1209
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1211
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1213
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUniqueOnly(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1696
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1697
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 1699
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 1701
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1703
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1705
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 2118
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public mergeUpdateInterval(Lcom/explorestack/protobuf/UInt32Value;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1532
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1533
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    if-eqz v0, :cond_17

    .line 1535
    invoke-static {v0}, Lcom/explorestack/protobuf/UInt32Value;->newBuilder(Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UInt32Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/UInt32Value;)Lcom/explorestack/protobuf/UInt32Value$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value$Builder;->buildPartial()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    goto :goto_19

    .line 1537
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1539
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1541
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUrl(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1368
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1369
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 1371
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 1373
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1375
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1377
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public removeRules(I)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 2006
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2007
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 2008
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2011
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 886
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1020
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public setName(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1186
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1187
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1190
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setName(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1164
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->nameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->name_:Lcom/explorestack/protobuf/StringValue;

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1171
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 886
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 886
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1036
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public setRules(ILio/bidmachine/protobuf/sdk/Reader$Rule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1869
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1870
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1874
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRules(ILio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 4

    .line 1847
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rulesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1849
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1851
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->ensureRulesIsMutable()V

    .line 1852
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->rules_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1855
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setUniqueOnly(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1678
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1679
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1680
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1682
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUniqueOnly(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1656
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnlyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->uniqueOnly_:Lcom/explorestack/protobuf/BoolValue;

    .line 1661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1663
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 2

    .line 2112
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;

    return-object p1
.end method

.method public setUpdateInterval(Lcom/explorestack/protobuf/UInt32Value$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1514
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value$Builder;->build()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1518
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value$Builder;->build()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUpdateInterval(Lcom/explorestack/protobuf/UInt32Value;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1492
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateIntervalBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1496
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->updateInterval_:Lcom/explorestack/protobuf/UInt32Value;

    .line 1497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1499
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUrl(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1350
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1351
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1354
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUrl(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;
    .registers 3

    .line 1328
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->urlBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1332
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Configuration$Builder;->url_:Lcom/explorestack/protobuf/StringValue;

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1335
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder (io.bidmachine.protobuf.sdk.Reader$ConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$ConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getName()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getNameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getRules(I)Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRulesOrBuilder(I)Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
.end method

.method public abstract getRulesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getUniqueOnlyOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;
.end method

.method public abstract getUpdateIntervalOrBuilder()Lcom/explorestack/protobuf/UInt32ValueOrBuilder;
.end method

.method public abstract getUrl()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getUrlOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasUniqueOnly()Z
.end method

.method public abstract hasUpdateInterval()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Record (io.bidmachine.protobuf.sdk.Reader$Record)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Record;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_DATA_FIELD_NUMBER:I = 0x2

.field public static final RULE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private error_:Lio/bidmachine/protobuf/sdk/Error;

.field private memoizedIsInitialized:B

.field private rawData_:Lcom/explorestack/protobuf/BytesValue;

.field private rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8783
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    .line 8791
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Record$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 7695
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7916
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7714
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>()V

    .line 7716
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7719
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_aa

    .line 7723
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

    .line 7768
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

    .line 7756
    :cond_30
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v2, :cond_38

    .line 7757
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Error;->toBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v5

    .line 7759
    :cond_38
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Error;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v5, :cond_b

    .line 7761
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 7762
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Error$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_b

    .line 7743
    :cond_50
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v2, :cond_58

    .line 7744
    invoke-virtual {v2}, Lcom/explorestack/protobuf/BytesValue;->toBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object v5

    .line 7746
    :cond_58
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/BytesValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v5, :cond_b

    .line 7748
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/BytesValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue$Builder;

    .line 7749
    invoke-virtual {v5}, Lcom/explorestack/protobuf/BytesValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    goto :goto_b

    .line 7730
    :cond_70
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v2, :cond_78

    .line 7731
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v5

    .line 7733
    :cond_78
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v5, :cond_b

    .line 7735
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 7736
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;
    :try_end_8f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_8f} :catch_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8f} :catch_2c
    .catchall {:try_start_d .. :try_end_8f} :catchall_29

    goto/16 :goto_b

    .line 7779
    :goto_91
    :try_start_91
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7780
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 7777
    :goto_9b
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_29

    .line 7782
    :goto_a0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 7784
    throw p1

    .line 7782
    :cond_aa
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7686
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 7693
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7916
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 7686
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$5600()Z
    .registers 1

    .line 7686
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5802(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2

    .line 7686
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p1
.end method

.method public static synthetic access$5902(Lio/bidmachine/protobuf/sdk/Reader$Record;Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue;
    .registers 2

    .line 7686
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    return-object p1
.end method

.method public static synthetic access$6002(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 7686
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    return-object p1
.end method

.method public static synthetic access$6100(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 7686
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$6200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 7686
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 1

    .line 8787
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7788
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 1

    .line 8091
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8094
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8064
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8065
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8071
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8072
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8032
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8038
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8077
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8078
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8084
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8085
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8052
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8053
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8059
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8060
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8021
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8027
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8042
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8048
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation

    .line 8802
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 7970
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    if-nez v1, :cond_d

    .line 7971
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7973
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    .line 7975
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRule()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRule()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 7976
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRule()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 7977
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    .line 7978
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 7980
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRawData()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRawData()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 7981
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRawData()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 7982
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v1

    .line 7983
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BytesValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 7985
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasError()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasError()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 7986
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasError()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 7987
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v1

    .line 7988
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Error;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 7990
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

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2

    .line 8812
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    return-object v0
.end method

.method public getError()Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 7901
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
    .registers 2

    .line 7913
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Record;",
            ">;"
        }
    .end annotation

    .line 8807
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRawData()Lcom/explorestack/protobuf/BytesValue;
    .registers 2

    .line 7861
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->getDefaultInstance()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRawDataOrBuilder()Lcom/explorestack/protobuf/BytesValueOrBuilder;
    .registers 2

    .line 7872
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2

    .line 7823
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
    .registers 2

    .line 7834
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 7944
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 7948
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 7950
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 7952
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 7954
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7956
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 7958
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7960
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7961
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 7708
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .line 7888
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRawData()Z
    .registers 2

    .line 7849
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRule()Z
    .registers 2

    .line 7811
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 7996
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 8000
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 8001
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRule()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 8003
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8005
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRawData()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 8007
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BytesValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8009
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasError()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 8011
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Error;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 8013
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8014
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 7794
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 7795
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 7919
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 7923
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7686
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8089
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 4

    .line 8105
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 7702
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 7686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8098
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Record;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Record;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 8099
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

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

    .line 7930
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 7931
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7933
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 7934
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7936
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 7937
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7939
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Record.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Record$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Record$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Record;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8791
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8797
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8791
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Record.Builder (io.bidmachine.protobuf.sdk.Reader$Record$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;"
    }
.end annotation


# instance fields
.field private errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Error;",
            "Lio/bidmachine/protobuf/sdk/Error$Builder;",
            "Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private error_:Lio/bidmachine/protobuf/sdk/Error;

.field private rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BytesValue;",
            "Lcom/explorestack/protobuf/BytesValue$Builder;",
            "Lcom/explorestack/protobuf/BytesValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rawData_:Lcom/explorestack/protobuf/BytesValue;

.field private ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8129
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 8130
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 8135
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8136
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 8111
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 8111
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 8117
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getErrorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Error;",
            "Lio/bidmachine/protobuf/sdk/Error$Builder;",
            "Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8755
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8757
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v1

    .line 8758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8760
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8762
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRawDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BytesValue;",
            "Lcom/explorestack/protobuf/BytesValue$Builder;",
            "Lcom/explorestack/protobuf/BytesValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8590
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8591
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v1

    .line 8594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8596
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8598
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8435
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8436
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v1

    .line 8439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8441
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8443
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 8140
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$5600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8239
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3

    .line 8180
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    .line 8181
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Record;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 8182
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 3

    .line 8189
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 8190
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 8191
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$5802(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule;

    goto :goto_19

    .line 8193
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$5802(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8195
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 8196
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$5902(Lio/bidmachine/protobuf/sdk/Reader$Record;Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue;

    goto :goto_2c

    .line 8198
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BytesValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$5902(Lio/bidmachine/protobuf/sdk/Reader$Record;Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue;

    .line 8200
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 8201
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$6002(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_3f

    .line 8203
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Error;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$6002(Lio/bidmachine/protobuf/sdk/Reader$Record;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;

    .line 8205
    :goto_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8145
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 8146
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8147
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    goto :goto_f

    .line 8149
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8150
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8152
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 8153
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    goto :goto_1a

    .line 8155
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8156
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8158
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 8159
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    return-object p0

    .line 8161
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8162
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearError()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8704
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8705
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8708
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8709
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8222
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8227
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public clearRawData()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8543
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8544
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8547
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8548
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearRule()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8388
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8389
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8392
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8393
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8211
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 8111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Record;
    .registers 2

    .line 8175
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 8170
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getError()Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 8626
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8627
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8629
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Error;

    return-object v0
.end method

.method public getErrorBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;
    .registers 2

    .line 8724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8725
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getErrorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Error$Builder;

    return-object v0
.end method

.method public getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
    .registers 2

    .line 8736
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8737
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;

    return-object v0

    .line 8739
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_13

    .line 8740
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRawData()Lcom/explorestack/protobuf/BytesValue;
    .registers 2

    .line 8469
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8470
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->getDefaultInstance()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8472
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BytesValue;

    return-object v0
.end method

.method public getRawDataBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;
    .registers 2

    .line 8562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8563
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getRawDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public getRawDataOrBuilder()Lcom/explorestack/protobuf/BytesValueOrBuilder;
    .registers 2

    .line 8573
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8574
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BytesValueOrBuilder;

    return-object v0

    .line 8576
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-nez v0, :cond_13

    .line 8577
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->getDefaultInstance()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2

    .line 8314
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8315
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8317
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object v0
.end method

.method public getRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 8407
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8408
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->getRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object v0
.end method

.method public getRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
    .registers 2

    .line 8418
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8419
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;

    return-object v0

    .line 8421
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-nez v0, :cond_13

    .line 8422
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .line 8614
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

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

.method public hasRawData()Z
    .registers 2

    .line 8458
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

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

.method public hasRule()Z
    .registers 2

    .line 8303
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

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

    .line 8123
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8124
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

.method public mergeError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8681
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8682
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_17

    .line 8684
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_19

    .line 8686
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8688
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8690
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

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

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

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

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

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

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

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8279
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$6200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 8285
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 8281
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Record;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 8282
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

    .line 8285
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8287
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8243
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    if-eqz v0, :cond_b

    .line 8244
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1

    .line 8246
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8252
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 8253
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRule()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8254
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeRule(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8256
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasRawData()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8257
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getRawData()Lcom/explorestack/protobuf/BytesValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeRawData(Lcom/explorestack/protobuf/BytesValue;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8259
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 8260
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8262
    :cond_2e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Record;->access$6100(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 8263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRawData(Lcom/explorestack/protobuf/BytesValue;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8521
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8522
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    if-eqz v0, :cond_17

    .line 8524
    invoke-static {v0}, Lcom/explorestack/protobuf/BytesValue;->newBuilder(Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BytesValue;)Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    goto :goto_19

    .line 8526
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8528
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8530
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeRule(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8366
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8367
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_17

    .line 8369
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    goto :goto_19

    .line 8371
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8373
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8375
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8773
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public setError(Lio/bidmachine/protobuf/sdk/Error$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8663
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8664
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8667
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8641
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8645
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 8646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8648
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 8111
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8217
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public setRawData(Lcom/explorestack/protobuf/BytesValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8504
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8505
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8508
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRawData(Lcom/explorestack/protobuf/BytesValue;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8483
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8487
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rawData_:Lcom/explorestack/protobuf/BytesValue;

    .line 8488
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8490
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 8111
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 8111
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 4

    .line 8233
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

.method public setRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8349
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8350
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8353
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRule(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 3

    .line 8328
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->ruleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8332
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->rule_:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 8333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8335
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 8111
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;
    .registers 2

    .line 8767
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder (io.bidmachine.protobuf.sdk.Reader$RecordOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$RecordOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getError()Lio/bidmachine/protobuf/sdk/Error;
.end method

.method public abstract getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
.end method

.method public abstract getRawData()Lcom/explorestack/protobuf/BytesValue;
.end method

.method public abstract getRawDataOrBuilder()Lcom/explorestack/protobuf/BytesValueOrBuilder;
.end method

.method public abstract getRule()Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end method

.method public abstract getRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasRawData()Z
.end method

.method public abstract hasRule()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule (io.bidmachine.protobuf.sdk.Reader$Rule)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;,
        Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

.field public static final GENERAL_RULE_FIELD_NUMBER:I = 0x1

.field public static final IOS_LOG_RULE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUR_RULE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private ruleOneofCase_:I

.field private ruleOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7561
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 7569
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2225
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 6589
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v0, -0x1

    .line 6725
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2244
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>()V

    .line 2246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2249
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_c0

    .line 2253
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_80

    const/16 v4, 0x12

    if-eq v2, v4, :cond_59

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_32

    .line 2301
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_27
    move v1, v3

    goto :goto_b

    :catchall_29
    move-exception p1

    goto/16 :goto_b6

    :catch_2c
    move-exception p1

    goto/16 :goto_a7

    :catch_2f
    move-exception p1

    goto/16 :goto_b1

    .line 2288
    :cond_32
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3f

    .line 2289
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v5

    .line 2292
    :cond_3f
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_56

    .line 2294
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 2295
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    .line 2297
    :cond_56
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    goto :goto_b

    .line 2274
    :cond_59
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_66

    .line 2275
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v5

    .line 2278
    :cond_66
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_7d

    .line 2280
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 2281
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    .line 2283
    :cond_7d
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    goto :goto_b

    .line 2260
    :cond_80
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    if-ne v2, v3, :cond_8c

    .line 2261
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v5

    .line 2264
    :cond_8c
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_a3

    .line 2266
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2267
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    .line 2269
    :cond_a3
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I
    :try_end_a5
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_a5} :catch_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_a5} :catch_2c
    .catchall {:try_start_d .. :try_end_a5} :catchall_29

    goto/16 :goto_b

    .line 2312
    :goto_a7
    :try_start_a7
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2313
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2310
    :goto_b1
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_b6
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_29

    .line 2315
    :goto_b6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2317
    throw p1

    .line 2315
    :cond_c0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2216
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2223
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, 0x0

    .line 6589
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 p1, -0x1

    .line 6725
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 2216
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4700()Z
    .registers 1

    .line 2216
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2216
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5002(Lio/bidmachine/protobuf/sdk/Reader$Rule;I)I
    .registers 2

    .line 2216
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    return p1
.end method

.method public static synthetic access$5100(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2216
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2216
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 1

    .line 7565
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2321
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 1

    .line 6906
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 6909
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6879
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6880
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6886
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6887
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6847
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6853
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6892
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6893
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6899
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6900
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6867
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6868
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6874
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6875
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6836
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6842
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6857
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6863
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation

    .line 7580
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 6779
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-nez v1, :cond_d

    .line 6780
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6782
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 6784
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 6785
    :cond_1f
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    if-eq v1, v0, :cond_48

    const/4 v3, 0x2

    if-eq v1, v3, :cond_39

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2a

    goto :goto_57

    .line 6795
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v1

    .line 6796
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    .line 6791
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v1

    .line 6792
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    .line 6787
    :cond_48
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v1

    .line 6788
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    .line 6801
    :cond_57
    :goto_57
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    return v2

    :cond_62
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2

    .line 7590
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    return-object v0
.end method

.method public getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3

    .line 6647
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 6648
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0

    .line 6650
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
    .registers 3

    .line 6657
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 6658
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0

    .line 6660
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3

    .line 6678
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 6679
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0

    .line 6681
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getIosLogRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;
    .registers 3

    .line 6688
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 6689
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0

    .line 6691
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;"
        }
    .end annotation

    .line 7585
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3

    .line 6709
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 6710
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0

    .line 6712
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getPurRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;
    .registers 3

    .line 6719
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 6720
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0

    .line 6722
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 2

    .line 6628
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 6753
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6757
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 6758
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 6759
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6761
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 6762
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 6763
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6765
    :cond_23
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_31

    .line 6766
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    .line 6767
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6769
    :cond_31
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6770
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2238
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasGeneralRule()Z
    .registers 3

    .line 6639
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIosLogRule()Z
    .registers 3

    .line 6670
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasPurRule()Z
    .registers 3

    .line 6701
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 6807
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 6811
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 6812
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c

    goto :goto_47

    :cond_1c
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 6823
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hashCode()I

    move-result v0

    :goto_29
    add-int/2addr v1, v0

    goto :goto_47

    :cond_2b
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 6819
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hashCode()I

    move-result v0

    goto :goto_29

    :cond_39
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 6815
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hashCode()I

    move-result v0

    goto :goto_29

    :goto_47
    mul-int/lit8 v1, v1, 0x1d

    .line 6828
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6829
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2327
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 2328
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 6728
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 6732
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 6904
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 4

    .line 6920
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2232
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 6913
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 6914
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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

    .line 6739
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 6740
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 6742
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 6743
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 6745
    :cond_18
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 6746
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 6748
    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Rule$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Rule$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7569
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7575
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7569
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.Builder (io.bidmachine.protobuf.sdk.Reader$Rule$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;"
    }
.end annotation


# instance fields
.field private generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ruleOneofCase_:I

.field private ruleOneof_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6944
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 7104
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 6945
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 6950
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7104
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 6951
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 6926
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 6926
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6932
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getGeneralRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7245
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 7246
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 7247
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7249
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 7252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 7253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7254
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7256
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7258
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getIosLogRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7386
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_25

    .line 7387
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 7388
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7390
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 7393
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 7394
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7395
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7397
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7399
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPurRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7527
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_25

    .line 7528
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-eq v0, v1, :cond_f

    .line 7529
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7531
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    .line 7534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 7535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7536
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7538
    :cond_25
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7540
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 6955
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7045
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 3

    .line 6979
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    .line 6980
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 6981
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 4

    .line 6988
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 6989
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 6990
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 6991
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 6993
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6996
    :cond_1c
    :goto_1c
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 6997
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2b

    .line 6998
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 7000
    :cond_2b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7003
    :cond_32
    :goto_32
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_48

    .line 7004
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_41

    .line 7005
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 7007
    :cond_41
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4902(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7010
    :cond_48
    :goto_48
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$5002(Lio/bidmachine/protobuf/sdk/Reader$Rule;I)I

    .line 7011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 6960
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6961
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v0, 0x0

    .line 6962
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 7028
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public clearGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 6

    .line 7204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    .line 7205
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 7206
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7207
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 7211
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 7212
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7213
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7215
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 6

    .line 7345
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    .line 7346
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 7347
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7348
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 7352
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 7353
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7354
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7356
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 7033
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public clearPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 6

    .line 7486
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_13

    .line 7487
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v3, :cond_12

    .line 7488
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7489
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 7493
    :cond_13
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v4, v3, :cond_1b

    .line 7494
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7495
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7497
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearRuleOneof()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7113
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v0, 0x0

    .line 7114
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 7017
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 6926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .registers 2

    .line 6974
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 6969
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 4

    .line 7136
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 7137
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 7138
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0

    .line 7140
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0

    .line 7142
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 7143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0

    .line 7145
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 7223
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getGeneralRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object v0
.end method

.method public getGeneralRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
    .registers 4

    .line 7230
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 7231
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 7234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0

    .line 7236
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 4

    .line 7277
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_13

    .line 7278
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 7279
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0

    .line 7281
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0

    .line 7283
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 7284
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0

    .line 7286
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getIosLogRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 7364
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getIosLogRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object v0
.end method

.method public getIosLogRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;
    .registers 4

    .line 7371
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 7372
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 7375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0

    .line 7377
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 4

    .line 7418
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_13

    .line 7419
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_e

    .line 7420
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0

    .line 7422
    :cond_e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0

    .line 7424
    :cond_13
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_1e

    .line 7425
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0

    .line 7427
    :cond_1e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getPurRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 7505
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getPurRuleFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object v0
.end method

.method public getPurRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;
    .registers 4

    .line 7512
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 7513
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 7516
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0

    .line 7518
    :cond_17
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 2

    .line 7108
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public hasGeneralRule()Z
    .registers 3

    .line 7128
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIosLogRule()Z
    .registers 3

    .line 7269
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasPurRule()Z
    .registers 3

    .line 7410
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 6938
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 6939
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

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7093
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$5200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 7099
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 7095
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Rule;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 7096
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

    .line 7099
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 7101
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7049
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_b

    .line 7050
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1

    .line 7052
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 4

    .line 7058
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 7059
    :cond_7
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    goto :goto_34

    .line 7069
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergePurRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    goto :goto_34

    .line 7065
    :cond_25
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    goto :goto_34

    .line 7061
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 7076
    :goto_34
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$5100(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 7077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 5

    .line 7182
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 7183
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7184
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 7185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    .line 7186
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 7188
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7190
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 7192
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 7193
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7195
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7197
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public mergeIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 5

    .line 7323
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    .line 7324
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7325
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 7326
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    .line 7327
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 7329
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7331
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 7333
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 7334
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7336
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7338
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public mergePurRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 5

    .line 7464
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_2a

    .line 7465
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7466
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 7467
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    .line 7468
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    goto :goto_26

    .line 7470
    :cond_24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7472
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 7474
    :cond_2a
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    if-ne v2, v1, :cond_31

    .line 7475
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7477
    :cond_31
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7479
    :goto_36
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 7551
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 6926
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7023
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public setGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7169
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7170
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 7173
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x1

    .line 7175
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7152
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7156
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 7159
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x1

    .line 7161
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7310
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7311
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 7314
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x2

    .line 7316
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7293
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7297
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 7300
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x2

    .line 7302
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setPurRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7451
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 7455
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x3

    .line 7457
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setPurRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 3

    .line 7434
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->purRuleBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7438
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 7439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 7441
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x3

    .line 7443
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 6926
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 6926
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 4

    .line 7039
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 6926
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 2

    .line 7545
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule (io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field public static final TAG_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private path_:Lcom/explorestack/protobuf/StringValue;

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3272
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 3280
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2408
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2581
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2427
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>()V

    .line 2429
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2432
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_84

    .line 2436
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

    .line 2468
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

    .line 2456
    :cond_2b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_33

    .line 2457
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 2459
    :cond_33
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 2461
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 2462
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b

    .line 2443
    :cond_4b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_53

    .line 2444
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 2446
    :cond_53
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 2448
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 2449
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;
    :try_end_6a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_6a} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6a} :catch_27
    .catchall {:try_start_d .. :try_end_6a} :catchall_25

    goto :goto_b

    .line 2479
    :goto_6b
    :try_start_6b
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2480
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2477
    :goto_75
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_25

    .line 2482
    :goto_7a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2484
    throw p1

    .line 2482
    :cond_84
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2399
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2406
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2581
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 2399
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .registers 1

    .line 2399
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2399
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2399
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2399
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2399
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 1

    .line 3276
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2488
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 1

    .line 2740
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 2743
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2713
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2714
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2720
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2721
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2681
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2687
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2726
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2727
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2733
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2734
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2701
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2702
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2708
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2709
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2670
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2676
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2691
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2697
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            ">;"
        }
    .end annotation

    .line 3291
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2628
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    if-nez v1, :cond_d

    .line 2629
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2631
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 2633
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasTag()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasTag()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 2634
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2636
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 2638
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasPath()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasPath()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 2639
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasPath()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2640
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2641
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 2643
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2

    .line 3301
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            ">;"
        }
    .end annotation

    .line 3296
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2566
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2578
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2606
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2610
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 2612
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2614
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 2616
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2618
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2619
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2525
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2537
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2421
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasPath()Z
    .registers 2

    .line 2553
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTag()Z
    .registers 2

    .line 2512
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2649
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2653
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2654
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2656
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2658
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2660
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3a
    mul-int/lit8 v1, v1, 0x1d

    .line 2662
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2663
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2494
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2495
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2584
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2588
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2399
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 2738
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 4

    .line 2754
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2415
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2747
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2748
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

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

    .line 2595
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2598
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 2599
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2601
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3280
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3286
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3280
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.Builder (io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;"
    }
.end annotation


# instance fields
.field private pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private path_:Lcom/explorestack/protobuf/StringValue;

.field private tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2778
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2779
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2784
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2785
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 2760
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 2760
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2766
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getPathFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3244
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3246
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3249
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3251
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3079
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3080
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3082
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3085
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 3087
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2789
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2877
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3

    .line 2823
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    .line 2824
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2825
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 3

    .line 2832
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 2833
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 2834
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1702(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 2836
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1702(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 2838
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 2839
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1802(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2c

    .line 2841
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1802(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 2843
    :goto_2c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2794
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2795
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2796
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 2798
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 2799
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2801
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 2802
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    return-object p0

    .line 2804
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 2805
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 2860
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 2865
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public clearPath()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3193
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3194
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3197
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3198
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTag()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3029
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3030
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 3031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3033
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 3034
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 2849
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .registers 2

    .line 2818
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2813
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPath()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3115
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3116
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3118
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getPathBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 3213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3214
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getPathFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3225
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3226
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 3228
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 3229
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2951
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2952
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2954
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTagBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 3049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3050
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3061
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3062
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 3064
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 3065
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasPath()Z
    .registers 2

    .line 3103
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTag()Z
    .registers 2

    .line 2939
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

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

    .line 2772
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2773
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

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

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

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

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

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

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

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2914
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$2000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2920
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2916
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2917
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

    .line 2920
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2922
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2881
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    if-eqz v0, :cond_b

    .line 2882
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1

    .line 2884
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2890
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2891
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2892
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2894
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2895
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergePath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2897
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->access$1900(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 2898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3170
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3171
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 3173
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 3175
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3177
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3179
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3006
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3007
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 3009
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 3011
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 3013
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3015
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 3262
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2760
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2855
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public setPath(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3152
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3156
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 3130
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3134
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3137
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2760
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2760
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 4

    .line 2871
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2988
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2989
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 2990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2992
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 3

    .line 2966
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2968
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2970
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 2971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2973
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2760
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .registers 2

    .line 3256
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder (io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRuleOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeneralRuleOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getPath()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getTag()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract hasPath()Z
.end method

.method public abstract hasTag()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule (io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IOSLogRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

.field public static final LEVELS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCES_FIELD_NUMBER:I = 0x3

.field public static final TAG_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private levels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private sources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4995
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 5003
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3450
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3726
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->memoizedIsInitialized:B

    .line 3451
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    .line 3452
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3471
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>()V

    .line 3473
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3477
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_b8

    .line 3481
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0xa

    if-eq v3, v5, :cond_65

    const/16 v5, 0x12

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 3518
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_96

    :catch_2b
    move-exception p1

    goto :goto_87

    :catch_2d
    move-exception p1

    goto :goto_91

    :cond_2f
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3c

    .line 3510
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 3513
    :cond_3c
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    .line 3514
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 3513
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4a
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_57

    .line 3501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 3504
    :cond_57
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    .line 3505
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 3504
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3488
    :cond_65
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_6e

    .line 3489
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v3

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    .line 3491
    :goto_6f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/StringValue;

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_c

    .line 3493
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 3494
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;
    :try_end_86
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_86} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_86} :catch_2b
    .catchall {:try_start_e .. :try_end_86} :catchall_29

    goto :goto_c

    .line 3529
    :goto_87
    :try_start_87
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3530
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3527
    :goto_91
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_29

    :goto_96
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a2

    .line 3533
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    :cond_a2
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_ae

    .line 3536
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    .line 3538
    :cond_ae
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 3540
    throw p1

    :cond_b8
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c4

    .line 3533
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    :cond_c4
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d0

    .line 3536
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    .line 3538
    :cond_d0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3441
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3448
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3726
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 3441
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2400()Z
    .registers 1

    .line 3441
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2602(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3441
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;
    .registers 1

    .line 3441
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 3441
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;
    .registers 1

    .line 3441
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2802(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 3441
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2900()Z
    .registers 1

    .line 3441
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3000()Z
    .registers 1

    .line 3441
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3100(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 3441
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 3441
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 1

    .line 4999
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3544
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 1

    .line 3895
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 3898
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3868
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3869
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3875
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3876
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3836
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3842
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3881
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3882
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3888
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3889
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3856
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3857
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3863
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3864
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3825
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3831
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3846
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3852
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            ">;"
        }
    .end annotation

    .line 5014
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3780
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    if-nez v1, :cond_d

    .line 3781
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3783
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 3785
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hasTag()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hasTag()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 3786
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3787
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3788
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 3790
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getLevelsList()Ljava/util/List;

    move-result-object v1

    .line 3791
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getLevelsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v3

    .line 3792
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getSourcesList()Ljava/util/List;

    move-result-object v1

    .line 3793
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getSourcesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v3

    .line 3794
    :cond_4e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v3

    :cond_59
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2

    .line 5024
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    return-object v0
.end method

.method public getLevels(I)Lcom/explorestack/protobuf/StringValue;
    .registers 3

    .line 3645
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public getLevelsCount()I
    .registers 2

    .line 3633
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLevelsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation

    .line 3608
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    return-object v0
.end method

.method public getLevelsOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 3

    .line 3658
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1
.end method

.method public getLevelsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            ">;"
        }
    .end annotation

    .line 5019
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 3754
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3758
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 3760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    move v2, v1

    .line 3762
    :goto_17
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 3763
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    .line 3764
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3766
    :cond_30
    :goto_30
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 3767
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    .line 3768
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 3770
    :cond_49
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3771
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSources(I)Lcom/explorestack/protobuf/StringValue;
    .registers 3

    .line 3710
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public getSourcesCount()I
    .registers 2

    .line 3698
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSourcesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation

    .line 3673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    return-object v0
.end method

.method public getSourcesOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 3

    .line 3723
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1
.end method

.method public getSourcesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3686
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 3581
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 3593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 3465
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasTag()Z
    .registers 2

    .line 3568
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3800
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3804
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3805
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3807
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3809
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getLevelsCount()I

    move-result v0

    if-lez v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3811
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getLevelsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3813
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getSourcesCount()I

    move-result v0

    if-lez v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3815
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getSourcesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 3817
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3818
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3550
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 3551
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3729
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 3733
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3441
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 3893
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 3909
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 3459
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 3902
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3903
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

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

    .line 3740
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    .line 3741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 3743
    :goto_e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3744
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->levels_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3746
    :cond_25
    :goto_25
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 3747
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->sources_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3749
    :cond_3c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5003
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5009
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5003
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.Builder (io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private levels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3933
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4318
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4648
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 3934
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3939
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 4318
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4648
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 3940
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 3915
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 3915
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;-><init>()V

    return-void
.end method

.method private ensureLevelsIsMutable()V
    .registers 3

    .line 4320
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 4321
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4322
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureSourcesIsMutable()V
    .registers 3

    .line 4650
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 4651
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4652
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3921
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4635
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 4636
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 4640
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4642
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4644
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4965
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 4966
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 4970
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4972
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4974
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4306
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4307
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4309
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4312
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4314
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 3944
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3945
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3946
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllLevels(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;"
        }
    .end annotation

    .line 4506
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 4507
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4508
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4512
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllSources(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;"
        }
    .end annotation

    .line 4836
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 4837
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4838
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4842
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addLevels(ILcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4487
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4488
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4489
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4492
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addLevels(ILcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4446
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4448
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4450
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4451
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4452
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4454
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addLevels(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4468
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4469
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4470
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4473
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addLevels(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4424
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4428
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4429
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4432
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addLevelsBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 3

    .line 4604
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4605
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4604
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public addLevelsBuilder(I)Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 4

    .line 4617
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4618
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4617
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4054
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public addSources(ILcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4818
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4819
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4822
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addSources(ILcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4776
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4778
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4780
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4781
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4784
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addSources(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4799
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4800
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4803
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addSources(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4758
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4759
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4762
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addSourcesBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 3

    .line 4934
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4935
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4934
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public addSourcesBuilder(I)Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 4

    .line 4947
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4948
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4947
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3

    .line 3986
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    .line 3987
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3988
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 3

    .line 3995
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 3997
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 3998
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2602(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4000
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2602(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4002
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_37

    .line 4003
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 4004
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4005
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4007
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2702(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;

    goto :goto_3e

    .line 4009
    :cond_37
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2702(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;

    .line 4011
    :goto_3e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 4012
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_56

    .line 4013
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4014
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4016
    :cond_56
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2802(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;

    goto :goto_63

    .line 4018
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2802(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;Ljava/util/List;)Ljava/util/List;

    .line 4020
    :goto_63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 3951
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3952
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3953
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 3955
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 3956
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3958
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 3959
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 3960
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    goto :goto_21

    .line 3962
    :cond_1e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3964
    :goto_21
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_30

    .line 3965
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 3966
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    return-object p0

    .line 3968
    :cond_30
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4037
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public clearLevels()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4525
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 4526
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4527
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4530
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4042
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public clearSources()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4855
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 4856
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4857
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4860
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearTag()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4256
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4257
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4258
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4260
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4261
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4026
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .registers 2

    .line 3981
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3976
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLevels(I)Lcom/explorestack/protobuf/StringValue;
    .registers 3

    .line 4368
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4369
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1

    .line 4371
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public getLevelsBuilder(I)Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 3

    .line 4562
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object p1
.end method

.method public getLevelsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            ">;"
        }
    .end annotation

    .line 4630
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLevelsCount()I
    .registers 2

    .line 4353
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4356
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getLevelsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation

    .line 4338
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4339
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4341
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLevelsOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 3

    .line 4574
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4575
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1

    .line 4576
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1
.end method

.method public getLevelsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4589
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 4590
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4592
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSources(I)Lcom/explorestack/protobuf/StringValue;
    .registers 3

    .line 4698
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4699
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1

    .line 4701
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public getSourcesBuilder(I)Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 3

    .line 4892
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object p1
.end method

.method public getSourcesBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            ">;"
        }
    .end annotation

    .line 4960
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourcesCount()I
    .registers 2

    .line 4683
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4684
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4686
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getSourcesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation

    .line 4668
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4669
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4671
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourcesOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 3

    .line 4904
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4905
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1

    .line 4906
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object p1
.end method

.method public getSourcesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4919
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 4920
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4922
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4178
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4179
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4181
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTagBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4277
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4288
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4289
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4291
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4292
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasTag()Z
    .registers 2

    .line 4166
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

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

    .line 3927
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 3928
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

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

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

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

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

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

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

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4140
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$3200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 4146
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 4142
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 4143
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

    .line 4146
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 4148
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4058
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    if-eqz v0, :cond_b

    .line 4059
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1

    .line 4061
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 5

    .line 4067
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4068
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4069
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 4071
    :cond_14
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 4072
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 4073
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4074
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4075
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    goto :goto_44

    .line 4077
    :cond_38
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4078
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4080
    :goto_44
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_85

    .line 4083
    :cond_48
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 4084
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4085
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 4086
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4087
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    .line 4088
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4090
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 4091
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getLevelsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_79

    :cond_78
    move-object v0, v1

    :goto_79
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_85

    .line 4093
    :cond_7c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2700(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4097
    :cond_85
    :goto_85
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b8

    .line 4098
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 4099
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 4100
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4101
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    goto :goto_b4

    .line 4103
    :cond_a8
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4104
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4106
    :goto_b4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_f3

    .line 4109
    :cond_b8
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 4110
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 4111
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 4112
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4113
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    .line 4114
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->bitField0_:I

    .line 4116
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 4117
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->getSourcesFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_e7
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_f3

    .line 4119
    :cond_ea
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$2800(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4123
    :cond_f3
    :goto_f3
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->access$3100(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 4124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4233
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4236
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4238
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4240
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4242
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4985
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public removeLevels(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4543
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 4544
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4545
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4546
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4548
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeSources(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4873
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 4874
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4875
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4878
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3915
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4032
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public setLevels(ILcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4406
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4407
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4408
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4411
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setLevels(ILcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4384
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levelsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4386
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4388
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureLevelsIsMutable()V

    .line 4389
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->levels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4392
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3915
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3915
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4048
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

.method public setSources(ILcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4736
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 4737
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4738
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4741
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setSources(ILcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 4

    .line 4714
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sourcesBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 4716
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4718
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->ensureSourcesIsMutable()V

    .line 4719
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->sources_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4722
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4215
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4216
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4217
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4219
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 3

    .line 4193
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4197
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 4198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4200
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3915
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .registers 2

    .line 4979
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder (io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRuleOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOSLogRuleOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getLevels(I)Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getLevelsCount()I
.end method

.method public abstract getLevelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLevelsOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getLevelsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSources(I)Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getSourcesCount()I
.end method

.method public abstract getSourcesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/StringValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourcesOrBuilder(I)Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getSourcesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract hasTag()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.PurRule (io.bidmachine.protobuf.sdk.Reader$Rule$PurRule)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field public static final QUERY_FIELD_NUMBER:I = 0x3

.field public static final SHOULD_REPORT_FIELD_NUMBER:I = 0x4

.field public static final TAG_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private path_:Lcom/explorestack/protobuf/StringValue;

.field private query_:Lcom/explorestack/protobuf/StringValue;

.field private shouldReport_:Lcom/explorestack/protobuf/BoolValue;

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6555
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    .line 6563
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5171
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5458
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5190
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>()V

    .line 5192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5195
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_d1

    .line 5199
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_97

    const/16 v4, 0x12

    if-eq v2, v4, :cond_76

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_56

    const/16 v4, 0x22

    if-eq v2, v4, :cond_36

    .line 5257
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2b
    move v1, v3

    goto :goto_b

    :catchall_2d
    move-exception p1

    goto/16 :goto_c7

    :catch_30
    move-exception p1

    goto/16 :goto_b8

    :catch_33
    move-exception p1

    goto/16 :goto_c2

    .line 5245
    :cond_36
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_3e

    .line 5246
    invoke-virtual {v2}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v5

    .line 5248
    :cond_3e
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/BoolValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v5, :cond_b

    .line 5250
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 5251
    invoke-virtual {v5}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_b

    .line 5232
    :cond_56
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5e

    .line 5233
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 5235
    :cond_5e
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 5237
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 5238
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b

    .line 5219
    :cond_76
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_7e

    .line 5220
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 5222
    :cond_7e
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 5224
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 5225
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 5206
    :cond_97
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_9f

    .line 5207
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 5209
    :cond_9f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_b

    .line 5211
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 5212
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;
    :try_end_b6
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_b6} :catch_33
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b6} :catch_30
    .catchall {:try_start_d .. :try_end_b6} :catchall_2d

    goto/16 :goto_b

    .line 5268
    :goto_b8
    :try_start_b8
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5269
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 5266
    :goto_c2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_2d

    .line 5271
    :goto_c7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5272
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 5273
    throw p1

    .line 5271
    :cond_d1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5272
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5162
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 5169
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5458
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 5162
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3600()Z
    .registers 1

    .line 5162
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5162
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5162
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5162
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4102(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 5162
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$4200(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 5162
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 5162
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 1

    .line 6559
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5277
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 1

    .line 5649
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 5652
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5622
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5623
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5629
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5630
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5590
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5596
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5635
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5636
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5642
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5643
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5610
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5611
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5617
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5618
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5579
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5585
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5600
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5606
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
            ">;"
        }
    .end annotation

    .line 6574
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 5519
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    if-nez v1, :cond_d

    .line 5520
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5522
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    .line 5524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasTag()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasTag()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5525
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5527
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 5529
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasPath()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasPath()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 5530
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasPath()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5531
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5532
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 5534
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 5535
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 5536
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5537
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 5539
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 5540
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 5541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 5542
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 5544
    :cond_90
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v3

    :cond_9b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2

    .line 6584
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
            ">;"
        }
    .end annotation

    .line 6579
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5355
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5367
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5398
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getQueryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5411
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 5489
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5493
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 5495
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5497
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 5499
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5501
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 5503
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5505
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v1, :cond_3f

    const/4 v1, 0x4

    .line 5507
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5509
    :cond_3f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5510
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getShouldReport()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 5442
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getShouldReportOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 5455
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5314
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5326
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 5184
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasPath()Z
    .registers 2

    .line 5342
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .line 5384
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasShouldReport()Z
    .registers 2

    .line 5428
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTag()Z
    .registers 2

    .line 5301
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5550
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5554
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 5555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 5557
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5559
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5563
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5567
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 5569
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_64
    mul-int/lit8 v1, v1, 0x1d

    .line 5571
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5572
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 5283
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5284
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 5461
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 5465
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5162
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 5647
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 4

    .line 5663
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 5178
    new-instance p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5656
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5657
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

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

    .line 5472
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 5473
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5475
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 5476
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5478
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 5479
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5481
    :cond_24
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    .line 5482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5484
    :cond_30
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.AnonymousClass1 (io.bidmachine.protobuf.sdk.Reader$Rule$PurRule$1)
.class Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6563
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6569
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6563
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.Builder (io.bidmachine.protobuf.sdk.Reader$Rule$PurRule$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;"
    }
.end annotation


# instance fields
.field private pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private path_:Lcom/explorestack/protobuf/StringValue;

.field private queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private query_:Lcom/explorestack/protobuf/StringValue;

.field private shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private shouldReport_:Lcom/explorestack/protobuf/BoolValue;

.field private tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5687
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5688
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 5693
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5694
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 3

    .line 5669
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .registers 2

    .line 5669
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5675
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getPathFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6180
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6181
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6186
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6188
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getQueryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6353
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6354
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6356
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6359
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6361
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getShouldReportFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 6526
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6527
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6529
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 6530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6532
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6534
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6016
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6017
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6019
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6022
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 6024
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 5698
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$3600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5808
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3

    .line 5744
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    .line 5745
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 5746
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 3

    .line 5753
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 5754
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 5755
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5757
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 5759
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 5760
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$3902(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2c

    .line 5762
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$3902(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 5764
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 5765
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4002(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_3f

    .line 5767
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4002(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 5769
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 5770
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4102(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_52

    .line 5772
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4102(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 5774
    :goto_52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5703
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 5704
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5705
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 5707
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5708
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5710
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 5711
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1a

    .line 5713
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 5714
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5716
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 5717
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_25

    .line 5719
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 5720
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5722
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 5723
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    return-object p0

    .line 5725
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 5726
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 5791
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 5796
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public clearPath()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6130
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6131
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6134
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6135
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearQuery()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6300
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6301
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6304
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6305
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearShouldReport()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6473
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6474
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6477
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6478
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTag()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5966
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5967
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5970
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5971
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 5780
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    .registers 2

    .line 5739
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 5734
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPath()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6052
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6053
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6055
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getPathBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6151
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getPathFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6162
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6163
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6165
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6166
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getQuery()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6218
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6219
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6221
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getQueryBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6322
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getQueryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getQueryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6334
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6335
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6337
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6338
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getShouldReport()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 6391
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6392
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6394
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getShouldReportBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 6494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6495
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getShouldReportFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getShouldReportOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 6507
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6508
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 6510
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 6511
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTag()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5888
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5889
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5891
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTagBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5987
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->getTagFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5998
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5999
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6001
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6002
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasPath()Z
    .registers 2

    .line 6040
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasQuery()Z
    .registers 2

    .line 6205
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasShouldReport()Z
    .registers 2

    .line 6378
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

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

.method public hasTag()Z
    .registers 2

    .line 5876
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

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

    .line 5681
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5682
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

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

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

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

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

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

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

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5851
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 5857
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 5853
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 5854
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

    .line 5857
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5859
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5812
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    if-eqz v0, :cond_b

    .line 5813
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1

    .line 5815
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5821
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 5822
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5823
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5825
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5826
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergePath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5828
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5829
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getQuery()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeQuery(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5831
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->hasShouldReport()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5832
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeShouldReport(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5834
    :cond_3b
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->access$4200(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 5835
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6107
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6108
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6110
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6112
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6114
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6116
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeQuery(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6276
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6277
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6279
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6281
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6283
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6285
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeShouldReport(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6449
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6450
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 6452
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 6454
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6456
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6458
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5943
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5944
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5946
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5948
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5950
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5952
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 6545
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5669
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5786
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public setPath(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6089
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6090
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6093
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6067
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->pathBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6071
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->path_:Lcom/explorestack/protobuf/StringValue;

    .line 6072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6074
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setQuery(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6257
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6258
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6259
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6261
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setQuery(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->queryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6238
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->query_:Lcom/explorestack/protobuf/StringValue;

    .line 6239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6241
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 5669
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 5669
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 4

    .line 5802
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

.method public setShouldReport(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6430
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6431
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6432
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6434
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setShouldReport(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 6407
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReportBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6411
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->shouldReport_:Lcom/explorestack/protobuf/BoolValue;

    .line 6412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6414
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5925
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5926
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5929
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 3

    .line 5903
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tagBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5907
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->tag_:Lcom/explorestack/protobuf/StringValue;

    .line 5908
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5910
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5669
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;
    .registers 2

    .line 6539
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder (io.bidmachine.protobuf.sdk.Reader$Rule$PurRuleOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurRuleOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getPath()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getPathOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getQuery()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getQueryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getShouldReport()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getShouldReportOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getTag()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getTagOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract hasPath()Z
.end method

.method public abstract hasQuery()Z
.end method

.method public abstract hasShouldReport()Z
.end method

.method public abstract hasTag()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.Rule.RuleOneofCase (io.bidmachine.protobuf.sdk.Reader$Rule$RuleOneofCase)
.class public final enum Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
.super Ljava/lang/Enum;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum PUR_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 6594
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    const-string v1, "GENERAL_RULE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 6595
    new-instance v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    const-string v4, "IOS_LOG_RULE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 6596
    new-instance v3, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    const-string v4, "PUR_RULE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->PUR_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 6597
    new-instance v4, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    const-string v5, "RULEONEOF_NOT_SET"

    invoke-direct {v4, v5, v6, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 6591
    filled-new-array {v0, v1, v3, v4}, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6600
    iput p3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 6616
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->PUR_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0

    .line 6615
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0

    .line 6614
    :cond_13
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0

    .line 6617
    :cond_16
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6609
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 2

    .line 6591
    const-class v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .registers 1

    .line 6591
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 6622
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->value:I

    return v0
.end method

###### Class io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder (io.bidmachine.protobuf.sdk.Reader$RuleOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RuleOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
.end method

.method public abstract getGeneralRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
.end method

.method public abstract getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
.end method

.method public abstract getIosLogRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;
.end method

.method public abstract getPurRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;
.end method

.method public abstract getPurRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRuleOrBuilder;
.end method

.method public abstract getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
.end method

.method public abstract hasGeneralRule()Z
.end method

.method public abstract hasIosLogRule()Z
.end method

.method public abstract hasPurRule()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
