###### Class vm2.parser.SimpleCharStream (vm2.parser.SimpleCharStream)
.class public Lvm2/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 346
    invoke-direct {p0, p1, v0, v0, v1}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 334
    invoke-direct {p0, p1, p2, p3, v0}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .registers 6

    .line 320
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 340
    invoke-direct/range {v0 .. v5}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 327
    invoke-direct/range {v0 .. v5}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 313
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_e
    invoke-direct {p0, p2, p3, p4, p5}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 274
    invoke-direct {p0, p1, v0, v0, v1}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 268
    invoke-direct {p0, p1, p2, p3, v0}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .registers 6

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lvm2/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 26
    iput-boolean v0, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 31
    iput v0, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    .line 32
    iput v0, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lvm2/parser/SimpleCharStream;->tabSize:I

    .line 254
    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 255
    iput p2, p0, Lvm2/parser/SimpleCharStream;->line:I

    sub-int/2addr p3, v0

    .line 256
    iput p3, p0, Lvm2/parser/SimpleCharStream;->column:I

    .line 258
    iput p4, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lvm2/parser/SimpleCharStream;->available:I

    .line 259
    new-array p1, p4, [C

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    .line 260
    new-array p1, p4, [I

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    .line 261
    new-array p1, p4, [I

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    return-void
.end method


# virtual methods
.method public BeginToken()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    .line 136
    invoke-virtual {p0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 137
    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    return v0
.end method

.method public Done()V
    .registers 2

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    .line 417
    iput-object v0, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    .line 418
    iput-object v0, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    return-void
.end method

.method public ExpandBuff(Z)V
    .registers 8

    .line 41
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    .line 42
    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    .line 43
    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_66

    .line 49
    :try_start_11
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iget v5, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    .line 53
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v2, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    .line 57
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v3, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    .line 61
    iget p1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    goto :goto_91

    :catchall_64
    move-exception p1

    goto :goto_9c

    .line 65
    :cond_66
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    .line 68
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v2, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    .line 71
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v3, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget p1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_91
    .catchall {:try_start_11 .. :try_end_91} :catchall_64

    .line 83
    :goto_91
    iget p1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    .line 84
    iput p1, p0, Lvm2/parser/SimpleCharStream;->available:I

    .line 85
    iput v4, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    return-void

    .line 79
    :goto_9c
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FillBuff()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_35

    .line 92
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_24

    .line 94
    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    if-le v0, v4, :cond_19

    .line 96
    iput v3, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    .line 97
    iput v0, p0, Lvm2/parser/SimpleCharStream;->available:I

    goto :goto_35

    :cond_19
    if-gez v0, :cond_20

    .line 100
    iput v3, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    goto :goto_35

    .line 102
    :cond_20
    invoke-virtual {p0, v3}, Lvm2/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_35

    .line 104
    :cond_24
    iget v5, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    if-le v1, v5, :cond_2b

    .line 105
    iput v0, p0, Lvm2/parser/SimpleCharStream;->available:I

    goto :goto_35

    :cond_2b
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_33

    .line 107
    invoke-virtual {p0, v2}, Lvm2/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_35

    .line 109
    :cond_33
    iput v5, p0, Lvm2/parser/SimpleCharStream;->available:I

    :cond_35
    :goto_35
    const/4 v0, -0x1

    .line 114
    :try_start_36
    iget-object v1, p0, Lvm2/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v4, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    iget v6, p0, Lvm2/parser/SimpleCharStream;->available:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_4d

    .line 120
    iget v4, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v4, v1

    iput v4, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    return-void

    :catch_4b
    move-exception v1

    goto :goto_58

    .line 116
    :cond_4d
    iget-object v1, p0, Lvm2/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 117
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_58} :catch_4b

    .line 124
    :goto_58
    iget v4, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    .line 125
    invoke-virtual {p0, v3}, Lvm2/parser/SimpleCharStream;->backup(I)V

    .line 126
    iget v2, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_68

    .line 127
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    .line 128
    :cond_68
    throw v1
.end method

.method public GetImage()Ljava/lang/String;
    .registers 6

    .line 389
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_11

    .line 390
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 392
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .registers 8

    .line 399
    new-array v0, p1, [C

    .line 401
    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_12

    .line 402
    iget-object v2, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 405
    :cond_12
    iget-object v2, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iget-object v1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 372
    invoke-virtual {p0, p1, v0, v0, v1}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 384
    invoke-virtual {p0, p1, p2, p3, v0}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .registers 6

    .line 360
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 366
    invoke-virtual/range {v0 .. v5}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 378
    invoke-virtual/range {v0 .. v5}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 353
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_e
    invoke-virtual {p0, p2, p3, p4, p5}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 307
    invoke-virtual {p0, p1, v0, v0, v1}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 301
    invoke-virtual {p0, p1, p2, p3, v0}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .registers 5

    .line 281
    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 282
    iput p2, p0, Lvm2/parser/SimpleCharStream;->line:I

    add-int/lit8 p3, p3, -0x1

    .line 283
    iput p3, p0, Lvm2/parser/SimpleCharStream;->column:I

    .line 285
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    if-eqz p1, :cond_f

    array-length p1, p1

    if-eq p4, p1, :cond_1f

    .line 287
    :cond_f
    iput p4, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lvm2/parser/SimpleCharStream;->available:I

    .line 288
    new-array p1, p4, [C

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    .line 289
    new-array p1, p4, [I

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    .line 290
    new-array p1, p4, [I

    iput-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    :cond_1f
    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lvm2/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean p1, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 293
    iput p1, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    iput p1, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    iput p1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    const/4 p1, -0x1

    .line 294
    iput p1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    return-void
.end method

.method public UpdateLineColumn(C)V
    .registers 6

    .line 144
    iget v0, p0, Lvm2/parser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->column:I

    .line 146
    iget-boolean v0, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 148
    iput-boolean v3, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 149
    iget v0, p0, Lvm2/parser/SimpleCharStream;->line:I

    iput v1, p0, Lvm2/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->line:I

    goto :goto_29

    .line 151
    :cond_17
    iget-boolean v0, p0, Lvm2/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_29

    .line 153
    iput-boolean v3, p0, Lvm2/parser/SimpleCharStream;->prevCharIsCR:Z

    if-ne p1, v2, :cond_22

    .line 156
    iput-boolean v1, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_29

    .line 159
    :cond_22
    iget v0, p0, Lvm2/parser/SimpleCharStream;->line:I

    iput v1, p0, Lvm2/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->line:I

    :cond_29
    :goto_29
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3a

    if-eq p1, v2, :cond_37

    const/16 v0, 0xd

    if-eq p1, v0, :cond_34

    goto :goto_47

    .line 165
    :cond_34
    iput-boolean v1, p0, Lvm2/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_47

    .line 168
    :cond_37
    iput-boolean v1, p0, Lvm2/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_47

    .line 171
    :cond_3a
    iget p1, p0, Lvm2/parser/SimpleCharStream;->column:I

    sub-int/2addr p1, v1

    iput p1, p0, Lvm2/parser/SimpleCharStream;->column:I

    .line 172
    iget v0, p0, Lvm2/parser/SimpleCharStream;->tabSize:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/parser/SimpleCharStream;->column:I

    .line 178
    :goto_47
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->line:I

    aput v1, p1, v0

    .line 179
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->column:I

    aput v1, p1, v0

    return-void
.end method

.method public adjustBeginLineColumn(II)V
    .registers 12

    .line 426
    iget v0, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    .line 429
    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    if-lt v1, v0, :cond_d

    sub-int/2addr v1, v0

    .line 431
    iget v2, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 435
    :cond_d
    iget v2, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    :goto_16
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    if-ge v2, v1, :cond_3e

    .line 441
    iget-object v3, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_3d

    .line 443
    aput p1, v3, v6

    .line 444
    iget-object v3, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    .line 445
    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_19

    :cond_3d
    move v3, v6

    :cond_3e
    if-ge v2, v1, :cond_69

    .line 452
    iget-object v5, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    .line 453
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_4b
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_69

    .line 457
    iget-object p2, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v2, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_66

    add-int/lit8 v2, v6, 0x1

    .line 458
    aput v6, p2, v3

    move v6, v2

    :goto_64
    move v2, p1

    goto :goto_4b

    .line 460
    :cond_66
    aput v6, p2, v3

    goto :goto_64

    .line 464
    :cond_69
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    aget p1, p1, v3

    iput p1, p0, Lvm2/parser/SimpleCharStream;->line:I

    .line 465
    iget-object p1, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    aget p1, p1, v3

    iput p1, p0, Lvm2/parser/SimpleCharStream;->column:I

    return-void
.end method

.method public backup(I)V
    .registers 3

    .line 245
    iget v0, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    .line 246
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_11

    .line 247
    iget p1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, p1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    :cond_11
    return-void
.end method

.method public getBeginColumn()I
    .registers 3

    .line 234
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .registers 3

    .line 239
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 3

    .line 210
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .registers 3

    .line 224
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .registers 3

    .line 229
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .registers 3

    .line 219
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getTabSize(I)I
    .registers 2

    .line 36
    iget p1, p0, Lvm2/parser/SimpleCharStream;->tabSize:I

    return p1
.end method

.method public readChar()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    if-lez v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 187
    iput v0, p0, Lvm2/parser/SimpleCharStream;->inBuf:I

    .line 189
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufsize:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    .line 192
    :cond_15
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 195
    :cond_1c
    iget v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lvm2/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_29

    .line 196
    invoke-virtual {p0}, Lvm2/parser/SimpleCharStream;->FillBuff()V

    .line 198
    :cond_29
    iget-object v0, p0, Lvm2/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lvm2/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    .line 200
    invoke-virtual {p0, v0}, Lvm2/parser/SimpleCharStream;->UpdateLineColumn(C)V

    return v0
.end method

.method public setTabSize(I)V
    .registers 2

    .line 35
    iput p1, p0, Lvm2/parser/SimpleCharStream;->tabSize:I

    return-void
.end method
