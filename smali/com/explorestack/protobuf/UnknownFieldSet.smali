###### Class com.explorestack.protobuf.UnknownFieldSet (com.explorestack.protobuf.UnknownFieldSet)
.class public final Lcom/explorestack/protobuf/UnknownFieldSet;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/UnknownFieldSet$Parser;,
        Lcom/explorestack/protobuf/UnknownFieldSet$Field;,
        Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    }
.end annotation


# static fields
.field public static final PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

.field public static final defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;


# instance fields
.field public final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldsDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 87
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v1}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1072
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Parser;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    .line 62
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    .line 94
    iput-object p2, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$200(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/util/Map;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 77
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 1

    .line 67
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->access$000()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 2

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v0

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 82
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public bridge synthetic getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getParserForType()Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/UnknownFieldSet$Parser;
    .registers 2

    .line 1076
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getSerializedSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    :cond_2d
    return v1
.end method

.method public getSerializedSizeAsMessageSet()I
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getSerializedSizeAsMessageSetExtension(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    :cond_2d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilderForType()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 2

    .line 289
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 2

    .line 294
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 4

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 174
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance([B)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 176
    invoke-virtual {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->newCodedBuilder(I)Lcom/explorestack/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->build()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 147
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public writeAsMessageSetTo(Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_32

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V

    goto :goto_12

    .line 244
    :cond_32
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V

    goto :goto_3c

    :cond_5c
    return-void
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_32

    .line 224
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/Writer;)V

    goto :goto_12

    .line 229
    :cond_32
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/Writer;)V

    goto :goto_3c

    :cond_5c
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 192
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

###### Class com.explorestack.protobuf.UnknownFieldSet.AnonymousClass1 (com.explorestack.protobuf.UnknownFieldSet$1)
.class public synthetic Lcom/explorestack/protobuf/UnknownFieldSet$1;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.explorestack.protobuf.UnknownFieldSet.Builder (com.explorestack.protobuf.UnknownFieldSet$Builder)
.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field public lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

.field public lastFieldNumber:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 1

    .line 308
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->create()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 1

    .line 321
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;-><init>()V

    .line 322
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object v0
.end method


# virtual methods
.method public addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4

    if-eqz p1, :cond_29

    .line 495
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne v0, p1, :cond_10

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    .line 500
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 501
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    .line 503
    :cond_1f
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 493
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 4

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 361
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 362
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    goto :goto_29

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 366
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, v1

    :goto_29
    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clear()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 1

    .line 402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 383
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 384
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    new-instance v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-direct {v2, v3, v0}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

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

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 390
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_10

    .line 331
    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne p1, v1, :cond_9

    return-object v0

    .line 335
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    :cond_10
    if-nez p1, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    .line 341
    iput p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    .line 342
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_2d

    .line 344
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 346
    :cond_2d
    iget-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p1
.end method

.method public hasField(I)Z
    .registers 3

    if-eqz p1, :cond_17

    .line 484
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1

    .line 482
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 617
    :cond_9
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0

    .line 618
    new-instance v1, Lcom/explorestack/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 619
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4

    if-eqz p1, :cond_14

    .line 443
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->hasField(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 444
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0

    .line 449
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-object p0

    .line 441
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 536
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5b

    if-eq p1, v1, :cond_4f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_43

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_25

    .line 554
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed32(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 557
    :cond_25
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2a
    const/4 p1, 0x0

    return p1

    .line 547
    :cond_2c
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    .line 548
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistry;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/explorestack/protobuf/CodedInputStream;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addGroup(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 544
    :cond_43
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 541
    :cond_4f
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed64(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 538
    :cond_5b
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

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

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 568
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_18

    .line 575
    :goto_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 573
    :goto_18
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    .line 521
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3

    .line 682
    instance-of v0, p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    if-eqz v0, :cond_b

    .line 683
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1

    .line 685
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4

    .line 427
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    if-eq p1, v0, :cond_32

    .line 428
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->access$200(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto :goto_12

    :cond_32
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 587
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance([B)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_18

    .line 594
    :goto_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 592
    :goto_18
    throw p1
.end method

.method public mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 647
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance([BII)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 648
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 p2, 0x0

    .line 649
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_18

    .line 654
    :goto_10
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 652
    :goto_18
    throw p1
.end method

.method public mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 5

    if-eqz p1, :cond_b

    .line 462
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0

    .line 460
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reinitialize()V
    .registers 2

    .line 394
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-void
.end method

###### Class com.explorestack.protobuf.UnknownFieldSet.Field (com.explorestack.protobuf.UnknownFieldSet$Field)
.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field public static final fieldDefaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet$Field;


# instance fields
.field public fixed32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fixed64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field public lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public varint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 730
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/UnknownFieldSet$1;)V
    .registers 2

    .line 712
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 1

    .line 717
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 765
    :cond_4
    instance-of v0, p1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 768
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFixed32List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method public getFixed64List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public final getIdentityArray()[Ljava/lang/Object;
    .registers 6

    .line 778
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    iget-object v4, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLengthDelimitedList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize(I)I
    .registers 6

    .line 820
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 821
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    .line 823
    :cond_1d
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 824
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_23

    .line 826
    :cond_39
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 827
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3f

    .line 829
    :cond_55
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 830
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5b

    .line 832
    :cond_6d
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 833
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_73

    :cond_85
    return v1
.end method

.method public getSerializedSizeAsMessageSetExtension(I)I
    .registers 5

    .line 897
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 898
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_19
    return v1
.end method

.method public getVarintList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 845
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/explorestack/protobuf/ByteString;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    .line 879
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 880
    :goto_12
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 881
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_12

    .line 885
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 886
    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public writeTo(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 801
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_6

    .line 803
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 804
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_20

    .line 806
    :cond_34
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 807
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_3a

    .line 809
    :cond_4e
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 810
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto :goto_54

    .line 812
    :cond_64
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 813
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;)V

    goto :goto_6a

    :cond_7a
    return-void
.end method

.method public writeTo(ILcom/explorestack/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 852
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 853
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 854
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Lcom/explorestack/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 856
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v2, :cond_39

    .line 857
    :goto_1d
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    .line 858
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    .line 859
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 860
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 863
    :cond_39
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_41
    if-ltz v0, :cond_57

    .line 864
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    .line 865
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 866
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    :cond_57
    return-void
.end method

###### Class com.explorestack.protobuf.UnknownFieldSet.Field.Builder (com.explorestack.protobuf.UnknownFieldSet$Field$Builder)
.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 1

    .line 914
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 3

    .line 919
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;-><init>()V

    .line 920
    new-instance v1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;-><init>(Lcom/explorestack/protobuf/UnknownFieldSet$1;)V

    iput-object v1, v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method


# virtual methods
.method public addFixed32(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 4

    .line 1018
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1019
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1021
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFixed64(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 5

    .line 1027
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1028
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1030
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGroup(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 4

    .line 1045
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1046
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1048
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLengthDelimited(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 4

    .line 1036
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1037
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1039
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 5

    .line 1009
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1010
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1012
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    .line 933
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_1d

    .line 935
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 937
    :goto_1d
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 938
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_3a

    .line 940
    :cond_2d
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 942
    :goto_3a
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 943
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_57

    .line 945
    :cond_4a
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 947
    :goto_57
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_67

    .line 948
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_74

    .line 950
    :cond_67
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 952
    :goto_74
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_84

    .line 953
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_91

    .line 955
    :cond_84
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 958
    :goto_91
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    const/4 v1, 0x0

    .line 959
    iput-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .registers 4

    .line 974
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 975
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 976
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 978
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 980
    :cond_29
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 981
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_45

    .line 982
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 984
    :cond_45
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 986
    :cond_52
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 987
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 988
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 990
    :cond_6e
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 992
    :cond_7b
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 993
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_97

    .line 994
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 996
    :cond_97
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 998
    :cond_a4
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 999
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c0

    .line 1000
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1002
    :cond_c0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_cd
    return-object p0
.end method

###### Class com.explorestack.protobuf.UnknownFieldSet.Parser (com.explorestack.protobuf.UnknownFieldSet$Parser)
.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Parser;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/UnknownFieldSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1055
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1060
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p2

    .line 1062
    :try_start_4
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    :try_end_7
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_c

    .line 1068
    invoke-virtual {p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1

    :catch_c
    move-exception p1

    .line 1066
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1b
    move-exception p1

    .line 1064
    invoke-virtual {p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method
