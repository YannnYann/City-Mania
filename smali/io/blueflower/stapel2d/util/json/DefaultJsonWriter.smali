###### Class io.blueflower.stapel2d.util.json.DefaultJsonWriter (io.blueflower.stapel2d.util.json.DefaultJsonWriter)
.class public final Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
.super Ljava/lang/Object;
.source "DefaultJsonWriter.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/json/JsonWriter;


# instance fields
.field public indent:Ljava/lang/String;

.field public lenient:Z

.field public final out:Ljava/io/Writer;

.field public separator:Ljava/lang/String;

.field public final stack:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x5

    .line 126
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 138
    const-string v0, ":"

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->separator:Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 151
    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    return-void

    .line 149
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beforeName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 513
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_12

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 517
    :goto_12
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->newline()V

    const/4 v0, 0x3

    .line 518
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->replaceTop(I)V

    return-void

    .line 515
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    if-eq v0, v1, :cond_52

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_33

    if-eq v0, v2, :cond_2b

    .line 559
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nesting problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :cond_33
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->lenient:Z

    if-nez v0, :cond_42

    if-eqz p1, :cond_3a

    goto :goto_42

    .line 533
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must start with an array or an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_42
    :goto_42
    invoke-direct {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->replaceTop(I)V

    return-void

    .line 550
    :cond_46
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 p1, 0x4

    .line 551
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->replaceTop(I)V

    return-void

    .line 545
    :cond_52
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 546
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->newline()V

    return-void

    .line 540
    :cond_5d
    invoke-direct {p0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->replaceTop(I)V

    .line 541
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->newline()V

    return-void
.end method

.method private peek()I
    .registers 3

    .line 267
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method private replaceTop(I)V
    .registers 4

    .line 274
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method


# virtual methods
.method public beginArray()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->open(ILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 221
    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->open(ILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final close(IILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_22

    if-ne v0, p1, :cond_9

    goto :goto_22

    .line 252
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Nesting problem: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_22
    :goto_22
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    if-ne v0, p2, :cond_32

    .line 257
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->newline()V

    .line 259
    :cond_32
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 429
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    return-void

    .line 430
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 211
    const-string v1, "]"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->close(IILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 230
    const-string v1, "}"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->close(IILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 287
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeName()V

    .line 288
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->string(Ljava/lang/String;)V

    return-object p0

    .line 285
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public final newline()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 500
    :cond_5
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 501
    :goto_d
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 502
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    :goto_1f
    return-void
.end method

.method public nullValue()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 314
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic nullValue()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final open(ILjava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 239
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 240
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final string(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_93

    .line 437
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_88

    const/16 v4, 0xd

    if-eq v3, v4, :cond_80

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_75

    if-eq v3, v5, :cond_75

    const/16 v4, 0x2028

    .line 450
    const-string v5, "\\u%04x"

    if-eq v3, v4, :cond_63

    const/16 v4, 0x2029

    if-eq v3, v4, :cond_63

    packed-switch v3, :pswitch_data_9a

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_45

    .line 484
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 486
    :cond_45
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_8f

    .line 466
    :pswitch_4b
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 458
    :pswitch_53
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 462
    :pswitch_5b
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 479
    :cond_63
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 453
    :cond_75
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 454
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_8f

    .line 470
    :cond_80
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8f

    .line 474
    :cond_88
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 492
    :cond_93
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x8
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
    .end packed-switch
.end method

.method public value(F)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->lenient:Z

    if-nez v0, :cond_28

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 338
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 341
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(I)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 363
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(J)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 352
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 300
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 303
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Z)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 325
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_b

    const-string p1, "true"

    goto :goto_d

    :cond_b
    const-string p1, "false"

    :goto_d
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 387
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->lenient:Z

    if-nez v0, :cond_28

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 370
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->beforeValue(Z)V

    .line 373
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public bridge synthetic value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    move-result-object p1

    return-object p1
.end method
