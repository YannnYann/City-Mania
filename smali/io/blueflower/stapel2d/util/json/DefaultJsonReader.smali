###### Class io.blueflower.stapel2d.util.json.DefaultJsonReader (io.blueflower.stapel2d.util.json.DefaultJsonReader)
.class public final Lio/blueflower/stapel2d/util/json/DefaultJsonReader;
.super Ljava/lang/Object;
.source "DefaultJsonReader.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/json/JsonReader;


# instance fields
.field public final buffer:[C

.field public bufferStartColumn:I

.field public bufferStartLine:I

.field public final in:Ljava/io/Reader;

.field public lenient:Z

.field public limit:I

.field public name:Ljava/lang/String;

.field public pos:I

.field public skipping:Z

.field public final stack:Lio/blueflower/stapel2d/util/IntList;

.field public final stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

.field public token:I

.field public value:Ljava/lang/String;

.field public valueLength:I

.field public valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lio/blueflower/stapel2d/util/json/StringPool;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/json/StringPool;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->lenient:Z

    const/16 v1, 0x400

    .line 193
    new-array v1, v1, [C

    iput-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    .line 194
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 195
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartLine:I

    .line 201
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    .line 203
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x5

    .line 205
    invoke-direct {p0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->push(I)V

    .line 212
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    .line 226
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    if-eqz p1, :cond_30

    .line 235
    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->in:Ljava/io/Reader;

    return-void

    .line 233
    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private advance()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 371
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x0

    .line 372
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x0

    .line 373
    iput-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->name:Ljava/lang/String;

    return v0
.end method

.method private expect(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 307
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    if-ne v0, p1, :cond_b

    .line 310
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-void

    .line 308
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextInArray(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x5d

    const/16 v2, 0x3b

    const/16 v3, 0x2c

    const/4 v4, 0x1

    if-eqz p1, :cond_e

    .line 618
    invoke-direct {p0, v4}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->replaceTop(I)V

    goto :goto_28

    .line 621
    :cond_e
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result v5

    if-eq v5, v3, :cond_28

    if-eq v5, v2, :cond_25

    if-ne v5, v1, :cond_1e

    .line 623
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pop()I

    .line 624
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    .line 630
    :cond_1e
    const-string p1, "Unterminated array"

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 626
    :cond_25
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 634
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result v5

    if-eq v5, v3, :cond_44

    if-eq v5, v2, :cond_44

    if-eq v5, v1, :cond_3c

    .line 649
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr p1, v4

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 650
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextValue()I

    move-result p1

    return p1

    :cond_3c
    if-eqz p1, :cond_44

    .line 637
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pop()I

    .line 638
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    .line 644
    :cond_44
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 645
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr p1, v4

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 646
    const-string p1, "null"

    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    const/16 p1, 0xc

    .line 647
    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return p1
.end method

.method private nextInObject(Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/16 v1, 0x7d

    if-eqz p1, :cond_18

    .line 662
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result p1

    if-eq p1, v1, :cond_12

    .line 667
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    goto :goto_33

    .line 664
    :cond_12
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pop()I

    .line 665
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    .line 670
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result p1

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_33

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_33

    if-ne p1, v1, :cond_2c

    .line 672
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pop()I

    .line 673
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    .line 678
    :cond_2c
    const-string p1, "Unterminated object"

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 683
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_60

    const/16 v0, 0x27

    if-eq p1, v0, :cond_5d

    .line 691
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 692
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    const/4 p1, 0x0

    .line 693
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->name:Ljava/lang/String;

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_67

    .line 695
    :cond_56
    const-string p1, "Expected name"

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 686
    :cond_5d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    :cond_60
    int-to-char p1, p1

    .line 688
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->name:Ljava/lang/String;

    :goto_67
    const/4 p1, 0x3

    .line 699
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->replaceTop(I)V

    const/4 p1, 0x5

    .line 700
    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return p1
.end method

.method private nextValue()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_31

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-eq v0, v1, :cond_27

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1f

    .line 743
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 744
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->readLiteral()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x2

    .line 729
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->push(I)V

    const/4 v0, 0x3

    .line 730
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    :cond_27
    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->push(I)V

    .line 734
    iput v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v2

    .line 737
    :cond_2e
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    :cond_31
    int-to-char v0, v0

    .line 739
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    const/4 v0, 0x6

    .line 740
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0
.end method

.method private objectValue()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2a

    .line 712
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 713
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1c

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_1c
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_31

    add-int/2addr v1, v2

    .line 714
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    goto :goto_31

    .line 718
    :cond_2a
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_31
    :goto_31
    const/4 v0, 0x4

    .line 721
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->replaceTop(I)V

    .line 722
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextValue()I

    move-result v0

    return v0
.end method

.method private peekStack()I
    .registers 3

    .line 598
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method private pop()I
    .registers 3

    .line 602
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    return v0
.end method

.method private push(I)V
    .registers 3

    .line 606
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method private replaceTop(I)V
    .registers 4

    .line 613
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    new-instance v0, Lio/blueflower/stapel2d/util/json/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->getLineNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->getColumnNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/blueflower/stapel2d/util/json/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 275
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->expect(I)V

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

    .line 291
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->expect(I)V

    return-void
.end method

.method public final checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->lenient:Z

    if-eqz v0, :cond_5

    return-void

    .line 869
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 569
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    .line 570
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 571
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stack:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 572
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final decodeLiteral()I
    .registers 13

    .line 1100
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x6

    return v0

    .line 1103
    :cond_7
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    const/16 v2, 0x55

    const/16 v3, 0x75

    const/16 v4, 0x4c

    const/16 v5, 0x6c

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4b

    iget-object v7, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v8, v7, v0

    const/16 v9, 0x6e

    if-eq v9, v8, :cond_20

    const/16 v9, 0x4e

    if-ne v9, v8, :cond_4b

    :cond_20
    add-int/lit8 v8, v0, 0x1

    aget-char v8, v7, v8

    if-eq v3, v8, :cond_2c

    add-int/lit8 v8, v0, 0x1

    aget-char v8, v7, v8

    if-ne v2, v8, :cond_4b

    :cond_2c
    add-int/lit8 v8, v0, 0x2

    aget-char v8, v7, v8

    if-eq v5, v8, :cond_38

    add-int/lit8 v8, v0, 0x2

    aget-char v8, v7, v8

    if-ne v4, v8, :cond_4b

    :cond_38
    add-int/lit8 v8, v0, 0x3

    aget-char v8, v7, v8

    if-eq v5, v8, :cond_44

    add-int/lit8 v8, v0, 0x3

    aget-char v7, v7, v8

    if-ne v4, v7, :cond_4b

    .line 1108
    :cond_44
    const-string v0, "null"

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    const/16 v0, 0xc

    return v0

    :cond_4b
    const/16 v7, 0xb

    const/16 v8, 0x45

    const/16 v9, 0x65

    if-ne v1, v6, :cond_8c

    .line 1110
    iget-object v6, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v10, v6, v0

    const/16 v11, 0x74

    if-eq v11, v10, :cond_5f

    const/16 v11, 0x54

    if-ne v11, v10, :cond_8c

    :cond_5f
    add-int/lit8 v10, v0, 0x1

    aget-char v10, v6, v10

    const/16 v11, 0x72

    if-eq v11, v10, :cond_6f

    add-int/lit8 v10, v0, 0x1

    aget-char v10, v6, v10

    const/16 v11, 0x52

    if-ne v11, v10, :cond_8c

    :cond_6f
    add-int/lit8 v10, v0, 0x2

    aget-char v10, v6, v10

    if-eq v3, v10, :cond_7b

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v6, v3

    if-ne v2, v3, :cond_8c

    :cond_7b
    add-int/lit8 v2, v0, 0x3

    aget-char v2, v6, v2

    if-eq v9, v2, :cond_87

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v6, v2

    if-ne v8, v2, :cond_8c

    .line 1115
    :cond_87
    const-string v0, "true"

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    return v7

    :cond_8c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_d8

    .line 1117
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v3, v2, v0

    const/16 v6, 0x66

    if-eq v6, v3, :cond_9b

    const/16 v6, 0x46

    if-ne v6, v3, :cond_d8

    :cond_9b
    add-int/lit8 v3, v0, 0x1

    aget-char v3, v2, v3

    const/16 v6, 0x61

    if-eq v6, v3, :cond_ab

    add-int/lit8 v3, v0, 0x1

    aget-char v3, v2, v3

    const/16 v6, 0x41

    if-ne v6, v3, :cond_d8

    :cond_ab
    add-int/lit8 v3, v0, 0x2

    aget-char v3, v2, v3

    if-eq v5, v3, :cond_b7

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v2, v3

    if-ne v4, v3, :cond_d8

    :cond_b7
    add-int/lit8 v3, v0, 0x3

    aget-char v3, v2, v3

    const/16 v4, 0x73

    if-eq v4, v3, :cond_c7

    add-int/lit8 v3, v0, 0x3

    aget-char v3, v2, v3

    const/16 v4, 0x53

    if-ne v4, v3, :cond_d8

    :cond_c7
    add-int/lit8 v3, v0, 0x4

    aget-char v3, v2, v3

    if-eq v9, v3, :cond_d3

    add-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    if-ne v8, v2, :cond_d8

    .line 1123
    :cond_d3
    const-string v0, "false"

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    return v7

    .line 1126
    :cond_d8
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    invoke-virtual {v2, v3, v0, v1}, Lio/blueflower/stapel2d/util/json/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valuePos:I

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    invoke-virtual {p0, v0, v1, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->decodeNumber([CII)I

    move-result v0

    return v0
.end method

.method public final decodeNumber([CII)I
    .registers 13

    .line 1139
    aget-char v0, p1, p2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 1142
    aget-char v2, p1, v0

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_f

    :cond_e
    move v2, p2

    :goto_f
    const/4 v3, 0x6

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-ne v0, v5, :cond_1b

    add-int/lit8 v2, v2, 0x1

    .line 1146
    aget-char v0, p1, v2

    goto :goto_2e

    :cond_1b
    const/16 v6, 0x31

    if-lt v0, v6, :cond_6d

    if-gt v0, v4, :cond_6d

    add-int/lit8 v2, v2, 0x1

    .line 1148
    aget-char v0, p1, v2

    :goto_25
    if-lt v0, v5, :cond_2e

    if-gt v0, v4, :cond_2e

    add-int/lit8 v2, v2, 0x1

    .line 1150
    aget-char v0, p1, v2

    goto :goto_25

    :cond_2e
    :goto_2e
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_3f

    add-int/lit8 v2, v2, 0x1

    .line 1157
    aget-char v0, p1, v2

    :goto_36
    if-lt v0, v5, :cond_3f

    if-gt v0, v4, :cond_3f

    add-int/lit8 v2, v2, 0x1

    .line 1159
    aget-char v0, p1, v2

    goto :goto_36

    :cond_3f
    const/16 v6, 0x65

    if-eq v0, v6, :cond_47

    const/16 v6, 0x45

    if-ne v0, v6, :cond_67

    :cond_47
    add-int/lit8 v0, v2, 0x1

    .line 1164
    aget-char v6, p1, v0

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_51

    if-ne v6, v1, :cond_55

    :cond_51
    add-int/lit8 v0, v2, 0x2

    .line 1166
    aget-char v6, p1, v0

    :cond_55
    if-lt v6, v5, :cond_6d

    if-gt v6, v4, :cond_6d

    add-int/lit8 v0, v0, 0x1

    .line 1169
    aget-char v1, p1, v0

    move v2, v0

    :goto_5e
    if-lt v1, v5, :cond_67

    if-gt v1, v4, :cond_67

    add-int/lit8 v2, v2, 0x1

    .line 1171
    aget-char v1, p1, v2

    goto :goto_5e

    :cond_67
    add-int/2addr p2, p3

    if-ne v2, p2, :cond_6d

    const/16 p1, 0xa

    return p1

    :cond_6d
    return v3
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 283
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->expect(I)V

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

    .line 299
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->expect(I)V

    return-void
.end method

.method public final fillBuffer(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 755
    :goto_2
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    .line 756
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    .line 757
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartLine:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartLine:I

    .line 758
    iput v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    goto :goto_1c

    .line 760
    :cond_17
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 764
    :cond_1f
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    if-eq v1, v2, :cond_2c

    sub-int/2addr v1, v2

    .line 765
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    .line 766
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 768
    :cond_2c
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    .line 771
    :goto_2e
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 773
    :cond_30
    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    .line 774
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    .line 777
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartLine:I

    if-ne v1, v3, :cond_60

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    if-ne v1, v3, :cond_60

    if-lez v2, :cond_60

    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v4, v4, v0

    const v5, 0xfeff

    if-ne v4, v5, :cond_60

    .line 779
    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 780
    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    :cond_60
    if-lt v2, p1, :cond_30

    return v3

    :cond_63
    return v0
.end method

.method public final getColumnNumber()I
    .registers 5

    .line 801
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartColumn:I

    const/4 v1, 0x0

    .line 802
    :goto_3
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    if-ge v1, v2, :cond_16

    .line 803
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_13

    :cond_11
    add-int/lit8 v0, v0, 0x1

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    return v0
.end method

.method public final getLineNumber()I
    .registers 5

    .line 791
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->bufferStartLine:I

    const/4 v1, 0x0

    .line 792
    :goto_3
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    if-ge v1, v2, :cond_14

    .line 793
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    return v0
.end method

.method public final getSnippet()Ljava/lang/CharSequence;
    .registers 6

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1197
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1198
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1199
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 318
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public nextBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 423
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_16

    .line 427
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 428
    :goto_12
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return v0

    .line 424
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 493
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 494
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a byte but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 498
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return v0
.end method

.method public nextDouble()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 469
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 470
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 474
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-wide v0
.end method

.method public nextFloat()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 457
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 458
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a float but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 462
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return v0
.end method

.method public nextInt()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 545
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 546
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_26
    :goto_26
    :try_start_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_3a

    .line 553
    :catch_2d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v0, v3, v0

    if-nez v0, :cond_3e

    move v0, v2

    .line 560
    :goto_3a
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return v0

    .line 556
    :cond_3e
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextLiteral(Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 957
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valuePos:I

    const/4 v0, 0x0

    .line 958
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 963
    :goto_9
    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int v5, v4, v2

    iget v6, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    if-ge v5, v6, :cond_54

    .line 964
    iget-object v5, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    add-int/2addr v4, v2

    aget-char v4, v5, v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_68

    const/16 v5, 0xa

    if-eq v4, v5, :cond_68

    const/16 v5, 0xc

    if-eq v4, v5, :cond_68

    const/16 v5, 0xd

    if-eq v4, v5, :cond_68

    const/16 v5, 0x20

    if-eq v4, v5, :cond_68

    const/16 v5, 0x23

    if-eq v4, v5, :cond_50

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_68

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_50

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_50

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_68

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_68

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_68

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_50

    packed-switch v4, :pswitch_data_c0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 970
    :cond_50
    :pswitch_50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    goto :goto_68

    .line 991
    :cond_54
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    array-length v4, v4

    if-ge v2, v4, :cond_6a

    add-int/lit8 v4, v2, 0x1

    .line 992
    invoke-virtual {p0, v4}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_9

    .line 995
    :cond_62
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v5, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    aput-char v0, v4, v5

    :cond_68
    :goto_68
    :pswitch_68
    move v0, v2

    goto :goto_89

    :cond_6a
    if-nez v3, :cond_71

    .line 1002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    :cond_71
    iget-object v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v5, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1005
    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    add-int/2addr v4, v2

    iput v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    .line 1006
    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    const/4 v2, 0x1

    .line 1008
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_bc

    :goto_89
    if-eqz p1, :cond_92

    if-nez v3, :cond_92

    .line 1015
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valuePos:I

    goto :goto_b1

    .line 1017
    :cond_92
    iget-boolean p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    if-eqz p1, :cond_99

    .line 1018
    const-string v1, "skipped!"

    goto :goto_b1

    :cond_99
    if-nez v3, :cond_a6

    .line 1020
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Lio/blueflower/stapel2d/util/json/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_b1

    .line 1022
    :cond_a6
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    :goto_b1
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    .line 1026
    iget p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    return-object v1

    :cond_bc
    move v2, v0

    goto/16 :goto_9

    nop

    :pswitch_data_c0
    .packed-switch 0x5b
        :pswitch_68
        :pswitch_50
        :pswitch_68
    .end packed-switch
.end method

.method public nextLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 514
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 515
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_26
    :goto_26
    :try_start_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_3a

    .line 522
    :catch_2d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_3e

    move-wide v0, v2

    .line 529
    :goto_3a
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-wide v0

    .line 525
    :cond_3e
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 387
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 390
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->name:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-object v0

    .line 388
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextNonWhitespace()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    :cond_0
    :goto_0
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 864
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_16
    :goto_16
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_76

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_39

    goto :goto_53

    .line 823
    :cond_39
    iget v4, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    if-ne v3, v4, :cond_44

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_53

    .line 827
    :cond_44
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 828
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v2, v2, v3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5c

    if-eq v2, v1, :cond_54

    :goto_53
    return v0

    :cond_54
    add-int/lit8 v3, v3, 0x1

    .line 841
    iput v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 842
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipToEndOfLine()V

    goto :goto_0

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    .line 832
    iput v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 833
    const-string v0, "*/"

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 836
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    goto :goto_0

    .line 834
    :cond_6f
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 855
    :cond_76
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 856
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipToEndOfLine()V

    goto :goto_0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 441
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d

    .line 445
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-void

    .line 442
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 481
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 482
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a short but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 486
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    .line 405
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_28

    .line 406
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peek()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_28
    :goto_28
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    .line 410
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    return-object v0
.end method

.method public final nextString(C)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 914
    :goto_1
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    .line 915
    :cond_3
    :goto_3
    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4e

    .line 916
    iget-object v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_30

    .line 919
    iget-boolean p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    if-eqz p1, :cond_1b

    .line 920
    const-string p1, "skipped!"

    return-object p1

    :cond_1b
    if-nez v0, :cond_26

    .line 922
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v3, v1, v5}, Lio/blueflower/stapel2d/util/json/StringPool;->get([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    .line 924
    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_3b

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    :cond_3b
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    goto :goto_3

    :cond_4e
    if-nez v0, :cond_55

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    :cond_55
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {p0, v4}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_1

    .line 944
    :cond_64
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public peek()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    if-eqz v0, :cond_5

    return v0

    .line 329
    :cond_5
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->peekStack()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_78

    .line 361
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :pswitch_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :pswitch_1c
    :try_start_1c
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextValue()I

    move-result v0

    .line 351
    iget-boolean v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->lenient:Z

    if-eqz v1, :cond_25

    return v0

    .line 354
    :cond_25
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2c
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_2c} :catch_2c

    :catch_2c
    const/16 v0, 0xd

    .line 356
    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    :pswitch_31
    const/4 v0, 0x6

    .line 331
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->replaceTop(I)V

    .line 332
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextValue()I

    move-result v0

    .line 333
    iget-boolean v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->lenient:Z

    if-nez v1, :cond_5e

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    if-eq v1, v2, :cond_5e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_45

    goto :goto_5e

    .line 334
    :cond_45
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :goto_5e
    return v0

    .line 347
    :pswitch_5f
    invoke-direct {p0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextInObject(Z)I

    move-result v0

    return v0

    .line 345
    :pswitch_64
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->objectValue()I

    move-result v0

    return v0

    .line 343
    :pswitch_69
    invoke-direct {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextInObject(Z)I

    move-result v0

    return v0

    .line 341
    :pswitch_6e
    invoke-direct {p0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextInArray(Z)I

    move-result v0

    return v0

    .line 339
    :pswitch_73
    invoke-direct {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextInArray(Z)I

    move-result v0

    return v0

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_31
        :pswitch_1c
        :pswitch_14
    .end packed-switch
.end method

.method public final readEscapeCharacter()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1045
    :cond_10
    invoke-direct {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1048
    :cond_15
    :goto_15
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v3, 0x62

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x66

    if-eq v0, v3, :cond_6b

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_68

    const/16 v3, 0x72

    if-eq v0, v3, :cond_65

    const/16 v3, 0x74

    if-eq v0, v3, :cond_62

    const/16 v3, 0x75

    if-eq v0, v3, :cond_38

    return v0

    :cond_38
    add-int/lit8 v1, v1, 0x5

    .line 1051
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v3, 0x4

    if-le v1, v0, :cond_4b

    invoke-virtual {p0, v3}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_4b

    .line 1052
    :cond_46
    invoke-direct {p0, v2}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1054
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->stringPool:Lio/blueflower/stapel2d/util/json/StringPool;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {v0, v1, v2, v3}, Lio/blueflower/stapel2d/util/json/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    .line 1055
    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    const/16 v1, 0x10

    .line 1056
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0

    :cond_62
    const/16 v0, 0x9

    return v0

    :cond_65
    const/16 v0, 0xd

    return v0

    :cond_68
    const/16 v0, 0xa

    return v0

    :cond_6b
    const/16 v0, 0xc

    return v0

    :cond_6e
    const/16 v0, 0x8

    return v0
.end method

.method public final readLiteral()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1085
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->value:Ljava/lang/String;

    .line 1086
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->valueLength:I

    if-eqz v0, :cond_1a

    .line 1089
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->decodeLiteral()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 1091
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->checkLenient()V

    .line 1093
    :cond_17
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->token:I

    return v0

    .line 1087
    :cond_1a
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final skipTo(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    :goto_0
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v2

    .line 890
    :cond_18
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_35

    .line 891
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v3, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_32

    .line 889
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    goto :goto_0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_35
    return v1
.end method

.method public final skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    :cond_0
    iget v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 880
    :cond_d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->buffer:[C

    iget v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_1f
    return-void
.end method

.method public skipValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    const/4 v1, 0x0

    move v2, v1

    .line 585
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->advance()I

    move-result v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1f

    if-eq v3, v0, :cond_18

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    goto :goto_18

    :cond_f
    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1a

    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    :cond_1a
    :goto_1a
    if-nez v2, :cond_5

    .line 593
    iput-boolean v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    return-void

    :catchall_1f
    move-exception v0

    iput-boolean v1, p0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->skipping:Z

    .line 594
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
