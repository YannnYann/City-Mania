###### Class com.explorestack.protobuf.Value (com.explorestack.protobuf.Value)
.class public final Lcom/explorestack/protobuf/Value;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Value.java"

# interfaces
.implements Lcom/explorestack/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Value$Builder;,
        Lcom/explorestack/protobuf/Value$KindCase;
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

.field public static final LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_VALUE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x3

.field public static final STRUCT_VALUE_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1617
    new-instance v0, Lcom/explorestack/protobuf/Value;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Value;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    .line 1625
    new-instance v0, Lcom/explorestack/protobuf/Value$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Value$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v0, -0x1

    .line 442
    iput-byte v0, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value;-><init>()V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_dd

    .line 54
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    const/16 v4, 0x8

    if-eq v2, v4, :cond_b6

    const/16 v4, 0x11

    if-eq v2, v4, :cond_a7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9c

    const/16 v4, 0x20

    if-eq v2, v4, :cond_8d

    const/16 v4, 0x2a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_65

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3e

    .line 110
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_33
    move v1, v3

    goto :goto_b

    :catchall_35
    move-exception p1

    goto/16 :goto_d3

    :catch_38
    move-exception p1

    goto/16 :goto_c4

    :catch_3b
    move-exception p1

    goto/16 :goto_ce

    .line 97
    :cond_3e
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4b

    .line 98
    iget-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ListValue;->toBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v5

    .line 101
    :cond_4b
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    if-eqz v5, :cond_62

    .line 103
    check-cast v2, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 104
    invoke-virtual {v5}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 106
    :cond_62
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    goto :goto_b

    .line 83
    :cond_65
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_72

    .line 84
    iget-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 87
    :cond_72
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    if-eqz v5, :cond_89

    .line 89
    check-cast v2, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 90
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 92
    :cond_89
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    goto/16 :goto_b

    :cond_8d
    const/4 v2, 0x4

    .line 77
    iput v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 71
    :cond_9c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 72
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 73
    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_b

    :cond_a7
    const/4 v2, 0x2

    .line 66
    iput v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 67
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 60
    :cond_b6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 61
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;
    :try_end_c2
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_c2} :catch_3b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_c2} :catch_38
    .catchall {:try_start_d .. :try_end_c2} :catchall_35

    goto/16 :goto_b

    .line 121
    :goto_c4
    :try_start_c4
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 122
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 119
    :goto_ce
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_35

    .line 124
    :goto_d3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 126
    throw p1

    .line 124
    :cond_dd
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Value$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 24
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 p1, -0x1

    .line 442
    iput-byte p1, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Value$1;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/explorestack/protobuf/Value;I)I
    .registers 2

    .line 17
    iput p1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    return p1
.end method

.method public static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 17
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Value;
    .registers 1

    .line 1621
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 130
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Value$Builder;
    .registers 1

    .line 674
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 677
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 648
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 655
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 615
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 621
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 661
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 668
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 636
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 643
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 604
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 610
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 625
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 631
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 1636
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 520
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/Value;

    if-nez v1, :cond_d

    .line 521
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 523
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/Value;

    .line 525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 526
    :cond_1f
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    packed-switch v1, :pswitch_data_8a

    goto :goto_7d

    .line 549
    :pswitch_25
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    .line 550
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/ListValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    .line 545
    :pswitch_34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 546
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    .line 541
    :pswitch_43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v1

    .line 542
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v3

    if-eq v1, v3, :cond_7d

    return v2

    .line 537
    :pswitch_4e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    .line 532
    :pswitch_5d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 534
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v5

    .line 533
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7d

    return v2

    .line 528
    :pswitch_72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v1

    .line 529
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v3

    if-eq v1, v3, :cond_7d

    return v2

    .line 555
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    return v2

    :cond_88
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_72
        :pswitch_5d
        :pswitch_4e
        :pswitch_43
        :pswitch_34
        :pswitch_25
    .end packed-switch
.end method

.method public getBoolValue()Z
    .registers 3

    .line 350
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 351
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;
    .registers 2

    .line 1646
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    return-object v0
.end method

