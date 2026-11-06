###### Class com.explorestack.protobuf.UnknownFieldSetLiteSchema (com.explorestack.protobuf.UnknownFieldSetLiteSchema)
.class public Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/explorestack/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/UnknownFieldSchema<",
        "Lcom/explorestack/protobuf/UnknownFieldSetLite;",
        "Lcom/explorestack/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public addFixed32(Lcom/explorestack/protobuf/UnknownFieldSetLite;II)V
    .registers 5

    const/4 v0, 0x5

    .line 58
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addFixed32(Ljava/lang/Object;II)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->addFixed32(Lcom/explorestack/protobuf/UnknownFieldSetLite;II)V

    return-void
.end method

.method public addFixed64(Lcom/explorestack/protobuf/UnknownFieldSetLite;IJ)V
    .registers 6

    const/4 v0, 0x1

    .line 63
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addFixed64(Ljava/lang/Object;IJ)V
    .registers 5

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->addFixed64(Lcom/explorestack/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public addGroup(Lcom/explorestack/protobuf/UnknownFieldSetLite;ILcom/explorestack/protobuf/UnknownFieldSetLite;)V
    .registers 5

    const/4 v0, 0x3

    .line 73
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->addGroup(Lcom/explorestack/protobuf/UnknownFieldSetLite;ILcom/explorestack/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public addLengthDelimited(Lcom/explorestack/protobuf/UnknownFieldSetLite;ILcom/explorestack/protobuf/ByteString;)V
    .registers 5

    const/4 v0, 0x2

    .line 68
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addLengthDelimited(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->addLengthDelimited(Lcom/explorestack/protobuf/UnknownFieldSetLite;ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public addVarint(Lcom/explorestack/protobuf/UnknownFieldSetLite;IJ)V
    .registers 6

    const/4 v0, 0x0

    .line 53
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addVarint(Ljava/lang/Object;IJ)V
    .registers 5

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->addVarint(Lcom/explorestack/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public getBuilderFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 94
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 98
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->newInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V

    :cond_11
    return-object v0
.end method

.method public bridge synthetic getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method public getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 89
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    return-object p1
.end method

.method public bridge synthetic getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method public getSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSetLite;)I
    .registers 2

    .line 133
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSerializedSize(Ljava/lang/Object;)I
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method public getSerializedSizeAsMessageSet(Lcom/explorestack/protobuf/UnknownFieldSetLite;)I
    .registers 2

    .line 138
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getSerializedSizeAsMessageSet()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getSerializedSizeAsMessageSet(Lcom/explorestack/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->makeImmutable()V

    return-void
.end method

.method public merge(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 126
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 128
    :cond_b
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->merge(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->newInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public setBuilderToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public bridge synthetic setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->setBuilderToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V
    .registers 3

    .line 84
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public bridge synthetic setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public shouldDiscardUnknownFields(Lcom/explorestack/protobuf/Reader;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public toImmutable(Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->makeImmutable()V

    return-object p1
.end method

.method public bridge synthetic toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->toImmutable(Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method public writeAsMessageSetTo(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeAsMessageSetTo(Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic writeAsMessageSetTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->writeAsMessageSetTo(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;->writeTo(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method
