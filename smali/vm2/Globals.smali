###### Class vm2.Globals (vm2.Globals)
.class public Lvm2/Globals;
.super Lvm2/LuaTable;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/Globals$StrReader;,
        Lvm2/Globals$UTF8Stream;,
        Lvm2/Globals$Loader;,
        Lvm2/Globals$Undumper;,
        Lvm2/Globals$BufferedStream;,
        Lvm2/Globals$Compiler;,
        Lvm2/Globals$AbstractBufferedStream;
    }
.end annotation


# instance fields
.field public STDERR:Ljava/io/PrintStream;

.field public STDIN:Ljava/io/InputStream;

.field public STDOUT:Ljava/io/PrintStream;

.field public baselib:Lvm2/lib/BaseLib;

.field public compiler:Lvm2/Globals$Compiler;

.field public debuglib:Lvm2/lib/DebugLib;

.field public finder:Lvm2/lib/ResourceFinder;

.field public loader:Lvm2/Globals$Loader;

.field public package_:Lvm2/lib/PackageLib;

.field public running:Lvm2/LuaThread;

.field public undumper:Lvm2/Globals$Undumper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Lvm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lvm2/Globals;->STDERR:Ljava/io/PrintStream;

    .line 132
    new-instance v0, Lvm2/LuaThread;

    invoke-direct {v0, p0}, Lvm2/LuaThread;-><init>(Lvm2/Globals;)V

    iput-object v0, p0, Lvm2/Globals;->running:Lvm2/LuaThread;

    return-void
.end method


# virtual methods
.method public checkglobals()Lvm2/Globals;
    .registers 1

    .line 0
    return-object p0
.end method