.method public getKindCase()Lcom/explorestack/protobuf/Value$KindCase;
    .registers 2

    .line 186
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/explorestack/protobuf/ListValue;
    .registers 3

    .line 422
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 423
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 425
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getListValueOrBuilder()Lcom/explorestack/protobuf/ListValueOrBuilder;
    .registers 3

    .line 436
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 437
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 439
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/explorestack/protobuf/NullValue;
    .registers 3

    .line 225
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 227
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    invoke-static {v0}, Lcom/explorestack/protobuf/NullValue;->valueOf(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_15

    .line 229
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->UNRECOGNIZED:Lcom/explorestack/protobuf/NullValue;

    :cond_15
    return-object v0

    .line 231
    :cond_16
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->NULL_VALUE:Lcom/explorestack/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .registers 3

    .line 211
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 212
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .registers 3

    .line 257
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 258
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 1641
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 481
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 485
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 486
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 487
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 489
    :goto_19
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 490
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    .line 492
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 491
    invoke-static {v2, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_2b
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 495
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_37
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    .line 498
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 499
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_49
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_57

    .line 503
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    .line 504
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_57
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_65

    .line 507
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/protobuf/ListValue;

    .line 508
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_65
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .line 285
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 286
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 285
    :cond_8
    const-string v0, ""

    .line 288
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 289
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 291
    :cond_11
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 294
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    if-ne v2, v1, :cond_1d

    .line 295
    iput-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method

.method public getStringValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 311
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 312
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 311
    :cond_8
    const-string v0, ""

    .line 314
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 315
    check-cast v0, Ljava/lang/String;

    .line 316
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 318
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    if-ne v2, v1, :cond_1a

    .line 319
    iput-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 323
    :cond_1b
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStructValue()Lcom/explorestack/protobuf/Struct;
    .registers 3

    .line 379
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 382
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getStructValueOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 3

    .line 393
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 394
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 396
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBoolValue()Z
    .registers 3

    .line 338
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasListValue()Z
    .registers 3

    .line 410
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasNullValue()Z
    .registers 3

    .line 200
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasNumberValue()Z
    .registers 3

    .line 245
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasStringValue()Z
    .registers 3

    .line 273
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasStructValue()Z
    .registers 3

    .line 367
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 561
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 565
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 566
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    packed-switch v0, :pswitch_data_7e

    goto :goto_71

    :pswitch_16
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v1, v0

    goto :goto_71

    :pswitch_26
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    goto :goto_24

    :pswitch_35
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v0

    .line 582
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    goto :goto_24

    :pswitch_44
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    :pswitch_53
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 573
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    goto :goto_24

    :pswitch_66
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v0

    goto :goto_24

    :goto_71
    mul-int/lit8 v1, v1, 0x1d

    .line 596
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 597
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_66
        :pswitch_53
        :pswitch_44
        :pswitch_35
        :pswitch_26
        :pswitch_16
    .end packed-switch
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 136
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Value;

    const-class v2, Lcom/explorestack/protobuf/Value$Builder;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 445
    iget-byte v0, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 449
    :cond_a
    iput-byte v1, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 672
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 4

    .line 688
    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Value$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 33
    new-instance p1, Lcom/explorestack/protobuf/Value;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Value;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 681
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/Value$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/Value$1;)V

    .line 682
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 456
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 457
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 459
    :cond_10
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 460
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 461
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 460
    invoke-virtual {p1, v1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 463
    :cond_20
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 464
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 466
    :cond_2a
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    .line 467
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 468
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 467
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 470
    :cond_3a
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_46

    .line 471
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 473
    :cond_46
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_52

    .line 474
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 476
    :cond_52
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class com.explorestack.protobuf.Value.AnonymousClass1 (com.explorestack.protobuf.Value$1)
.class final Lcom/explorestack/protobuf/Value$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/Value;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1625
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1631
    new-instance v0, Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Value$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1625
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.Value.AnonymousClass2 (com.explorestack.protobuf.Value$2)
.class synthetic Lcom/explorestack/protobuf/Value$2;
.super Ljava/lang/Object;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$Value$KindCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 840
    invoke-static {}, Lcom/explorestack/protobuf/Value$KindCase;->values()[Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->NULL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->STRING_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->LIST_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->KIND_NOT_SET:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class com.explorestack.protobuf.Value.Builder (com.explorestack.protobuf.Value$Builder)
.class public final Lcom/explorestack/protobuf/Value$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Value.java"

# interfaces
.implements Lcom/explorestack/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Value$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 720
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 899
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 721
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 726
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 899
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 727
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Value$1;)V
    .registers 3

    .line 702
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Value$1;)V
    .registers 2

    .line 702
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 708
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_25

    .line 1584
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_f

    .line 1585
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1587
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/ListValue;

    .line 1590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1592
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1594
    :cond_25
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1596
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
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

    .line 1406
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_25

    .line 1407
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_f

    .line 1408
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1410
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    .line 1413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1415
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1417
    :cond_25
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1419
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 730
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 826
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/Value;
    .registers 3

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 757
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/Value;
    .registers 4

    .line 764
    new-instance v0, Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Value$1;)V

    .line 765
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 766
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 769
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_1a
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 772
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_24
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2e

    .line 775
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_2e
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_44

    .line 778
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3d

    .line 779
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 781
    :cond_3d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_44
    :goto_44
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5a

    .line 785
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_53

    .line 786
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 788
    :cond_53
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_5a
    :goto_5a
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$402(Lcom/explorestack/protobuf/Value;I)I

    .line 792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 736
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBoolValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1237
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1239
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 809
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public clearKind()Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearListValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 6

    .line 1530
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_13

    .line 1531
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_12

    .line 1532
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1533
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1537
    :cond_13
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1b

    .line 1538
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1539
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1541
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearNullValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1002
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1003
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public clearNumberValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1059
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1060
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 814
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public clearStringValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1160
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1161
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public clearStructValue()Lcom/explorestack/protobuf/Value$Builder;
    .registers 6

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_13

    .line 1354
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_12

    .line 1355
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1356
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1360
    :cond_13
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1b

    .line 1361
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1362
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1364
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 798
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Value$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolValue()Z
    .registers 3

    .line 1208
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 1209
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;
    .registers 2

    .line 750
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 745
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getKindCase()Lcom/explorestack/protobuf/Value$KindCase;
    .registers 2

    .line 903
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/explorestack/protobuf/ListValue;
    .registers 4

    .line 1446
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_13

    .line 1447
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_e

    .line 1448
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1450
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0

    .line 1452
    :cond_13
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1e

    .line 1453
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1455
    :cond_1e
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getListValueBuilder()Lcom/explorestack/protobuf/ListValue$Builder;
    .registers 2

    .line 1553
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public getListValueOrBuilder()Lcom/explorestack/protobuf/ListValueOrBuilder;
    .registers 4

    .line 1564
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1565
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValueOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1568
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1570
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/explorestack/protobuf/NullValue;
    .registers 3

    .line 967
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 969
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 970
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 969
    invoke-static {v0}, Lcom/explorestack/protobuf/NullValue;->valueOf(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_15

    .line 971
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->UNRECOGNIZED:Lcom/explorestack/protobuf/NullValue;

    :cond_15
    return-object v0

    .line 973
    :cond_16
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->NULL_VALUE:Lcom/explorestack/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .registers 3

    .line 937
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 938
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .registers 3

    .line 1030
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1031
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .line 1090
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1091
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 1090
    :cond_8
    const-string v0, ""

    .line 1093
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1094
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1096
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1097
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1a

    .line 1098
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1102
    :cond_1b
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 1117
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1118
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 1117
    :cond_8
    const-string v0, ""

    .line 1120
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1121
    check-cast v0, Ljava/lang/String;

    .line 1122
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1124
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1a

    .line 1125
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1129
    :cond_1b
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStructValue()Lcom/explorestack/protobuf/Struct;
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_13

    .line 1270
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_e

    .line 1271
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1273
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0

    .line 1275
    :cond_13
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1e

    .line 1276
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1278
    :cond_1e
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getStructValueBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 1376
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getStructValueOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 4

    .line 1387
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1388
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1391
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1393
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolValue()Z
    .registers 3

    .line 1197
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasListValue()Z
    .registers 3

    .line 1434
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasNullValue()Z
    .registers 3

    .line 925
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasNumberValue()Z
    .registers 3

    .line 1019
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasStringValue()Z
    .registers 3

    .line 1077
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasStructValue()Z
    .registers 3

    .line 1257
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 714
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Value;

    const-class v2, Lcom/explorestack/protobuf/Value$Builder;

    .line 715
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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 888
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 894
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 890
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Value;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 891
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

    .line 894
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    .line 896
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 830
    instance-of v0, p1, Lcom/explorestack/protobuf/Value;

    if-eqz v0, :cond_b

    .line 831
    check-cast p1, Lcom/explorestack/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1

    .line 833
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 4

    .line 839
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 840
    :cond_7
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    goto :goto_4b

    .line 864
    :pswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_4b

    .line 860
    :pswitch_1f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_4b

    .line 856
    :pswitch_27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_4b

    :pswitch_2f
    const/4 v0, 0x3

    .line 850
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 851
    invoke-static {p1}, Lcom/explorestack/protobuf/Value;->access$300(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4b

    .line 846
    :pswitch_3c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_4b

    .line 842
    :pswitch_44
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;

    .line 871
    :goto_4b
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    .line 872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3c
        :pswitch_2f
        :pswitch_27
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 5

    .line 1504
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_2a

    .line 1505
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1506
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1507
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    invoke-static {v0}, Lcom/explorestack/protobuf/ListValue;->newBuilder(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 1508
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 1510
    :cond_24
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1512
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1514
    :cond_2a
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_31

    .line 1515
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1517
    :cond_31
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1519
    :goto_36
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 5

    .line 1327
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_2a

    .line 1328
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1329
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1330
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 1331
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 1333
    :cond_24
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1335
    :goto_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1337
    :cond_2a
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_31

    .line 1338
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1340
    :cond_31
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1342
    :goto_36
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 1607
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    const/4 v0, 0x4

    .line 1223
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 804
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1488
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1491
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x6

    .line 1493
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1466
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1473
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x6

    .line 1475
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setNullValue(Lcom/explorestack/protobuf/NullValue;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 986
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 988
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 989
    invoke-virtual {p1}, Lcom/explorestack/protobuf/NullValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    const/4 v0, 0x1

    .line 952
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;
    .registers 4

    const/4 v0, 0x2

    .line 1045
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1046
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 4

    .line 820
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 1146
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1147
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStringValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    const/4 v0, 0x3

    .line 1182
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1183
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1311
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1314
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x5

    .line 1316
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    .line 1289
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1296
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x5

    .line 1298
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 1601
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

###### Class com.explorestack.protobuf.Value.KindCase (com.explorestack.protobuf.Value$KindCase)
.class public final enum Lcom/explorestack/protobuf/Value$KindCase;
.super Ljava/lang/Enum;
.source "Value.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KindCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Value$KindCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum BOOL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum KIND_NOT_SET:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum LIST_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum NULL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum NUMBER_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum STRING_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

.field public static final enum STRUCT_VALUE:Lcom/explorestack/protobuf/Value$KindCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 146
    new-instance v0, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Value$KindCase;->NULL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    .line 147
    new-instance v1, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v4, "NUMBER_VALUE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    move v3, v2

    .line 148
    new-instance v2, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v4, "STRING_VALUE"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/Value$KindCase;->STRING_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    move v4, v3

    .line 149
    new-instance v3, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v5, "BOOL_VALUE"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    move v5, v4

    .line 150
    new-instance v4, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v6, "STRUCT_VALUE"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    move v6, v5

    .line 151
    new-instance v5, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v7, "LIST_VALUE"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/Value$KindCase;->LIST_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    move v7, v6

    .line 152
    new-instance v6, Lcom/explorestack/protobuf/Value$KindCase;

    const-string v8, "KIND_NOT_SET"

    invoke-direct {v6, v8, v9, v7}, Lcom/explorestack/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/Value$KindCase;->KIND_NOT_SET:Lcom/explorestack/protobuf/Value$KindCase;

    .line 143
    filled-new-array/range {v0 .. v6}, [Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Value$KindCase;->$VALUES:[Lcom/explorestack/protobuf/Value$KindCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/explorestack/protobuf/Value$KindCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    .line 174
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->LIST_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 173
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 172
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 171
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->STRING_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 170
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 169
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->NULL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    .line 175
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/Value$KindCase;->KIND_NOT_SET:Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/Value$KindCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-static {p0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$KindCase;
    .registers 2

    .line 143
    const-class v0, Lcom/explorestack/protobuf/Value$KindCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value$KindCase;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Value$KindCase;
    .registers 1

    .line 143
    sget-object v0, Lcom/explorestack/protobuf/Value$KindCase;->$VALUES:[Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Value$KindCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Value$KindCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/explorestack/protobuf/Value$KindCase;->value:I

    return v0
.end method
