###### Class com.explorestack.protobuf.MapEntry (com.explorestack.protobuf.MapEntry)
.class public final Lcom/explorestack/protobuf/MapEntry;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapEntry$Builder;,
        Lcom/explorestack/protobuf/MapEntry$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage;"
    }
.end annotation


# instance fields
.field public volatile cachedSerializedSize:I

.field public final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 88
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 89
    iput-object p5, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    .line 90
    new-instance p3, Lcom/explorestack/protobuf/MapEntry$Metadata;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/explorestack/protobuf/MapEntry$Metadata;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V

    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 106
    :try_start_6
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    .line 107
    invoke-static {p2, p1, p3}, Lcom/explorestack/protobuf/MapEntryLite;->parseEntry(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 109
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;
    :try_end_18
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_18} :catch_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    goto :goto_1d

    :catch_1b
    move-exception p1

    goto :goto_27

    .line 113
    :goto_1d
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 111
    :goto_27
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MapEntry$1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata;",
            "TK;TV;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 96
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z
    .registers 2

    .line 50
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 5

    .line 199
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_b

    return-void

    .line 200
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 204
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata;",
            "TV;)Z"
        }
    .end annotation

    .line 447
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p0

    sget-object v0, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne p0, v0, :cond_11

    .line 448
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 191
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 192
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 195
    :cond_2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, v1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 5

    .line 218
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 219
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    :goto_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_2a

    .line 222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMetadata()Lcom/explorestack/protobuf/MapEntry$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->parser:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .registers 3

    .line 234
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .registers 3

    .line 229
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSerializedSize()I
    .registers 4

    .line 143
    iget v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 144
    iget v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    return v0

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 148
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 239
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 2

    .line 210
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/MapEntry;->isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;

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

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.explorestack.protobuf.MapEntry.AnonymousClass1 (com.explorestack.protobuf.MapEntry$1)
.class public synthetic Lcom/explorestack/protobuf/MapEntry$1;
.super Ljava/lang/Object;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.explorestack.protobuf.MapEntry.Builder (com.explorestack.protobuf.MapEntry$Builder)
.class public Lcom/explorestack/protobuf/MapEntry$Builder;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/MapEntry$Builder<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public hasKey:Z

.field public hasValue:Z

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 251
    iget-object v2, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/MapEntry$1;)V
    .registers 3

    .line 243
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    .line 256
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    .line 257
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    .line 258
    iput-boolean p4, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    .line 259
    iput-boolean p5, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/MapEntry$1;)V
    .registers 7

    .line 243
    invoke-direct/range {p0 .. p5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/explorestack/protobuf/MapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapEntry;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 298
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/MapEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public final checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 5

    .line 314
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_b

    return-void

    .line 315
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 319
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 361
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 362
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearKey()Lcom/explorestack/protobuf/MapEntry$Builder;

    return-object p0

    .line 365
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearValue()Lcom/explorestack/protobuf/MapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearKey()Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return-object p0
.end method

.method public clearValue()Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    iget-boolean v5, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 400
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 401
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 404
    :cond_2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, v1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 5

    .line 415
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 416
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 418
    :goto_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_2a

    .line 419
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .registers 3

    .line 431
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .registers 3

    .line 426
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 436
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 3

    .line 409
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 410
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return p1

    :cond_d
    iget-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return p1
.end method

.method public isInitialized()Z
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/MapEntry;->access$600(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 5

    .line 325
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 329
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1b

    .line 332
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1

    .line 330
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 339
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 340
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    return-object p0

    .line 342
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_21

    .line 343
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4d

    .line 344
    :cond_21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_4d

    if-eqz p2, :cond_4d

    .line 345
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 350
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 351
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->toBuilder()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p2

    .line 354
    :cond_4d
    :goto_4d
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 372
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-object p0
.end method

###### Class com.explorestack.protobuf.MapEntry.Metadata (com.explorestack.protobuf.MapEntry$Metadata)
.class public final Lcom/explorestack/protobuf/MapEntry$Metadata;
.super Lcom/explorestack/protobuf/MapEntryLite$Metadata;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public final parser:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-static {p2}, Lcom/explorestack/protobuf/MapEntry;->access$000(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/explorestack/protobuf/MapEntry;->access$100(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/explorestack/protobuf/MapEntryLite$Metadata;-><init>(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 64
    new-instance p1, Lcom/explorestack/protobuf/MapEntry$Metadata$1;

    invoke-direct {p1, p0}, Lcom/explorestack/protobuf/MapEntry$Metadata$1;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Metadata;->parser:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

###### Class com.explorestack.protobuf.MapEntry.Metadata.AnonymousClass1 (com.explorestack.protobuf.MapEntry$Metadata$1)
.class public Lcom/explorestack/protobuf/MapEntry$Metadata$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/MapEntry$Metadata;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/MapEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/explorestack/protobuf/MapEntry$Metadata;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Metadata$1;->this$0:Lcom/explorestack/protobuf/MapEntry$Metadata;

    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MapEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Metadata$1;->this$0:Lcom/explorestack/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MapEntry$Metadata$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object p1

    return-object p1
.end method
