###### Class com.explorestack.protobuf.RopeByteString (com.explorestack.protobuf.RopeByteString)
.class public final Lcom/explorestack/protobuf/RopeByteString;
.super Lcom/explorestack/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;,
        Lcom/explorestack/protobuf/RopeByteString$PieceIterator;,
        Lcom/explorestack/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field public static final minLengthByDepth:[I


# instance fields
.field public final left:Lcom/explorestack/protobuf/ByteString;

.field public final leftLength:I

.field public final right:Lcom/explorestack/protobuf/ByteString;

.field public final totalLength:I

.field public final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    .line 83
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/explorestack/protobuf/RopeByteString;->minLengthByDepth:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V
    .registers 5

    .line 146
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    .line 148
    iput-object p2, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    .line 149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    .line 150
    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    .line 151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/RopeByteString;->treeDepth:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    return-object p0
.end method

.method public static concatenate(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 7

    .line 168
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 176
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 180
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/RopeByteString;->concatenateBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 183
    :cond_20
    instance-of v2, p0, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v2, :cond_69

    .line 184
    move-object v2, p0

    check-cast v2, Lcom/explorestack/protobuf/RopeByteString;

    .line 185
    iget-object v3, v2, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    .line 196
    iget-object p0, v2, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/RopeByteString;->concatenateBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    .line 197
    new-instance p1, Lcom/explorestack/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    return-object p1

    .line 200
    :cond_42
    iget-object v1, v2, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 201
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 207
    new-instance p0, Lcom/explorestack/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p0, v0, p1}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    .line 208
    new-instance p1, Lcom/explorestack/protobuf/RopeByteString;

    iget-object v0, v2, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    return-object p1

    .line 213
    :cond_69
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 214
    invoke-static {v1}, Lcom/explorestack/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_83

    .line 216
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    return-object v0

    .line 219
    :cond_83
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$Balancer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;-><init>(Lcom/explorestack/protobuf/RopeByteString$1;)V

    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->access$100(Lcom/explorestack/protobuf/RopeByteString$Balancer;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static concatenateBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 6

    .line 231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    .line 232
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 233
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/explorestack/protobuf/ByteString;->copyTo([BIII)V

    .line 235
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/explorestack/protobuf/ByteString;->copyTo([BIII)V

    .line 236
    invoke-static {v2}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static minLength(I)I
    .registers 3

    .line 263
    sget-object v0, Lcom/explorestack/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v1, v0

    if-lt p0, v1, :cond_9

    const p0, 0x7fffffff

    return p0

    .line 266
    :cond_9
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    new-instance v1, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    .line 432
    :goto_b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 433
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    .line 280
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/ByteString;->checkIndex(II)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public copyToInternal([BIII)V
    .registers 7

    add-int v0, p2, p4

    .line 403
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 404
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    .line 406
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    return-void

    :cond_15
    sub-int/2addr v1, p2

    .line 409
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    .line 410
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 507
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 511
    :cond_a
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    .line 512
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 515
    :cond_15
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    if-nez v1, :cond_1a

    return v0

    .line 524
    :cond_1a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 525
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    if-eq v0, v1, :cond_29

    return v2

    .line 530
    :cond_29
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString;->equalsFragments(Lcom/explorestack/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method public final equalsFragments(Lcom/explorestack/protobuf/ByteString;)Z
    .registers 13

    .line 542
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    .line 543
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    .line 546
    new-instance v3, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    .line 547
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    .line 551
    :goto_1b
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 552
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 553
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_30

    .line 558
    invoke-virtual {v2, p1, v5, v9}, Lcom/explorestack/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_34

    .line 559
    :cond_30
    invoke-virtual {p1, v2, v4, v9}, Lcom/explorestack/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z

    move-result v10

    :goto_34
    if-nez v10, :cond_37

    return v1

    :cond_37
    add-int/2addr v6, v9

    .line 565
    iget v10, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v10, :cond_46

    if-ne v6, v10, :cond_40

    const/4 p1, 0x1

    return p1

    .line 569
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_46
    if-ne v9, v7, :cond_50

    .line 574
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move v4, v1

    goto :goto_51

    :cond_50
    add-int/2addr v4, v9

    :goto_51
    if-ne v9, v8, :cond_5b

    .line 580
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move v5, v1

    goto :goto_1b

    :cond_5b
    add-int/2addr v5, v9

    goto :goto_1b
.end method

.method public getTreeDepth()I
    .registers 2

    .line 335
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public internalByteAt(I)B
    .registers 4

    .line 287
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_b

    .line 288
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/ByteString;->internalByteAt(I)B

    move-result p1

    return p1
.end method

.method public isBalanced()Z
    .registers 3

    .line 347
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->treeDepth:I

    invoke-static {v1}, Lcom/explorestack/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isValidUtf8()Z
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v2
.end method

.method public iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 301
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RopeByteString$1;-><init>(Lcom/explorestack/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;
    .registers 3

    .line 611
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString;->asReadOnlyByteBufferList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 2

    .line 616
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/explorestack/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public partialHash(III)I
    .registers 6

    add-int v0, p2, p3

    .line 590
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 591
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 593
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 596
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/explorestack/protobuf/ByteString;->partialHash(III)I

    move-result p1

    .line 597
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/explorestack/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1
.end method

.method public partialIsValidUtf8(III)I
    .registers 6

    add-int v0, p2, p3

    .line 488
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 489
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 491
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 494
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    .line 495
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/explorestack/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 296
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/explorestack/protobuf/ByteString;
    .registers 5

    .line 365
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    move-result v0

    if-nez v0, :cond_b

    .line 369
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object p1

    .line 372
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_10

    return-object p0

    .line 378
    :cond_10
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v0, :cond_1b

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    .line 385
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 389
    :cond_26
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->substring(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p2

    .line 394
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {v0, p1, p2}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)V

    return-object v0
.end method

.method public toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 472
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/ByteOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Lcom/explorestack/protobuf/ByteOutput;)V

    .line 461
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Lcom/explorestack/protobuf/ByteOutput;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 442
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 447
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 448
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    .line 450
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    return-void

    :cond_15
    sub-int/2addr v1, p2

    .line 453
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/explorestack/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 454
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/explorestack/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->right:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V

    .line 467
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString;->left:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V

    return-void
.end method

###### Class com.explorestack.protobuf.RopeByteString.AnonymousClass1 (com.explorestack.protobuf.RopeByteString$1)
.class public Lcom/explorestack/protobuf/RopeByteString$1;
.super Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/RopeByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

.field public final pieces:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

.field public final synthetic this$0:Lcom/explorestack/protobuf/RopeByteString;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/RopeByteString;)V
    .registers 4

    .line 301
    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$1;->this$0:Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 302
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$1;->pieces:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    .line 303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$1;->nextPiece()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$1;->current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$1;->current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public nextByte()B
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$1;->current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_17

    .line 321
    invoke-interface {v0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$1;->current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$1;->nextPiece()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$1;->current:Lcom/explorestack/protobuf/ByteString$ByteIterator;

    :cond_16
    return v0

    .line 319
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextPiece()Lcom/explorestack/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$1;->pieces:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$1;->pieces:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.explorestack.protobuf.RopeByteString.Balancer (com.explorestack.protobuf.RopeByteString$Balancer)
.class public Lcom/explorestack/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Balancer"
.end annotation


# instance fields
.field public final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/RopeByteString$1;)V
    .registers 2

    .line 628
    invoke-direct {p0}, Lcom/explorestack/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/explorestack/protobuf/RopeByteString$Balancer;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->balance(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final balance(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 5

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->doBalance(Lcom/explorestack/protobuf/ByteString;)V

    .line 636
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->doBalance(Lcom/explorestack/protobuf/ByteString;)V

    .line 639
    iget-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    .line 640
    :goto_e
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 641
    iget-object p2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    .line 642
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method public final doBalance(Lcom/explorestack/protobuf/ByteString;)V
    .registers 5

    .line 654
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 655
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->insert(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 656
    :cond_a
    instance-of v0, p1, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v0, :cond_1f

    .line 657
    check-cast p1, Lcom/explorestack/protobuf/RopeByteString;

    .line 658
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->doBalance(Lcom/explorestack/protobuf/ByteString;)V

    .line 659
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$500(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->doBalance(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 661
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDepthBinForLength(I)I
    .registers 3

    .line 717
    sget-object v0, Lcom/explorestack/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_d

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_d
    return p1
.end method

.method public final insert(Lcom/explorestack/protobuf/ByteString;)V
    .registers 7

    .line 679
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 680
    invoke-static {v1}, Lcom/explorestack/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 686
    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_25

    goto :goto_95

    .line 689
    :cond_25
    invoke-static {v0}, Lcom/explorestack/protobuf/RopeByteString;->minLength(I)I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 693
    :goto_31
    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_57

    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_57

    .line 694
    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 695
    new-instance v4, Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    move-object v1, v4

    goto :goto_31

    .line 699
    :cond_57
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    .line 702
    :goto_5c
    iget-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 703
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 704
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->minLength(I)I

    move-result p1

    .line 705
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_8f

    .line 706
    iget-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    .line 707
    new-instance v1, Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/explorestack/protobuf/RopeByteString;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    move-object v0, v1

    goto :goto_5c

    .line 712
    :cond_8f
    iget-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 687
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.explorestack.protobuf.RopeByteString.PieceIterator (com.explorestack.protobuf.RopeByteString$PieceIterator)
.class public final Lcom/explorestack/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/explorestack/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field public final breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/explorestack/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field public next:Lcom/explorestack/protobuf/ByteString$LeafByteString;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/ByteString;)V
    .registers 4

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    instance-of v0, p1, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v0, :cond_22

    .line 742
    check-cast p1, Lcom/explorestack/protobuf/RopeByteString;

    .line 743
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 744
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 745
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 748
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V
    .registers 3

    .line 736
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method


# virtual methods
.method public final getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 754
    :goto_0
    instance-of v0, p1, Lcom/explorestack/protobuf/RopeByteString;

    if-eqz v0, :cond_10

    .line 755
    check-cast p1, Lcom/explorestack/protobuf/RopeByteString;

    .line 756
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 757
    invoke-static {p1}, Lcom/explorestack/protobuf/RopeByteString;->access$400(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 759
    :cond_10
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-object p1
.end method

.method public final getNextNonEmptyLeaf()Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 769
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/RopeByteString;

    invoke-static {v0}, Lcom/explorestack/protobuf/RopeByteString;->access$500(Lcom/explorestack/protobuf/RopeByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/explorestack/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_b

    .line 793
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    return-object v0

    .line 790
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 799
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.explorestack.protobuf.RopeByteString.RopeInputStream (com.explorestack.protobuf.RopeByteString$RopeInputStream)
.class public Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RopeInputStream"
.end annotation


# instance fields
.field public currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

.field public currentPieceIndex:I

.field public currentPieceOffsetInRope:I

.field public currentPieceSize:I

.field public mark:I

.field public pieceIterator:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

.field public final synthetic this$0:Lcom/explorestack/protobuf/RopeByteString;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/RopeByteString;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/explorestack/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 832
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->initialize()V

    return-void
.end method


# virtual methods
.method public final advanceIfCurrentPieceFullyRead()V
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    if-ne v0, v1, :cond_2e

    .line 954
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    const/4 v0, 0x0

    .line 955
    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 956
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 957
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    .line 958
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    return-void

    :cond_29
    const/4 v1, 0x0

    .line 960
    iput-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    .line 961
    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    :cond_2e
    return-void
.end method

.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->availableInternal()I

    move-result v0

    return v0
.end method

.method public final availableInternal()I
    .registers 3

    .line 968
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v0, v1

    .line 969
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/explorestack/protobuf/RopeByteString;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/RopeByteString;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final initialize()V
    .registers 4

    .line 939
    new-instance v0, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/explorestack/protobuf/RopeByteString;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/explorestack/protobuf/RopeByteString$PieceIterator;

    .line 940
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RopeByteString$PieceIterator;->next()Lcom/explorestack/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    .line 941
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    const/4 v0, 0x0

    .line 942
    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 943
    iput v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    return-void
.end method

.method public mark(I)V
    .registers 3

    .line 927
    iget p1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 907
    iget-object v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    .line 910
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 848
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    .line 849
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1b

    .line 852
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    if-nez p1, :cond_1a

    if-gtz p3, :cond_19

    .line 853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->availableInternal()I

    move-result p2

    if-nez p2, :cond_1a

    :cond_19
    const/4 p1, -0x1

    :cond_1a
    return p1

    .line 850
    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final readSkipInternal([BII)I
    .registers 8

    move v0, p3

    :goto_1
    if-lez v0, :cond_25

    .line 885
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 886
    iget-object v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    if-nez v1, :cond_b

    goto :goto_25

    .line 890
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    iget v2, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int/2addr v1, v2

    .line 891
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1e

    .line 893
    iget-object v2, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/explorestack/protobuf/ByteString$LeafByteString;

    iget v3, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/explorestack/protobuf/ByteString;->copyTo([BIII)V

    add-int/2addr p2, v1

    .line 896
    :cond_1e
    iget v2, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_25
    :goto_25
    sub-int/2addr p3, v0

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 933
    :try_start_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->initialize()V

    .line 934
    iget v0, p0, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->mark:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 935
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const/4 v0, 0x0

    long-to-int p1, p1

    const/4 p2, 0x0

    .line 870
    invoke-virtual {p0, p2, v0, p1}, Lcom/explorestack/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 866
    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
