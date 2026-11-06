###### Class io.blueflower.stapel2d.util.json.BinaryJsonReader (io.blueflower.stapel2d.util.json.BinaryJsonReader)
.class public final Lio/blueflower/stapel2d/util/json/BinaryJsonReader;
.super Ljava/lang/Object;
.source "BinaryJsonReader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/json/JsonReader;


# instance fields
.field public final in:Ljava/io/DataInputStream;

.field public final stack:Lio/blueflower/stapel2d/util/IntList;

.field public strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x5

    .line 15
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->push(I)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    if-eqz p1, :cond_1d

    .line 26
    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    return-void

    .line 24
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decodeTinyInt(I)I
    .registers 1

    .line 0
    shl-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final advance()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 113
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/4 v1, 0x0

    .line 114
    iput v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return v0
.end method

.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->expect(I)V

    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 38
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->expect(I)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    .line 353
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 354
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 355
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->expect(I)V

    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->expect(I)V

    return-void
.end method

.method public final expect(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 47
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    if-ne v0, p1, :cond_b

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    return-void

    .line 48
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 55
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/16 v1, 0xd

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final internalPeek()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    if-eqz v0, :cond_5

    return v0

    .line 77
    :cond_5
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->peekStack()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6e

    .line 106
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :pswitch_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_1c
    :try_start_1c
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextValue()I

    .line 99
    const-string v0, "Expected EOF"

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_26
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_26} :catch_26

    :catch_26
    const/16 v0, 0xd

    .line 101
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return v0

    :pswitch_2b
    const/4 v0, 0x6

    .line 79
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->replaceTop(I)V

    .line 80
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextValue()I

    move-result v0

    .line 81
    iget v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    if-eq v1, v2, :cond_54

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3b

    goto :goto_54

    .line 82
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    :goto_54
    return v0

    .line 95
    :pswitch_55
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInObject(Z)I

    move-result v0

    return v0

    .line 93
    :pswitch_5a
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->objectValue()I

    move-result v0

    return v0

    .line 91
    :pswitch_5f
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInObject(Z)I

    move-result v0

    return v0

    .line 89
    :pswitch_64
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInArray(Z)I

    move-result v0

    return v0

    .line 87
    :pswitch_69
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInArray(Z)I

    move-result v0

    return v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_2b
        :pswitch_1c
        :pswitch_14
    .end packed-switch
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 180
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x12

    if-ne v0, v1, :cond_16

    return v3

    .line 189
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    return v2

    .line 187
    :cond_2e
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-lez v0, :cond_37

    return v2

    :cond_37
    return v3
.end method

.method public nextByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 285
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_50

    const/16 v1, 0x9

    if-eq v0, v1, :cond_47

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3f

    const/16 v1, 0xf

    if-eq v0, v1, :cond_38

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_21

    .line 298
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 300
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a byte but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_38
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0

    .line 295
    :cond_3f
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 293
    :cond_47
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 291
    :cond_50
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public nextDouble()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 233
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_55

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4d

    packed-switch v0, :pswitch_data_66

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1f

    .line 250
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 252
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :pswitch_36
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0

    .line 247
    :pswitch_3d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 245
    :pswitch_45
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 243
    :cond_4d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 241
    :cond_55
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 239
    :cond_5d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    nop

    :pswitch_data_66
    .packed-switch 0xe
        :pswitch_45
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

.method public nextFloat()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 205
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_56

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4e

    packed-switch v0, :pswitch_data_66

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1f

    .line 222
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 224
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a float but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :pswitch_36
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 219
    :pswitch_3e
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    .line 217
    :pswitch_46
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    .line 215
    :cond_4e
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 213
    :cond_56
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 209
    :cond_5e
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0

    nop

    :pswitch_data_66
    .packed-switch 0xe
        :pswitch_46
        :pswitch_3e
        :pswitch_36
    .end packed-switch
.end method