.method public compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lvm2/Globals;->compiler:Lvm2/Globals$Compiler;

    if-nez v0, :cond_9

    .line 305
    const-string v0, "No compiler."

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 306
    :cond_9
    iget-object v0, p0, Lvm2/Globals;->compiler:Lvm2/Globals$Compiler;

    invoke-interface {v0, p1, p2}, Lvm2/Globals$Compiler;->compile(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public compilePrototype(Ljava/io/Reader;Ljava/lang/String;)Lvm2/Prototype;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    new-instance v0, Lvm2/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lvm2/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lvm2/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 256
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lvm2/Globals;->loadPrototype(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    .line 257
    iget-object p3, p0, Lvm2/Globals;->loader:Lvm2/Globals$Loader;

    invoke-interface {p3, p1, p2, p4}, Lvm2/Globals$Loader;->load(Lvm2/Prototype;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaFunction;

    move-result-object p1
    :try_end_a
    .catch Lvm2/LuaError; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    goto :goto_f

    :catch_d
    move-exception p1

    goto :goto_2d

    .line 261
    :goto_f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "load "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 259
    :goto_2d
    throw p1
.end method

.method public load(Ljava/io/Reader;Ljava/lang/String;)Lvm2/LuaValue;
    .registers 4

    .line 231
    new-instance v0, Lvm2/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lvm2/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    const-string p1, "t"

    invoke-virtual {p0, v0, p2, p1, p0}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/Reader;Ljava/lang/String;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 5

    .line 245
    new-instance v0, Lvm2/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lvm2/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    const-string p1, "t"

    invoke-virtual {p0, v0, p2, p1, p3}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 3

    .line 207
    new-instance v0, Lvm2/Globals$StrReader;

    invoke-direct {v0, p1}, Lvm2/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lvm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;
    .registers 4

    .line 198
    new-instance v0, Lvm2/Globals$StrReader;

    invoke-direct {v0, p1}, Lvm2/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lvm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 5

    .line 219
    new-instance v0, Lvm2/Globals$StrReader;

    invoke-direct {v0, p1}, Lvm2/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lvm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public loadPrototype(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lvm2/Prototype;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x62

    .line 273
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2d

    .line 274
    iget-object v0, p0, Lvm2/Globals;->undumper:Lvm2/Globals$Undumper;

    if-nez v0, :cond_11

    .line 275
    const-string v0, "No undumper."

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 276
    :cond_11
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 277
    new-instance v0, Lvm2/Globals$BufferedStream;

    invoke-direct {v0, p1}, Lvm2/Globals$BufferedStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_1d
    const/4 v0, 0x4

    .line 278
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 279
    iget-object v0, p0, Lvm2/Globals;->undumper:Lvm2/Globals$Undumper;

    invoke-interface {v0, p1, p2}, Lvm2/Globals$Undumper;->undump(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object v0

    if-eqz v0, :cond_2a

    return-object v0

    .line 282
    :cond_2a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_2d
    const/16 v0, 0x74

    .line 284
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3a

    .line 285
    invoke-virtual {p0, p1, p2}, Lvm2/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    return-object p1

    .line 287
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load prototype "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using mode \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadfile(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 185
    :try_start_0
    iget-object v0, p0, Lvm2/Globals;->finder:Lvm2/lib/ResourceFinder;

    invoke-interface {v0, p1}, Lvm2/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt"

    invoke-virtual {p0, v0, v1, v2, p0}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public yield(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 314
    iget-object v0, p0, Lvm2/Globals;->running:Lvm2/LuaThread;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lvm2/LuaThread;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_13

    .line 316
    iget-object v0, p0, Lvm2/Globals;->running:Lvm2/LuaThread;

    iget-object v0, v0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 317
    invoke-virtual {v0, p1}, Lvm2/LuaThread$State;->lua_yield(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 315
    :cond_13
    new-instance p1, Lvm2/LuaError;

    const-string v0, "cannot yield main thread"

    invoke-direct {p1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class vm2.Globals.AbstractBufferedStream (vm2.Globals$AbstractBufferedStream)
.class abstract Lvm2/Globals$AbstractBufferedStream;
.super Ljava/io/InputStream;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBufferedStream"
.end annotation


# instance fields
.field protected b:[B

.field protected i:I

.field protected j:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 349
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    .line 350
    new-array p1, p1, [B

    iput-object p1, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    return-void
.end method


# virtual methods
.method public abstract avail()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lvm2/Globals$AbstractBufferedStream;->avail()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 355
    :cond_8
    iget-object v0, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lvm2/Globals$AbstractBufferedStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lvm2/Globals$AbstractBufferedStream;->avail()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 p1, -0x1

    return p1

    .line 363
    :cond_8
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 364
    iget-object v0, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget p1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    return p3
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 370
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    return-wide p1
.end method

###### Class vm2.Globals.BufferedStream (vm2.Globals$BufferedStream)
.class Lvm2/Globals$BufferedStream;
.super Lvm2/Globals$AbstractBufferedStream;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferedStream"
.end annotation


# instance fields
.field private final s:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .registers 3

    .line 421
    invoke-direct {p0, p1}, Lvm2/Globals$AbstractBufferedStream;-><init>(I)V

    .line 422
    iput-object p2, p0, Lvm2/Globals$BufferedStream;->s:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x80

    .line 418
    invoke-direct {p0, v0, p1}, Lvm2/Globals$BufferedStream;-><init>(ILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public avail()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    if-ge v0, v1, :cond_8

    sub-int/2addr v1, v0

    return v1

    .line 426
    :cond_8
    iget-object v0, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    array-length v2, v0

    if-lt v1, v2, :cond_12

    const/4 v1, 0x0

    iput v1, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    iput v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    .line 428
    :cond_12
    iget-object v1, p0, Lvm2/Globals$BufferedStream;->s:Ljava/io/InputStream;

    iget v2, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_20

    return v1

    :cond_20
    if-nez v0, :cond_33

    .line 432
    iget-object v0, p0, Lvm2/Globals$BufferedStream;->s:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_2b

    return v1

    .line 435
    :cond_2b
    iget-object v1, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    iget v2, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    .line 438
    :cond_33
    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lvm2/Globals$BufferedStream;->s:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 6

    monitor-enter p0

    .line 445
    :try_start_1
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    if-gtz v0, :cond_d

    iget-object v1, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    array-length v1, v1

    if-le p1, v1, :cond_28

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_2a

    .line 446
    :cond_d
    :goto_d
    iget-object v1, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    array-length v2, v1

    if-le p1, v2, :cond_15

    new-array p1, p1, [B

    goto :goto_16

    :cond_15
    move-object p1, v1

    .line 447
    :goto_16
    iget v2, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    .line 449
    iput v3, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    .line 450
    iput-object p1, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b

    .line 452
    :cond_28
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_b

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 457
    :try_start_2
    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 458
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

###### Class vm2.Globals.Compiler (vm2.Globals$Compiler)
.class public interface abstract Lvm2/Globals$Compiler;
.super Ljava/lang/Object;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Compiler"
.end annotation


# virtual methods
.method public abstract compile(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class vm2.Globals.Loader (vm2.Globals$Loader)
.class public interface abstract Lvm2/Globals$Loader;
.super Ljava/lang/Object;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loader"
.end annotation


# virtual methods
.method public abstract load(Lvm2/Prototype;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class vm2.Globals.StrReader (vm2.Globals$StrReader)
.class Lvm2/Globals$StrReader;
.super Ljava/io/Reader;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrReader"
.end annotation


# instance fields
.field i:I

.field final n:I

.field final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 325
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lvm2/Globals$StrReader;->i:I

    .line 326
    iput-object p1, p0, Lvm2/Globals$StrReader;->s:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lvm2/Globals$StrReader;->n:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lvm2/Globals$StrReader;->n:I

    iput v0, p0, Lvm2/Globals$StrReader;->i:I

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget v0, p0, Lvm2/Globals$StrReader;->i:I

    iget v1, p0, Lvm2/Globals$StrReader;->n:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lvm2/Globals$StrReader;->s:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lvm2/Globals$StrReader;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public read([CII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1c

    .line 337
    iget v1, p0, Lvm2/Globals$StrReader;->i:I

    iget v2, p0, Lvm2/Globals$StrReader;->n:I

    if-ge v1, v2, :cond_1c

    add-int v2, p2, v0

    .line 338
    iget-object v3, p0, Lvm2/Globals$StrReader;->s:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    .line 337
    iget v1, p0, Lvm2/Globals$StrReader;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lvm2/Globals$StrReader;->i:I

    goto :goto_1

    :cond_1c
    if-gtz v0, :cond_23

    if-nez p3, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, -0x1

    return p1

    :cond_23
    :goto_23
    return v0
.end method

###### Class vm2.Globals.UTF8Stream (vm2.Globals$UTF8Stream)
.class Lvm2/Globals$UTF8Stream;
.super Lvm2/Globals$AbstractBufferedStream;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTF8Stream"
.end annotation


# instance fields
.field private final c:[C

.field private final r:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/16 v0, 0x60

    .line 386
    invoke-direct {p0, v0}, Lvm2/Globals$AbstractBufferedStream;-><init>(I)V

    const/16 v0, 0x20

    .line 383
    new-array v0, v0, [C

    iput-object v0, p0, Lvm2/Globals$UTF8Stream;->c:[C

    .line 387
    iput-object p1, p0, Lvm2/Globals$UTF8Stream;->r:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public avail()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget v0, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    iget v1, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    if-ge v0, v1, :cond_8

    sub-int/2addr v1, v0

    return v1

    .line 391
    :cond_8
    iget-object v0, p0, Lvm2/Globals$UTF8Stream;->r:Ljava/io/Reader;

    iget-object v1, p0, Lvm2/Globals$UTF8Stream;->c:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_14

    return v1

    :cond_14
    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 395
    iget-object v0, p0, Lvm2/Globals$UTF8Stream;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gez v0, :cond_20

    return v1

    .line 398
    :cond_20
    iget-object v1, p0, Lvm2/Globals$UTF8Stream;->c:[C

    int-to-char v0, v0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    .line 401
    :cond_26
    iget-object v1, p0, Lvm2/Globals$UTF8Stream;->c:[C

    iget-object v3, p0, Lvm2/Globals$AbstractBufferedStream;->b:[B

    iput v2, p0, Lvm2/Globals$AbstractBufferedStream;->i:I

    invoke-static {v1, v0, v3, v2}, Lvm2/LuaString;->encodeToUtf8([CI[BI)I

    move-result v0

    iput v0, p0, Lvm2/Globals$AbstractBufferedStream;->j:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lvm2/Globals$UTF8Stream;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

###### Class vm2.Globals.Undumper (vm2.Globals$Undumper)
.class public interface abstract Lvm2/Globals$Undumper;
.super Ljava/lang/Object;
.source "Globals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Undumper"
.end annotation


# virtual methods
.method public abstract undump(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
