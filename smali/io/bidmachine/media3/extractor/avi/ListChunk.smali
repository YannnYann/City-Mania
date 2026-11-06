###### Class io.bidmachine.media3.extractor.avi.ListChunk (io.bidmachine.media3.extractor.avi.ListChunk)
.class public final Lio/bidmachine/media3/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "ListChunk.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/avi/AviChunk;


# instance fields
.field public final children:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/extractor/avi/AviChunk;",
            ">;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/extractor/avi/AviChunk;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ListChunk;->type:I

    .line 59
    iput-object p2, p0, Lio/bidmachine/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static createBox(IILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;
    .registers 3

    sparse-switch p0, :sswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    .line 89
    :sswitch_5
    invoke-static {p2}, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;->parseFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/StreamNameChunk;

    move-result-object p0

    return-object p0

    .line 85
    :sswitch_a
    invoke-static {p2}, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->parseFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    move-result-object p0

    return-object p0

    .line 83
    :sswitch_f
    invoke-static {p2}, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;->parseFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    move-result-object p0

    return-object p0

    .line 87
    :sswitch_14
    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->parseFrom(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x66727473 -> :sswitch_14
        0x68697661 -> :sswitch_f
        0x68727473 -> :sswitch_a
        0x6e727473 -> :sswitch_5
    .end sparse-switch
.end method

.method public static parseFrom(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/ListChunk;
    .registers 9

    .line 27
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, -0x2

    .line 30
    :goto_a
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_50

    .line 31
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 33
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    .line 34
    invoke-virtual {p1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_30

    .line 37
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 38
    invoke-static {v3, p1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->parseFrom(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/ListChunk;

    move-result-object v3

    goto :goto_34

    .line 40
    :cond_30
    invoke-static {v3, v2, p1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->createBox(IILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object v3

    :goto_34
    if-eqz v3, :cond_49

    .line 43
    invoke-interface {v3}, Lio/bidmachine/media3/extractor/avi/AviChunk;->getType()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_46

    .line 44
    move-object v2, v3

    check-cast v2, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v2

    .line 46
    :cond_46
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    :cond_49
    invoke-virtual {p1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 49
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_a

    .line 51
    :cond_50
    new-instance p1, Lio/bidmachine/media3/extractor/avi/ListChunk;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/bidmachine/media3/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object p1
.end method


# virtual methods
.method public getChild(Ljava/lang/Class;)Lio/bidmachine/media3/extractor/avi/AviChunk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/media3/extractor/avi/AviChunk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/avi/AviChunk;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()I
    .registers 2

    .line 64
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ListChunk;->type:I

    return v0
.end method
