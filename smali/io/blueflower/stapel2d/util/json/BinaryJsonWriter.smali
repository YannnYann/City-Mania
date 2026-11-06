###### Class io.blueflower.stapel2d.util.json.BinaryJsonWriter (io.blueflower.stapel2d.util.json.BinaryJsonWriter)
.class public final Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
.super Ljava/lang/Object;
.source "BinaryJsonWriter.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/json/JsonWriter;


# static fields
.field public static USE_TINY_INT_ENCODING:Z = false


# instance fields
.field public final out:Ljava/io/DataOutputStream;

.field public final stack:Lio/blueflower/stapel2d/util/IntList;

.field public stringCount:I

.field public final stringOccurrences:Lio/blueflower/stapel2d/util/IntList;

.field public final stringToIndex:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringToIndex:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringCount:I

    .line 23
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringOccurrences:Lio/blueflower/stapel2d/util/IntList;

    .line 25
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x5

    .line 27
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    if-eqz p1, :cond_24

    .line 34
    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    return-void

    .line 32
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final beforeName()V
    .registers 4

    .line 226
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    goto :goto_b

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    :goto_b
    const/4 v0, 0x3

    .line 231
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->replaceTop(I)V

    return-void

    .line 229
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->getPrintableStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final beforeValue(Z)V
    .registers 5

    .line 235
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    if-eq v0, v1, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_33

    if-eq v0, v2, :cond_2b

    .line 260
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nesting problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    if-eqz p1, :cond_39

    .line 241
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->replaceTop(I)V

    return-void

    .line 238
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must start with an array or an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    const/4 p1, 0x4

    .line 252
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->replaceTop(I)V

    :cond_45
    return-void

    .line 245
    :cond_46
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->replaceTop(I)V

    return-void
.end method

.method public beginArray()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->open(II)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 63
    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->open(II)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final close(III)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_24

    if-ne v0, p1, :cond_9

    goto :goto_24

    .line 81
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Nesting problem: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->getPrintableStack()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_24
    :goto_24
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 86
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    int-to-byte p2, p3

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 220
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    return-void

    .line 221
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v2, v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->close(III)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 67
    invoke-virtual {p0, v0, v1, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->close(III)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final findOrCreateStringReference(Ljava/lang/String;)I
    .registers 7

    .line 282
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringToIndex:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_15

    .line 284
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringOccurrences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return v0

    .line 287
    :cond_15
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringToIndex:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v3, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringCount:I

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 288
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringOccurrences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return v1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public final getPrintableStack()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stack is ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 47
    :goto_8
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 48
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2b

    const-string v2, ", "

    goto :goto_2d

    :cond_2b
    const-string v2, ""

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 50
    :cond_33
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 102
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeName()V

    const/16 v0, 0x14

    const/16 v1, 0x15

    const/16 v2, 0x13

    .line 104
    invoke-virtual {p0, p1, v2, v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->writeString(Ljava/lang/String;III)V

    return-object p0

    .line 100
    :cond_f
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

    .line 10
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public nullValue()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 122
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public bridge synthetic nullValue()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final open(II)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 73
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public final peek()I
    .registers 3

    .line 91
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public final replaceTop(I)V
    .registers 4

    .line 95
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 38
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringToIndex:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringCount:I

    .line 40
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stringOccurrences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 41
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 42
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public value(F)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_27

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_17

    .line 138
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 142
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-object p0

    .line 134
    :cond_27
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
.end method

.method public value(I)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x80

    if-lt p1, v0, :cond_d

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_d

    int-to-byte p1, p1

    .line 160
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-object p0

    :cond_d
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1a

    int-to-short p1, p1

    .line 162
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(S)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-object p0

    :cond_1a
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 165
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 166
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public value(J)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_13

    long-to-int p1, p1

    .line 149
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    return-object p0

    :cond_13
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 152
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 111
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    const/16 v0, 0x17

    const/16 v1, 0x18

    const/16 v2, 0x16

    .line 115
    invoke-virtual {p0, p1, v2, v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->writeString(Ljava/lang/String;III)V

    return-object p0
.end method

.method public value(Z)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 128
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_b

    const/16 p1, 0x11

    goto :goto_d

    :cond_b
    const/16 p1, 0x12

    :goto_d
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 202
    sget-boolean v0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->USE_TINY_INT_ENCODING:Z

    if-eqz v0, :cond_18

    const/16 v0, -0x40

    if-gt v0, p1, :cond_18

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_18

    .line 204
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0

    .line 207
    :cond_18
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 208
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_28

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_17

    .line 178
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 182
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-object p0

    .line 174
    :cond_28
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

    .line 10
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

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

    .line 10
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(S)Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x80

    if-lt p1, v0, :cond_d

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_d

    int-to-byte p1, p1

    .line 190
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-object p0

    :cond_d
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->beforeValue(Z)V

    .line 193
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 194
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-object p0
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

    .line 10
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    move-result-object p1

    return-object p1
.end method

.method public final writeString(Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->findOrCreateStringReference(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2e

    const v1, 0xffff

    if-gt v0, v1, :cond_2e

    const/16 p1, 0xff

    if-gt v0, p1, :cond_1a

    .line 268
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 269
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    .line 271
    :cond_1a
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 272
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    div-int/lit16 p2, v0, 0x100

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 273
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    rem-int/lit16 v0, v0, 0x100

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    .line 276
    :cond_2e
    iget-object p3, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    iget-object p2, p0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
