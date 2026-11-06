###### Class com.explorestack.protobuf.Option (com.explorestack.protobuf.Option)
.class public final Lcom/explorestack/protobuf/Option;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Option.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Option$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedIsInitialized:B

.field public volatile name_:Ljava/lang/Object;

.field public value_:Lcom/explorestack/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 855
    new-instance v0, Lcom/explorestack/protobuf/Option;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Option;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    .line 863
    new-instance v0, Lcom/explorestack/protobuf/Option$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Option$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 207
    iput-byte v0, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_6c

    .line 52
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2a

    .line 77
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

    .line 65
    :cond_2a
    iget-object v2, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v2, :cond_33

    .line 66
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 68
    :goto_34
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Any;

    iput-object v3, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v2, :cond_b

    .line 70
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 71
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    goto :goto_b

    .line 58
    :cond_4c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;
    :try_end_52
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_52} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_52} :catch_26
    .catchall {:try_start_d .. :try_end_52} :catchall_24

    goto :goto_b

    .line 88
    :goto_53
    :try_start_53
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 89
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 86
    :goto_5d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_24

    .line 91
    :goto_62
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 93
    throw p1

    .line 91
    :cond_6c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Option$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 207
    iput-byte p1, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Option$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/explorestack/protobuf/Option;)Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/explorestack/protobuf/Option;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 14
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Option;
    .registers 1

    .line 859
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 97
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .registers 1

    .line 360
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 874
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 253
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/Option;

    if-nez v1, :cond_d

    .line 254
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 256
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/Option;

    .line 258
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 260
    :cond_1f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 261
    :cond_2a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 262
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 263
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 265
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;
    .registers 2

    .line 884
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    .line 124
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 125
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 127
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    .line 149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 150
    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object v0

    .line 156
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
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 879
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 232
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 236
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 239
    :goto_19
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    .line 241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_27
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Lcom/explorestack/protobuf/Any;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasValue()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 271
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 275
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_34
    mul-int/lit8 v1, v1, 0x1d

    .line 282
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 283
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 103
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Option;

    const-class v2, Lcom/explorestack/protobuf/Option$Builder;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 210
    iget-byte v0, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_a
    iput-byte v1, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 358
    invoke-static {}, Lcom/explorestack/protobuf/Option;->newBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 4

    .line 374
    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Option$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 31
    new-instance p1, Lcom/explorestack/protobuf/Option;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Option;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 367
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/Option$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/Option$1;)V

    .line 368
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 222
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 224
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 227
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class com.explorestack.protobuf.Option.AnonymousClass1 (com.explorestack.protobuf.Option$1)
.class public final Lcom/explorestack/protobuf/Option$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/Option;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 863
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 869
    new-instance v0, Lcom/explorestack/protobuf/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Option$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.Option.Builder (com.explorestack.protobuf.Option$Builder)
.class public final Lcom/explorestack/protobuf/Option$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Option.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Option$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field public name_:Ljava/lang/Object;

.field public valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public value_:Lcom/explorestack/protobuf/Any;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 403
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 404
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 409
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 544
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 410
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Option$1;)V
    .registers 3

    .line 385
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Option$1;)V
    .registers 2

    .line 385
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;-><init>()V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 413
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 494
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/Option;
    .registers 3

    .line 444
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 446
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/Option;
    .registers 3

    .line 453
    new-instance v0, Lcom/explorestack/protobuf/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Option$1;)V

    .line 454
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$302(Lcom/explorestack/protobuf/Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_15

    .line 456
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_1e

    .line 458
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 460
    :goto_1e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 419
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 423
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    return-object p0

    .line 425
    :cond_f
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 426
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 477
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 482
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 466
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;
    .registers 2

    .line 439
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 434
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 397
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Option;

    const-class v2, Lcom/explorestack/protobuf/Option$Builder;

    .line 398
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

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/Option;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 538
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 534
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Option;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 535
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

    .line 538
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    .line 540
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 498
    instance-of v0, p1, Lcom/explorestack/protobuf/Option;

    if-eqz v0, :cond_b

    .line 499
    check-cast p1, Lcom/explorestack/protobuf/Option;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1

    .line 501
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 507
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 508
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 509
    invoke-static {p1}, Lcom/explorestack/protobuf/Option;->access$300(Lcom/explorestack/protobuf/Option;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 512
    :cond_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 513
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Option$Builder;->mergeValue(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Option$Builder;

    .line 515
    :cond_27
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    .line 516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 845
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public mergeValue(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 746
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_17

    .line 748
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    goto :goto_19

    .line 750
    :cond_17
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 752
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 754
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 3

    .line 472
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Option$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Option$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 4

    .line 488
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;
    .registers 2

    .line 839
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method