.method public final nextInArray(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextValue()I

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 442
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->replaceTop(I)V

    .line 446
    :cond_9
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 447
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->pop()I

    .line 450
    :cond_11
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return p1
.end method

.method public final nextInObject(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextValue()I

    const/4 v0, 0x4

    if-eqz p1, :cond_10

    .line 457
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    if-ne p1, v0, :cond_1a

    .line 458
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->pop()I

    .line 459
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return p1

    .line 462
    :cond_10
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    if-ne p1, v0, :cond_1a

    .line 463
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->pop()I

    .line 464
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return p1

    .line 468
    :cond_1a
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_2f

    :cond_2b
    const/4 p1, 0x3

    .line 469
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->replaceTop(I)V

    .line 472
    :cond_2f
    iget p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return p1
.end method

.method public nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 331
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_45

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3e

    const/16 v1, 0xf

    if-eq v0, v1, :cond_37

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_20

    .line 344
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    return v0

    .line 346
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a int but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_37
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0

    .line 339
    :cond_3e
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0

    .line 337
    :cond_45
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 335
    :cond_4d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 308
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4f

    const/16 v1, 0x9

    if-eq v0, v1, :cond_48

    const/16 v1, 0xe

    if-eq v0, v1, :cond_40

    const/16 v1, 0xf

    if-eq v0, v1, :cond_38

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_21

    .line 321
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 323
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a long but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_38
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 316
    :cond_40
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 312
    :cond_48
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 314
    :cond_4f
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 121
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2e

    if-eq v0, v3, :cond_2e

    if-eq v0, v2, :cond_2e

    if-ne v0, v1, :cond_15

    goto :goto_2e

    .line 122
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_2e
    if-ne v0, v4, :cond_35

    .line 126
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 128
    :cond_35
    invoke-virtual {p0, v0, v3, v2, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->readString(IIII)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    return-object v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 195
    iget v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d

    .line 199
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    return-void

    .line 196
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 261
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_50

    const/16 v1, 0x9

    if-eq v0, v1, :cond_47

    const/16 v1, 0xe

    if-eq v0, v1, :cond_40

    const/16 v1, 0xf

    if-eq v0, v1, :cond_38

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_21

    .line 274
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 276
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a short but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_38
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    .line 265
    :cond_40
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0

    .line 269
    :cond_47
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 267
    :cond_50
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 137
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    move-result v0

    .line 139
    const-string v1, "true"

    const-string v2, "false"

    packed-switch v0, :pswitch_data_90

    :pswitch_e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1b

    .line 166
    invoke-static {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->decodeTinyInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_32
    const/16 v1, 0x17

    const/16 v2, 0x18

    const/16 v3, 0x16

    .line 145
    invoke-virtual {p0, v0, v3, v1, v2}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->readString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3d
    return-object v2

    :pswitch_3e
    return-object v1

    .line 163
    :pswitch_3f
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_4a
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_55
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :pswitch_60
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-lez v0, :cond_69

    return-object v1

    :cond_69
    return-object v2

    .line 149
    :pswitch_6a
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_75
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_80
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_8b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_90
    .packed-switch 0x6
        :pswitch_8b
        :pswitch_80
        :pswitch_75
        :pswitch_6a
        :pswitch_e
        :pswitch_60
        :pswitch_e
        :pswitch_e
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public final nextValue()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 491
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return v0

    :cond_f
    const/4 v0, 0x2

    .line 484
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->push(I)V

    .line 485
    iput v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return v1

    :cond_16
    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->push(I)V

    .line 489
    iput v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    return v1
.end method

.method public final objectValue()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 476
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->replaceTop(I)V

    .line 477
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextValue()I

    move-result v0

    return v0
.end method

.method public peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_10

    const/16 v1, 0x14

    if-eq v0, v1, :cond_10

    const/16 v1, 0x15

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v0, 0x5

    :cond_11
    const/16 v1, 0x16

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/4 v0, 0x6

    :cond_1e
    const/16 v1, 0x11

    if-eq v0, v1, :cond_28

    const/16 v1, 0x12

    if-ne v0, v1, :cond_27

    goto :goto_28

    :cond_27
    return v0

    :cond_28
    :goto_28
    const/16 v0, 0xb

    return v0
.end method

.method public final peekStack()I
    .registers 3

    .line 423
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public final pop()I
    .registers 3

    .line 427
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    return v0
.end method

.method public final push(I)V
    .registers 3

    .line 431
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public final readString(IIII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p2, :cond_e

    .line 516
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 517
    iget-object p2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_e
    if-ne p1, p3, :cond_1f

    .line 520
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    iget-object p2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1f
    if-ne p1, p4, :cond_39

    .line 522
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    .line 523
    iget-object p2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    mul-int/lit16 p1, p1, 0x100

    iget-object p3, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p3

    add-int/2addr p1, p3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public final replaceTop(I)V
    .registers 4

    .line 435
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public skipValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->internalPeek()I

    .line 367
    iget v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->token:I

    packed-switch v1, :pswitch_data_48

    :pswitch_9
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_11

    .line 413
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInt()I

    goto :goto_44

    .line 415
    :cond_11
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    goto :goto_44

    .line 403
    :pswitch_15
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextDouble()D

    goto :goto_44

    .line 409
    :pswitch_19
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextByte()B

    goto :goto_44

    .line 406
    :pswitch_1d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextShort()S

    goto :goto_44

    .line 400
    :pswitch_21
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextBoolean()Z

    goto :goto_44

    .line 394
    :pswitch_25
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextLong()J

    goto :goto_44

    .line 391
    :pswitch_29
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextInt()I

    goto :goto_44

    .line 397
    :pswitch_2d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextFloat()F

    goto :goto_44

    .line 388
    :pswitch_31
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextString()Ljava/lang/String;

    goto :goto_44

    .line 382
    :pswitch_35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->nextName()Ljava/lang/String;

    goto :goto_44

    :pswitch_39
    add-int/lit8 v0, v0, -0x1

    .line 376
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    goto :goto_44

    :pswitch_3f
    add-int/lit8 v0, v0, 0x1

    .line 371
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->advance()I

    :goto_44
    if-nez v0, :cond_1

    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_39
        :pswitch_3f
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_9
        :pswitch_21
        :pswitch_9
        :pswitch_9
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_9
        :pswitch_9
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public final string()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_14

    .line 504
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 508
    :cond_14
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    .line 510
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;->strings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    new-instance v0, Lio/blueflower/stapel2d/util/json/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line ??? column ???"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/blueflower/stapel2d/util/json/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
