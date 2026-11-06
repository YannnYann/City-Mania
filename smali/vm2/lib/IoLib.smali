###### Class vm2.lib.IoLib (vm2.lib.IoLib)
.class public abstract Lvm2/lib/IoLib;
.super Lvm2/lib/TwoArgFunction;
.source "IoLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/IoLib$File;,
        Lvm2/lib/IoLib$IoLibV;
    }
.end annotation


# static fields
.field private static final CLOSED_FILE:Lvm2/LuaValue;

.field private static final FILE:Lvm2/LuaValue;

.field private static final FILE_CLOSE:I = 0xb

.field private static final FILE_FLUSH:I = 0xc

.field private static final FILE_LINES:I = 0xd

.field public static final FILE_NAMES:[Ljava/lang/String;

.field private static final FILE_READ:I = 0xe

.field private static final FILE_SEEK:I = 0xf

.field private static final FILE_SETVBUF:I = 0x10

.field private static final FILE_WRITE:I = 0x11

.field protected static final FTYPE_NAMED:I = 0x3

.field protected static final FTYPE_STDERR:I = 0x2

.field protected static final FTYPE_STDIN:I = 0x0

.field protected static final FTYPE_STDOUT:I = 0x1

.field private static final IO_CLOSE:I = 0x0

.field private static final IO_FLUSH:I = 0x1

.field private static final IO_INDEX:I = 0x12

.field private static final IO_INPUT:I = 0x2

.field private static final IO_LINES:I = 0x3

.field public static final IO_NAMES:[Ljava/lang/String;

.field private static final IO_OPEN:I = 0x4

.field private static final IO_OUTPUT:I = 0x5

.field private static final IO_POPEN:I = 0x6

.field private static final IO_READ:I = 0x7

.field private static final IO_TMPFILE:I = 0x8

.field private static final IO_TYPE:I = 0x9

.field private static final IO_WRITE:I = 0xa

.field private static final LINES_ITER:I = 0x13

.field private static final STDERR:Lvm2/LuaValue;

.field private static final STDIN:Lvm2/LuaValue;

.field private static final STDOUT:Lvm2/LuaValue;


# instance fields
.field private errfile:Lvm2/lib/IoLib$File;

.field filemethods:Lvm2/LuaTable;

.field protected globals:Lvm2/Globals;

.field private infile:Lvm2/lib/IoLib$File;

.field private outfile:Lvm2/lib/IoLib$File;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 196
    const-string v0, "stdin"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->STDIN:Lvm2/LuaValue;

    .line 197
    const-string v0, "stdout"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->STDOUT:Lvm2/LuaValue;

    .line 198
    const-string v0, "stderr"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->STDERR:Lvm2/LuaValue;

    .line 199
    const-string v0, "file"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->FILE:Lvm2/LuaValue;

    .line 200
    const-string v0, "closed file"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->CLOSED_FILE:Lvm2/LuaValue;

    .line 225
    const-string v10, "type"

    const-string v11, "write"

    const-string v1, "close"

    const-string v2, "flush"

    const-string v3, "input"

    const-string v4, "lines"

    const-string v5, "open"

    const-string v6, "output"

    const-string v7, "popen"

    const-string v8, "read"

    const-string v9, "tmpfile"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    .line 239
    const-string v6, "setvbuf"

    const-string v7, "write"

    const-string v1, "close"

    const-string v2, "flush"

    const-string v3, "lines"

    const-string v4, "read"

    const-string v5, "seek"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lvm2/lib/IoLib;->infile:Lvm2/lib/IoLib$File;

    .line 193
    iput-object v0, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    .line 194
    iput-object v0, p0, Lvm2/lib/IoLib;->errfile:Lvm2/lib/IoLib$File;

    return-void
.end method

.method private static checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;
    .registers 3

    .line 571
    invoke-static {p0}, Lvm2/lib/IoLib;->optfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 v0, 0x1

    .line 573
    const-string v1, "file"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 574
    :cond_c
    invoke-static {p0}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    return-object p0
.end method

.method private static checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;
    .registers 2

    .line 583
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->isclosed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 584
    const-string v0, "attempt to use a closed file"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_b
    return-object p0
.end method

.method public static errorresult(Ljava/lang/Exception;)Lvm2/Varargs;
    .registers 4

    .line 518
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/lib/IoLib;->errorresult(Ljava/lang/String;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method private static errorresult(Ljava/lang/String;)Lvm2/Varargs;
    .registers 2

    .line 523
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-static {v0, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method private errput()Lvm2/lib/IoLib$File;
    .registers 4

    .line 492
    iget-object v0, p0, Lvm2/lib/IoLib;->errfile:Lvm2/lib/IoLib$File;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "-"

    const-string v1, "w"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lvm2/lib/IoLib;->errfile:Lvm2/lib/IoLib$File;

    return-object v0
.end method

.method public static freadall(Lvm2/lib/IoLib$File;)Lvm2/LuaValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->remaining()I

    move-result v0

    if-ltz v0, :cond_10

    if-nez v0, :cond_b

    .line 652
    sget-object p0, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    return-object p0

    :cond_b
    invoke-static {p0, v0}, Lvm2/lib/IoLib;->freadbytes(Lvm2/lib/IoLib$File;I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 654
    invoke-static {p0, v0, v0}, Lvm2/lib/IoLib;->freaduntil(Lvm2/lib/IoLib$File;ZZ)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static freadbytes(Lvm2/lib/IoLib$File;I)Lvm2/LuaValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_e

    .line 616
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->eof()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    :cond_b
    sget-object p0, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    return-object p0

    .line 617
    :cond_e
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 619
    invoke-virtual {p0, v0, v1, p1}, Lvm2/lib/IoLib$File;->read([BII)I

    move-result p0

    if-gez p0, :cond_1a

    .line 620
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    .line 621
    :cond_1a
    invoke-static {v0, v1, p0}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method private static freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->peek()I

    move-result v0

    .line 676
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_b

    return-void

    .line 679
    :cond_b
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->read()I

    if-eqz p2, :cond_0

    .line 681
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static freadline(Lvm2/lib/IoLib$File;Z)Lvm2/LuaValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 647
    invoke-static {p0, v0, p1}, Lvm2/lib/IoLib;->freaduntil(Lvm2/lib/IoLib$File;ZZ)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static freadnumber(Lvm2/lib/IoLib$File;)Lvm2/LuaValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 659
    const-string v1, " \t\r\n"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lvm2/lib/IoLib;->freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 660
    const-string v1, "-+"

    invoke-static {p0, v1, v0}, Lvm2/lib/IoLib;->freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 663
    const-string v1, "0123456789"

    invoke-static {p0, v1, v0}, Lvm2/lib/IoLib;->freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 664
    const-string v2, "."

    invoke-static {p0, v2, v0}, Lvm2/lib/IoLib;->freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 665
    invoke-static {p0, v1, v0}, Lvm2/lib/IoLib;->freadchars(Lvm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 669
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    .line 670
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_30
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method

.method public static freaduntil(Lvm2/lib/IoLib$File;ZZ)Lvm2/LuaValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_25

    .line 628
    :cond_7
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->read()I

    move-result p1

    if-ltz p1, :cond_30

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1f

    const/16 v1, 0xd

    if-eq p1, v1, :cond_19

    .line 632
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    :cond_19
    if-eqz p2, :cond_7

    .line 630
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    :cond_1f
    if-eqz p2, :cond_30

    .line 631
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_30

    .line 636
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->read()I

    move-result p1

    if-ltz p1, :cond_30

    .line 637
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2e
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_25

    :catch_2f
    const/4 p1, -0x1

    :cond_30
    :goto_30
    if-gez p1, :cond_3b

    .line 642
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_3b

    .line 643
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    goto :goto_43

    .line 644
    :cond_3b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p0

    :goto_43
    return-object p0
.end method

.method private input()Lvm2/lib/IoLib$File;
    .registers 4

    .line 344
    iget-object v0, p0, Lvm2/lib/IoLib;->infile:Lvm2/lib/IoLib$File;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "-"

    const-string v1, "r"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lvm2/lib/IoLib;->infile:Lvm2/lib/IoLib$File;

    return-object v0
.end method

.method private static ioclose(Lvm2/lib/IoLib$File;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->isstdfile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 506
    const-string p0, "cannot close standard file"

    invoke-static {p0}, Lvm2/lib/IoLib;->errorresult(Ljava/lang/String;)Lvm2/Varargs;

    move-result-object p0

    return-object p0

    .line 508
    :cond_d
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->close()V

    .line 509
    invoke-static {}, Lvm2/lib/IoLib;->successresult()Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method private ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;
    .registers 4

    .line 497
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lvm2/lib/IoLib;->rawopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "io error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method private ioread(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p2}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 542
    invoke-static {p1, v1}, Lvm2/lib/IoLib;->freadline(Lvm2/lib/IoLib$File;Z)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 543
    :cond_c
    new-array v2, v0, [Lvm2/LuaValue;

    move v3, v1

    :goto_f
    if-ge v3, v0, :cond_7a

    add-int/lit8 v4, v3, 0x1

    .line 547
    invoke-virtual {p2, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->type()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_66

    const/4 v7, 0x5

    if-eq v6, v7, :cond_22

    goto :goto_5f

    .line 552
    :cond_22
    invoke-virtual {v5}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object v5

    .line 553
    iget v6, v5, Lvm2/LuaString;->m_length:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5f

    iget-object v6, v5, Lvm2/LuaString;->m_bytes:[B

    iget v5, v5, Lvm2/LuaString;->m_offset:I

    aget-byte v7, v6, v5

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_5f

    add-int/lit8 v5, v5, 0x1

    .line 554
    aget-byte v5, v6, v5

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_59

    const/16 v6, 0x61

    if-eq v5, v6, :cond_54

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_4f

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_4a

    goto :goto_5f

    .line 555
    :cond_4a
    invoke-static {p1}, Lvm2/lib/IoLib;->freadnumber(Lvm2/lib/IoLib$File;)Lvm2/LuaValue;

    move-result-object v5

    goto :goto_6e

    .line 556
    :cond_4f
    invoke-static {p1, v1}, Lvm2/lib/IoLib;->freadline(Lvm2/lib/IoLib$File;Z)Lvm2/LuaValue;

    move-result-object v5

    goto :goto_6e

    .line 558
    :cond_54
    invoke-static {p1}, Lvm2/lib/IoLib;->freadall(Lvm2/lib/IoLib$File;)Lvm2/LuaValue;

    move-result-object v5

    goto :goto_6e

    :cond_59
    const/4 v5, 0x1

    .line 557
    invoke-static {p1, v5}, Lvm2/lib/IoLib;->freadline(Lvm2/lib/IoLib$File;Z)Lvm2/LuaValue;

    move-result-object v5

    goto :goto_6e

    .line 562
    :cond_5f
    :goto_5f
    const-string p1, "(invalid format)"

    invoke-static {v4, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 549
    :cond_66
    invoke-virtual {v5}, Lvm2/LuaValue;->toint()I

    move-result v5

    invoke-static {p1, v5}, Lvm2/lib/IoLib;->freadbytes(Lvm2/lib/IoLib$File;I)Lvm2/LuaValue;

    move-result-object v5

    .line 564
    :goto_6e
    aput-object v5, v2, v3

    invoke-virtual {v5}, Lvm2/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_78

    move v3, v4

    goto :goto_7a

    :cond_78
    move v3, v4

    goto :goto_f

    :cond_7a
    :goto_7a
    if-nez v3, :cond_7f

    .line 567
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_7f
    invoke-static {v2, v1, v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;II)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method private static iowrite(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    :goto_5
    if-gt v1, v0, :cond_11

    .line 536
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lvm2/lib/IoLib$File;->write(Lvm2/LuaString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-object p0
.end method

.method private lines(Lvm2/lib/IoLib$File;ZLvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 528
    :try_start_0
    new-instance v0, Lvm2/lib/IoLib$IoLibV;

    const-string v2, "lnext"

    const/16 v3, 0x13

    move-object v4, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lvm2/lib/IoLib$IoLibV;-><init>(Lvm2/lib/IoLib$File;Ljava/lang/String;ILvm2/lib/IoLib;ZLvm2/Varargs;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    move-object p1, v0

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lines: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method private static optfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;
    .registers 2

    .line 579
    instance-of v0, p0, Lvm2/lib/IoLib$File;

    if-eqz v0, :cond_7

    check-cast p0, Lvm2/lib/IoLib$File;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private output()Lvm2/lib/IoLib$File;
    .registers 4

    .line 488
    iget-object v0, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "-"

    const-string v1, "w"

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    return-object v0
.end method

.method private rawopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ge v2, v0, :cond_29

    .line 591
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v2, :cond_1a

    .line 592
    const-string v6, "rwa"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1a

    goto :goto_25

    :cond_1a
    if-ne v2, v4, :cond_1f

    if-ne v5, v3, :cond_1f

    goto :goto_25

    :cond_1f
    if-lt v2, v4, :cond_28

    const/16 v6, 0x62

    if-ne v5, v6, :cond_28

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_28
    const/4 v0, -0x1

    :cond_29
    const/4 v2, 0x2

    if-gtz v0, :cond_45

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid mode: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_45
    if-eqz p1, :cond_77

    if-eq p1, v4, :cond_72

    if-eq p1, v2, :cond_6d

    .line 605
    const-string p1, "r"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 606
    const-string p1, "a"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 607
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_5f

    move v9, v4

    goto :goto_60

    :cond_5f
    move v9, v1

    .line 608
    :goto_60
    const-string p1, "b"

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    move-object v5, p0

    move-object v6, p2

    .line 609
    invoke-virtual/range {v5 .. v10}, Lvm2/lib/IoLib;->openFile(Ljava/lang/String;ZZZZ)Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    .line 603
    :cond_6d
    invoke-virtual {p0}, Lvm2/lib/IoLib;->wrapStderr()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    .line 602
    :cond_72
    invoke-virtual {p0}, Lvm2/lib/IoLib;->wrapStdout()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    .line 601
    :cond_77
    invoke-virtual {p0}, Lvm2/lib/IoLib;->wrapStdin()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method private setLibInstance(Lvm2/LuaTable;)V
    .registers 6

    .line 281
    invoke-virtual {p1}, Lvm2/LuaTable;->keys()[Lvm2/LuaValue;

    move-result-object v0

    .line 282
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    .line 283
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v3

    check-cast v3, Lvm2/lib/IoLib$IoLibV;

    iput-object p0, v3, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method private static successresult()Lvm2/Varargs;
    .registers 1

    .line 514
    sget-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object v0
.end method


# virtual methods
.method public _file_close(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-static {p1}, Lvm2/lib/IoLib;->ioclose(Lvm2/lib/IoLib$File;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_flush(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/lib/IoLib$File;->flush()V

    .line 429
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public _file_lines(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 446
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lvm2/lib/IoLib;->lines(Lvm2/lib/IoLib$File;ZLvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_read(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lvm2/lib/IoLib;->ioread(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_seek(Lvm2/LuaValue;Ljava/lang/String;I)Lvm2/Varargs;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    const-string v0, "set"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_35

    .line 457
    :cond_9
    const-string v0, "end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_35

    .line 458
    :cond_12
    const-string v0, "cur"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    .line 460
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'; must be one of \'set\', \'cur\' or \'end\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 462
    :goto_35
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lvm2/lib/IoLib$File;->seek(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public _file_setvbuf(Lvm2/LuaValue;Ljava/lang/String;I)Lvm2/Varargs;
    .registers 6

    .line 434
    const-string v0, "no"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_35

    .line 435
    :cond_9
    const-string v0, "full"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_35

    .line 436
    :cond_12
    const-string v0, "line"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    .line 438
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'; must be one of \'no\', \'full\' or \'line\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 440
    :goto_35
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lvm2/lib/IoLib$File;->setvbuf(Ljava/lang/String;I)V

    .line 441
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public _file_write(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    invoke-static {p1, p2}, Lvm2/lib/IoLib;->iowrite(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_close(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lvm2/lib/IoLib;->output()Lvm2/lib/IoLib$File;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    .line 362
    :goto_f
    invoke-static {p1}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    .line 363
    invoke-static {p1}, Lvm2/lib/IoLib;->ioclose(Lvm2/lib/IoLib$File;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_flush()Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lvm2/lib/IoLib;->output()Lvm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    .line 350
    iget-object v0, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    invoke-virtual {v0}, Lvm2/lib/IoLib$File;->flush()V

    .line 351
    sget-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object v0
.end method

.method public _io_index(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 3

    .line 472
    sget-object v0, Lvm2/lib/IoLib;->STDOUT:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lvm2/lib/IoLib;->output()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    .line 473
    :cond_d
    sget-object v0, Lvm2/lib/IoLib;->STDIN:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lvm2/lib/IoLib;->input()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    .line 474
    :cond_1a
    sget-object v0, Lvm2/lib/IoLib;->STDERR:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-direct {p0}, Lvm2/lib/IoLib;->errput()Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1

    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public _io_input(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 4

    .line 368
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lvm2/lib/IoLib;->input()Lvm2/lib/IoLib$File;

    move-result-object p1

    goto :goto_21

    .line 369
    :cond_b
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v0, "r"

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object p1

    goto :goto_21

    .line 370
    :cond_1d
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    :goto_21
    iput-object p1, p0, Lvm2/lib/IoLib;->infile:Lvm2/lib/IoLib$File;

    return-object p1
.end method

.method public _io_lines(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 403
    invoke-virtual {p1, v1, v0}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 404
    invoke-direct {p0}, Lvm2/lib/IoLib;->input()Lvm2/lib/IoLib$File;

    move-result-object v2

    goto :goto_14

    :cond_d
    const/4 v2, 0x3

    const-string v3, "r"

    invoke-direct {p0, v2, v0, v3}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object v2

    .line 405
    :goto_14
    invoke-static {v2}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const/4 v0, 0x2

    .line 406
    invoke-virtual {p1, v0}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lvm2/lib/IoLib;->lines(Lvm2/lib/IoLib$File;ZLvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_open(Ljava/lang/String;Ljava/lang/String;)Lvm2/Varargs;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 398
    invoke-direct {p0, v0, p1, p2}, Lvm2/lib/IoLib;->rawopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method public _io_output(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 4

    .line 376
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lvm2/lib/IoLib;->output()Lvm2/lib/IoLib$File;

    move-result-object p1

    goto :goto_21

    .line 377
    :cond_b
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v0, "w"

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lvm2/lib/IoLib;->ioopenfile(ILjava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object p1

    goto :goto_21

    .line 378
    :cond_1d
    invoke-static {p1}, Lvm2/lib/IoLib;->checkfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    :goto_21
    iput-object p1, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    return-object p1
.end method

.method public _io_popen(Ljava/lang/String;Ljava/lang/String;)Lvm2/Varargs;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'; must be one of \'r\' or \'w\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 393
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lvm2/lib/IoLib;->openProgram(Ljava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method public _io_read(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lvm2/lib/IoLib;->input()Lvm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    .line 412
    iget-object v0, p0, Lvm2/lib/IoLib;->infile:Lvm2/lib/IoLib$File;

    invoke-direct {p0, v0, p1}, Lvm2/lib/IoLib;->ioread(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_tmpfile()Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lvm2/lib/IoLib;->tmpFile()Lvm2/lib/IoLib$File;

    move-result-object v0

    return-object v0
.end method

.method public _io_type(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2

    .line 384
    invoke-static {p1}, Lvm2/lib/IoLib;->optfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 386
    invoke-virtual {p1}, Lvm2/lib/IoLib$File;->isclosed()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lvm2/lib/IoLib;->CLOSED_FILE:Lvm2/LuaValue;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/lib/IoLib;->FILE:Lvm2/LuaValue;

    return-object p1

    .line 387
    :cond_12
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public _io_write(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lvm2/lib/IoLib;->output()Lvm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/IoLib;->checkopen(Lvm2/lib/IoLib$File;)Lvm2/lib/IoLib$File;

    .line 418
    iget-object v0, p0, Lvm2/lib/IoLib;->outfile:Lvm2/lib/IoLib$File;

    invoke-static {v0, p1}, Lvm2/lib/IoLib;->iowrite(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _lines_iter(Lvm2/LuaValue;ZLvm2/Varargs;)Lvm2/Varargs;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-static {p1}, Lvm2/lib/IoLib;->optfile(Lvm2/LuaValue;)Lvm2/lib/IoLib$File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 481
    :cond_1b
    invoke-virtual {v0}, Lvm2/lib/IoLib$File;->isclosed()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "file is already closed"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 482
    :cond_26
    invoke-direct {p0, v0, p3}, Lvm2/lib/IoLib;->ioread(Lvm2/lib/IoLib$File;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    if-eqz p2, :cond_3b

    .line 483
    invoke-virtual {p1, v1}, Lvm2/Varargs;->isnil(I)Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {v0}, Lvm2/lib/IoLib$File;->eof()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {v0}, Lvm2/lib/IoLib$File;->close()V

    :cond_3b
    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 254
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    .line 257
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 258
    sget-object v0, Lvm2/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    const-class v1, Lvm2/lib/IoLib$IoLibV;

    invoke-virtual {p0, p1, v1, v0}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 261
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0}, Lvm2/LuaTable;-><init>()V

    iput-object v0, p0, Lvm2/lib/IoLib;->filemethods:Lvm2/LuaTable;

    .line 262
    sget-object v2, Lvm2/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p0, v0, v1, v2, v3}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    .line 265
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0}, Lvm2/LuaTable;-><init>()V

    .line 266
    const-string v2, "__index"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {p0, v0, v1, v2, v3}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    .line 267
    invoke-virtual {p1, v0}, Lvm2/LuaTable;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 270
    invoke-direct {p0, p1}, Lvm2/lib/IoLib;->setLibInstance(Lvm2/LuaTable;)V

    .line 271
    iget-object v1, p0, Lvm2/lib/IoLib;->filemethods:Lvm2/LuaTable;

    invoke-direct {p0, v1}, Lvm2/lib/IoLib;->setLibInstance(Lvm2/LuaTable;)V

    .line 272
    invoke-direct {p0, v0}, Lvm2/lib/IoLib;->setLibInstance(Lvm2/LuaTable;)V

    .line 275
    const-string v0, "io"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 276
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_5c
    return-object p1
.end method

.method public abstract openFile(Ljava/lang/String;ZZZZ)Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openProgram(Ljava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract tmpFile()Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract wrapStderr()Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract wrapStdin()Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract wrapStdout()Lvm2/lib/IoLib$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class vm2.lib.IoLib.File (vm2.lib.IoLib$File)
.class public abstract Lvm2/lib/IoLib$File;
.super Lvm2/LuaValue;
.source "IoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/IoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "File"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/IoLib;


# direct methods
.method public constructor <init>(Lvm2/lib/IoLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lvm2/lib/IoLib$File;->this$0:Lvm2/lib/IoLib;

    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public eof()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lvm2/lib/IoLib$File;->peek()I

    move-result v1
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_5} :catch_9

    if-gez v1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x0

    :catch_9
    return v0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 108
    iget-object v0, p0, Lvm2/lib/IoLib$File;->this$0:Lvm2/lib/IoLib;

    iget-object v0, v0, Lvm2/lib/IoLib;->filemethods:Lvm2/LuaTable;

    invoke-virtual {v0, p1}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract isclosed()Z
.end method

.method public abstract isstdfile()Z
.end method

.method public abstract peek()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remaining()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setvbuf(Ljava/lang/String;I)V
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 116
    const-string v0, "userdata"

    return-object v0
.end method

.method public abstract write(Lvm2/LuaString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class vm2.lib.IoLib.IoLibV (vm2.lib.IoLib$IoLibV)
.class final Lvm2/lib/IoLib$IoLibV;
.super Lvm2/lib/VarArgFunction;
.source "IoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/IoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoLibV"
.end annotation


# instance fields
.field private args:Lvm2/Varargs;

.field private f:Lvm2/lib/IoLib$File;

.field public iolib:Lvm2/lib/IoLib;

.field private toclose:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvm2/lib/IoLib$File;Ljava/lang/String;ILvm2/lib/IoLib;)V
    .registers 5

    .line 299
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 300
    iput-object p1, p0, Lvm2/lib/IoLib$IoLibV;->f:Lvm2/lib/IoLib$File;

    .line 301
    iput-object p2, p0, Lvm2/lib/LibFunction;->name:Ljava/lang/String;

    .line 302
    iput p3, p0, Lvm2/lib/LibFunction;->opcode:I

    .line 303
    iput-object p4, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    return-void
.end method

.method public constructor <init>(Lvm2/lib/IoLib$File;Ljava/lang/String;ILvm2/lib/IoLib;ZLvm2/Varargs;)V
    .registers 7

    .line 294
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/lib/IoLib$IoLibV;-><init>(Lvm2/lib/IoLib$File;Ljava/lang/String;ILvm2/lib/IoLib;)V

    .line 295
    iput-boolean p5, p0, Lvm2/lib/IoLib$IoLibV;->toclose:Z

    .line 296
    invoke-virtual {p6}, Lvm2/Varargs;->dealias()Lvm2/Varargs;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/IoLib$IoLibV;->args:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 308
    :try_start_0
    iget v0, p0, Lvm2/lib/LibFunction;->opcode:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2} :catch_1a

    const-string v1, "r"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_114

    .line 339
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 330
    :pswitch_d
    :try_start_d
    iget-object p1, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->f:Lvm2/lib/IoLib$File;

    iget-boolean v1, p0, Lvm2/lib/IoLib$IoLibV;->toclose:Z

    iget-object v2, p0, Lvm2/lib/IoLib$IoLibV;->args:Lvm2/Varargs;

    invoke-virtual {p1, v0, v1, v2}, Lvm2/lib/IoLib;->_lines_iter(Lvm2/LuaValue;ZLvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :catch_1a
    move-exception p1

    goto/16 :goto_fb

    .line 329
    :pswitch_1d
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_index(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 327
    :pswitch_28
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/lib/IoLib;->_file_write(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 323
    :pswitch_37
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lvm2/lib/IoLib;->_file_setvbuf(Lvm2/LuaValue;Ljava/lang/String;I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 326
    :pswitch_4c
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-string v2, "cur"

    invoke-virtual {p1, v4, v2}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lvm2/lib/IoLib;->_file_seek(Lvm2/LuaValue;Ljava/lang/String;I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 325
    :pswitch_62
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/lib/IoLib;->_file_read(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 324
    :pswitch_71
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_file_lines(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 322
    :pswitch_78
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_file_flush(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 321
    :pswitch_83
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_file_close(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 319
    :pswitch_8e
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_write(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 314
    :pswitch_95
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_type(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 310
    :pswitch_a0
    iget-object p1, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/lib/IoLib;->_io_tmpfile()Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_a7
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_read(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_ae
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lvm2/lib/IoLib;->_io_popen(Ljava/lang/String;Ljava/lang/String;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 313
    :pswitch_bd
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_output(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 316
    :pswitch_c8
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lvm2/lib/IoLib;->_io_open(Ljava/lang/String;Ljava/lang/String;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 317
    :pswitch_d7
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_lines(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 312
    :pswitch_de
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_input(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 309
    :pswitch_e9
    iget-object p1, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/lib/IoLib;->_io_flush()Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 311
    :pswitch_f0
    iget-object v0, p0, Lvm2/lib/IoLib$IoLibV;->iolib:Lvm2/lib/IoLib;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/lib/IoLib;->_io_close(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_fa} :catch_1a

    return-object p1

    .line 333
    :goto_fb
    iget v0, p0, Lvm2/lib/LibFunction;->opcode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_10f

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_108

    goto :goto_10c

    .line 335
    :cond_108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10c
    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 337
    :cond_10f
    invoke-static {p1}, Lvm2/lib/IoLib;->errorresult(Ljava/lang/Exception;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_e9
        :pswitch_de
        :pswitch_d7
        :pswitch_c8
        :pswitch_bd
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
        :pswitch_95
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_71
        :pswitch_62
        :pswitch_4c
        :pswitch_37
        :pswitch_28
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method
