###### Class com.explorestack.protobuf.UnknownFieldSetSchema (com.explorestack.protobuf.UnknownFieldSetSchema)
.class public Lcom/explorestack/protobuf/UnknownFieldSetSchema;
.super Lcom/explorestack/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/UnknownFieldSchema<",
        "Lcom/explorestack/protobuf/UnknownFieldSet;",
        "Lcom/explorestack/protobuf/UnknownFieldSet$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method public addFixed32(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;II)V
    .registers 5

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed32(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method public bridge synthetic addFixed32(Ljava/lang/Object;II)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->addFixed32(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;II)V

    return-void
.end method

.method public addFixed64(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;IJ)V
    .registers 6

    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed64(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method public bridge synthetic addFixed64(Ljava/lang/Object;IJ)V
    .registers 5

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->addFixed64(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;IJ)V

    return-void
.end method

.method public addGroup(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;ILcom/explorestack/protobuf/UnknownFieldSet;)V
    .registers 5

    .line 75
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addGroup(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method public bridge synthetic addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    check-cast p3, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->addGroup(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;ILcom/explorestack/protobuf/UnknownFieldSet;)V

    return-void
.end method

.method public addLengthDelimited(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;ILcom/explorestack/protobuf/ByteString;)V
    .registers 5

    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method public bridge synthetic addLengthDelimited(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V
    .registers 4

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->addLengthDelimited(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public addVarint(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;IJ)V
    .registers 6

    .line 55
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method public bridge synthetic addVarint(Ljava/lang/Object;IJ)V
    .registers 5

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->addVarint(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;IJ)V

    return-void
.end method

.method public getBuilderFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 2

    .line 105
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 95
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p1
.end method

.method public bridge synthetic getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->getFromMessage(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method public getSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSet;)I
    .registers 2

    .line 125
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSerializedSize(Ljava/lang/Object;)I
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->getSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSet;)I

    move-result p1

    return p1
.end method

.method public getSerializedSizeAsMessageSet(Lcom/explorestack/protobuf/UnknownFieldSet;)I
    .registers 2

    .line 130
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->getSerializedSizeAsMessageSet(Lcom/explorestack/protobuf/UnknownFieldSet;)I

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public merge(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 3

    .line 120
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->merge(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .registers 2

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBuilderToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;)V
    .registers 3

    .line 110
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method public bridge synthetic setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->setBuilderToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;)V

    return-void
.end method

.method public setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSet;)V
    .registers 3

    .line 100
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method public bridge synthetic setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p2, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->setToMessage(Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    return-void
.end method

.method public shouldDiscardUnknownFields(Lcom/explorestack/protobuf/Reader;)Z
    .registers 2

    .line 45
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->shouldDiscardUnknownFields()Z

    move-result p1

    return p1
.end method

.method public toImmutable(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 80
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->toImmutable(Lcom/explorestack/protobuf/UnknownFieldSet$Builder;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method public writeAsMessageSetTo(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/explorestack/protobuf/Writer;)V

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
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->writeAsMessageSetTo(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/Writer;)V

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
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetSchema;->writeTo(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method
