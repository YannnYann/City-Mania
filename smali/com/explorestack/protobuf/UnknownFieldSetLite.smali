###### Class com.explorestack.protobuf.UnknownFieldSetLite (com.explorestack.protobuf.UnknownFieldSetLite)
.class public final Lcom/explorestack/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/UnknownFieldSetLite;


# instance fields
.field public count:I

.field public isMutable:Z

.field public memoizedSerializedSize:I

.field public objects:[Ljava/lang/Object;

.field public tags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    .line 99
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 104
    iput p1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    .line 105
    iput-object p2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    .line 106
    iput-object p3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 107
    iput-boolean p4, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 61
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method public static hashCode([II)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return v0
.end method

.method public static hashCode([Ljava/lang/Object;I)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method public static mutableCopyOf(Lcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/UnknownFieldSetLite;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 8

    .line 74
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 76
    iget-object v2, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget-object v3, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static newInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 66
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method public static objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_12

    .line 315
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static tagsEquals([I[II)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_e

    .line 306
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static writeField(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 208
    invoke-static {p0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p0

    if-eqz p0, :cond_5a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_50

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x5

    if-ne p0, v1, :cond_20

    .line 213
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    return-void

    .line 234
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 222
    :cond_2a
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne p0, v1, :cond_3e

    .line 223
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    .line 224
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 225
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    return-void

    .line 227
    :cond_3e
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    .line 228
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 229
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    return-void

    .line 219
    :cond_4a
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 216
    :cond_50
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    return-void

    .line 210
    :cond_5a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    return-void
.end method


# virtual methods
.method public checkMutable()V
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ensureCapacity()V
    .registers 4

    .line 400
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1e

    const/4 v2, 0x4

    if-ge v0, v2, :cond_d

    const/16 v2, 0x8

    goto :goto_f

    :cond_d
    shr-int/lit8 v2, v0, 0x1

    :goto_f
    add-int/2addr v0, v2

    .line 404
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    .line 405
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 332
    :cond_8
    instance-of v2, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_d

    return v1

    .line 336
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 337
    iget v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ne v2, v3, :cond_2d

    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    .line 338
    invoke-static {v3, v4, v2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tagsEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    .line 339
    invoke-static {v2, p1, v3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getSerializedSize()I
    .registers 7

    .line 267
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 273
    :goto_8
    iget v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_7d

    .line 274
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 275
    invoke-static {v2}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 276
    invoke-static {v2}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_51

    const/4 v5, 0x3

    if-eq v2, v5, :cond_40

    const/4 v4, 0x5

    if-ne v2, v4, :cond_36

    .line 281
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    :goto_34
    add-int/2addr v1, v2

    goto :goto_7a

    .line 295
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_40
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 292
    invoke-virtual {v3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_34

    .line 287
    :cond_51
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    goto :goto_34

    .line 284
    :cond_5c
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    goto :goto_34

    .line 278
    :cond_6b
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    goto :goto_34

    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 299
    :cond_7d
    iput v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public getSerializedSizeAsMessageSet()I
    .registers 5

    .line 243
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 249
    :goto_8
    iget v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_22

    .line 250
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 251
    invoke-static {v2}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 252
    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    .line 253
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 256
    :cond_22
    iput v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 366
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public makeImmutable()V
    .registers 2

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method public final printWithIndent(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    .line 382
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1b

    .line 383
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/explorestack/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public storeField(ILjava/lang/Object;)V
    .registers 5

    .line 390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 391
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 394
    iget-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 395
    iput v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    return-void
.end method

.method public writeAsMessageSetTo(Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    .line 175
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_37

    .line 176
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    .line 181
    :goto_21
    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_37

    .line 182
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_37
    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_5

    goto :goto_34

    .line 195
    :cond_5
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 196
    :goto_e
    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_34

    .line 197
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 200
    :cond_20
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_34

    .line 201
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_34
    :goto_34
    return-void
.end method
