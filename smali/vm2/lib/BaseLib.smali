###### Class vm2.lib.BaseLib (vm2.lib.BaseLib)
.class public Lvm2/lib/BaseLib;
.super Lvm2/lib/TwoArgFunction;
.source "BaseLib.java"

# interfaces
.implements Lvm2/lib/ResourceFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/BaseLib$_assert;,
        Lvm2/lib/BaseLib$collectgarbage;,
        Lvm2/lib/BaseLib$dofile;,
        Lvm2/lib/BaseLib$error;,
        Lvm2/lib/BaseLib$getmetatable;,
        Lvm2/lib/BaseLib$load;,
        Lvm2/lib/BaseLib$loadfile;,
        Lvm2/lib/BaseLib$pcall;,
        Lvm2/lib/BaseLib$print;,
        Lvm2/lib/BaseLib$rawequal;,
        Lvm2/lib/BaseLib$rawget;,
        Lvm2/lib/BaseLib$rawlen;,
        Lvm2/lib/BaseLib$rawset;,
        Lvm2/lib/BaseLib$select;,
        Lvm2/lib/BaseLib$setmetatable;,
        Lvm2/lib/BaseLib$tonumber;,
        Lvm2/lib/BaseLib$tostring;,
        Lvm2/lib/BaseLib$type;,
        Lvm2/lib/BaseLib$xpcall;,
        Lvm2/lib/BaseLib$next;,
        Lvm2/lib/BaseLib$pairs;,
        Lvm2/lib/BaseLib$ipairs;,
        Lvm2/lib/BaseLib$StringInputStream;,
        Lvm2/lib/BaseLib$inext;
    }
.end annotation


# instance fields
.field globals:Lvm2/Globals;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 91
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    .line 92
    iput-object p0, p1, Lvm2/Globals;->finder:Lvm2/lib/ResourceFinder;

    .line 93
    iput-object p0, p1, Lvm2/Globals;->baselib:Lvm2/lib/BaseLib;

    .line 94
    const-string p1, "_G"

    invoke-virtual {p2, p1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 95
    const-string p1, "_VERSION"

    const-string v0, "Luaj 0.0"

    invoke-virtual {p2, p1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Lvm2/lib/BaseLib$_assert;

    invoke-direct {p1}, Lvm2/lib/BaseLib$_assert;-><init>()V

    const-string v0, "assert"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 97
    new-instance p1, Lvm2/lib/BaseLib$collectgarbage;

    invoke-direct {p1}, Lvm2/lib/BaseLib$collectgarbage;-><init>()V

    const-string v0, "collectgarbage"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 98
    new-instance p1, Lvm2/lib/BaseLib$dofile;

    invoke-direct {p1, p0}, Lvm2/lib/BaseLib$dofile;-><init>(Lvm2/lib/BaseLib;)V

    const-string v0, "dofile"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 99
    new-instance p1, Lvm2/lib/BaseLib$error;

    invoke-direct {p1}, Lvm2/lib/BaseLib$error;-><init>()V

    const-string v0, "error"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 100
    new-instance p1, Lvm2/lib/BaseLib$getmetatable;

    invoke-direct {p1}, Lvm2/lib/BaseLib$getmetatable;-><init>()V

    const-string v0, "getmetatable"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 101
    new-instance p1, Lvm2/lib/BaseLib$load;

    invoke-direct {p1, p0}, Lvm2/lib/BaseLib$load;-><init>(Lvm2/lib/BaseLib;)V

    const-string v0, "load"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 102
    new-instance p1, Lvm2/lib/BaseLib$loadfile;

    invoke-direct {p1, p0}, Lvm2/lib/BaseLib$loadfile;-><init>(Lvm2/lib/BaseLib;)V

    const-string v0, "loadfile"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 103
    new-instance p1, Lvm2/lib/BaseLib$pcall;

    invoke-direct {p1, p0}, Lvm2/lib/BaseLib$pcall;-><init>(Lvm2/lib/BaseLib;)V

    const-string v0, "pcall"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 104
    new-instance p1, Lvm2/lib/BaseLib$print;

    invoke-direct {p1, p0, p0}, Lvm2/lib/BaseLib$print;-><init>(Lvm2/lib/BaseLib;Lvm2/lib/BaseLib;)V

    const-string v0, "print"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 105
    new-instance p1, Lvm2/lib/BaseLib$rawequal;

    invoke-direct {p1}, Lvm2/lib/BaseLib$rawequal;-><init>()V

    const-string v0, "rawequal"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 106
    new-instance p1, Lvm2/lib/BaseLib$rawget;

    invoke-direct {p1}, Lvm2/lib/BaseLib$rawget;-><init>()V

    const-string v0, "rawget"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 107
    new-instance p1, Lvm2/lib/BaseLib$rawlen;

    invoke-direct {p1}, Lvm2/lib/BaseLib$rawlen;-><init>()V

    const-string v0, "rawlen"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 108
    new-instance p1, Lvm2/lib/BaseLib$rawset;

    invoke-direct {p1}, Lvm2/lib/BaseLib$rawset;-><init>()V

    const-string v0, "rawset"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 109
    new-instance p1, Lvm2/lib/BaseLib$select;

    invoke-direct {p1}, Lvm2/lib/BaseLib$select;-><init>()V

    const-string v0, "select"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 110
    new-instance p1, Lvm2/lib/BaseLib$setmetatable;

    invoke-direct {p1}, Lvm2/lib/BaseLib$setmetatable;-><init>()V

    const-string v0, "setmetatable"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 111
    new-instance p1, Lvm2/lib/BaseLib$tonumber;

    invoke-direct {p1}, Lvm2/lib/BaseLib$tonumber;-><init>()V

    const-string v0, "tonumber"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 112
    new-instance p1, Lvm2/lib/BaseLib$tostring;

    invoke-direct {p1}, Lvm2/lib/BaseLib$tostring;-><init>()V

    const-string v0, "tostring"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 113
    new-instance p1, Lvm2/lib/BaseLib$type;

    invoke-direct {p1}, Lvm2/lib/BaseLib$type;-><init>()V

    const-string v0, "type"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 114
    new-instance p1, Lvm2/lib/BaseLib$xpcall;

    invoke-direct {p1, p0}, Lvm2/lib/BaseLib$xpcall;-><init>(Lvm2/lib/BaseLib;)V

    const-string v0, "xpcall"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 117
    new-instance p1, Lvm2/lib/BaseLib$next;

    invoke-direct {p1}, Lvm2/lib/BaseLib$next;-><init>()V

    const-string v0, "next"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 118
    new-instance v0, Lvm2/lib/BaseLib$pairs;

    invoke-direct {v0, p1}, Lvm2/lib/BaseLib$pairs;-><init>(Lvm2/lib/BaseLib$next;)V

    const-string p1, "pairs"

    invoke-virtual {p2, p1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 119
    new-instance p1, Lvm2/lib/BaseLib$ipairs;

    invoke-direct {p1}, Lvm2/lib/BaseLib$ipairs;-><init>()V

    const-string v0, "ipairs"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object p2
.end method

.method public findResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1c

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public loadFile(Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 7

    .line 437
    iget-object v0, p0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->finder:Lvm2/lib/ResourceFinder;

    invoke-interface {v0, p1}, Lvm2/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 439
    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": No such file or directory"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 441
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lvm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_49

    .line 444
    :try_start_40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p2

    .line 446
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    :catchall_49
    move-exception p1

    .line 444
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p2

    .line 446
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    :goto_52
    throw p1
.end method

.method public loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 6

    if-nez p1, :cond_20

    .line 454
    :try_start_2
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :catch_1e
    move-exception p1

    goto :goto_27

    .line 455
    :cond_20
    iget-object v0, p0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_1e

    return-object p1

    .line 457
    :goto_27
    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.StringInputStream (vm2.lib.BaseLib$StringInputStream)
.class Lvm2/lib/BaseLib$StringInputStream;
.super Ljava/io/InputStream;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringInputStream"
.end annotation


# instance fields
.field bytes:[B

.field final func:Lvm2/LuaValue;

.field offset:I

.field remaining:I


# direct methods
.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 3

    .line 466
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 465
    iput v0, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    .line 467
    iput-object p1, p0, Lvm2/lib/BaseLib$StringInputStream;->func:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget v0, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    const/4 v1, -0x1

    if-gez v0, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_2a

    .line 473
    iget-object v0, p0, Lvm2/lib/BaseLib$StringInputStream;->func:Lvm2/LuaValue;

    invoke-virtual {v0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 475
    iput v1, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    return v1

    .line 476
    :cond_17
    invoke-virtual {v0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v0

    .line 477
    iget-object v2, v0, Lvm2/LuaString;->m_bytes:[B

    iput-object v2, p0, Lvm2/lib/BaseLib$StringInputStream;->bytes:[B

    .line 478
    iget v2, v0, Lvm2/LuaString;->m_offset:I

    iput v2, p0, Lvm2/lib/BaseLib$StringInputStream;->offset:I

    .line 479
    iget v0, v0, Lvm2/LuaString;->m_length:I

    iput v0, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    if-gtz v0, :cond_2a

    return v1

    .line 483
    :cond_2a
    iget v0, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lvm2/lib/BaseLib$StringInputStream;->remaining:I

    .line 484
    iget-object v0, p0, Lvm2/lib/BaseLib$StringInputStream;->bytes:[B

    iget v1, p0, Lvm2/lib/BaseLib$StringInputStream;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvm2/lib/BaseLib$StringInputStream;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

###### Class vm2.lib.BaseLib._assert (vm2.lib.BaseLib$_assert)
.class final Lvm2/lib/BaseLib$_assert;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "_assert"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 136
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 137
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "assertion failed!"

    if-le v0, v1, :cond_18

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_18
    invoke-static {v2}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_1b
    return-object p1
.end method

###### Class vm2.lib.BaseLib.collectgarbage (vm2.lib.BaseLib$collectgarbage)
.class final Lvm2/lib/BaseLib$collectgarbage;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "collectgarbage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 145
    const-string v1, "collect"

    invoke-virtual {p1, v0, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 147
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 148
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1

    .line 149
    :cond_13
    const-string v1, "count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 150
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    .line 152
    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    const-wide/16 v2, 0x400

    rem-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 153
    :cond_3d
    const-string v1, "step"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 154
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 157
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 159
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.BaseLib.dofile (vm2.lib.BaseLib$dofile)
.class final Lvm2/lib/BaseLib$dofile;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dofile"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lvm2/lib/BaseLib$dofile;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnil(I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v1, v0

    :goto_11
    const-string v2, "filename must be string or nil"

    invoke-virtual {p1, v1, v0, v2}, Lvm2/Varargs;->argcheck(ZILjava/lang/String;)V

    .line 167
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1, v0}, Lvm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 168
    :goto_22
    const-string v2, "bt"

    if-nez v1, :cond_33

    .line 169
    iget-object p1, p0, Lvm2/lib/BaseLib$dofile;->this$0:Lvm2/lib/BaseLib;

    iget-object v1, p1, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v3, v1, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    const-string v4, "=stdin"

    invoke-virtual {p1, v3, v4, v2, v1}, Lvm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    goto :goto_41

    .line 170
    :cond_33
    iget-object v1, p0, Lvm2/lib/BaseLib$dofile;->this$0:Lvm2/lib/BaseLib;

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lvm2/lib/BaseLib$dofile;->this$0:Lvm2/lib/BaseLib;

    iget-object v3, v3, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    invoke-virtual {v1, p1, v2, v3}, Lvm2/lib/BaseLib;->loadFile(Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    .line 171
    :goto_41
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnil(I)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lvm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_51
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->invoke()Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.error (vm2.lib.BaseLib$error)
.class final Lvm2/lib/BaseLib$error;
.super Lvm2/lib/TwoArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "error"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 178
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_28

    .line 179
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_22

    .line 180
    :cond_14
    new-instance v1, Lvm2/LuaError;

    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    invoke-direct {v1, p1, p2}, Lvm2/LuaError;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 179
    :cond_22
    :goto_22
    new-instance p2, Lvm2/LuaError;

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Lvm2/LuaValue;)V

    throw p2

    .line 178
    :cond_28
    new-instance p1, Lvm2/LuaError;

    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-direct {p1, p2}, Lvm2/LuaError;-><init>(Lvm2/LuaValue;)V

    throw p1
.end method

###### Class vm2.lib.BaseLib.getmetatable (vm2.lib.BaseLib$getmetatable)
.class final Lvm2/lib/BaseLib$getmetatable;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getmetatable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    .line 187
    const-string v1, "value expected"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 190
    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 191
    sget-object v0, Lvm2/LuaValue;->METATABLE:Lvm2/LuaString;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->optvalue(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.BaseLib.inext (vm2.lib.BaseLib$inext)
.class final Lvm2/lib/BaseLib$inext;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "inext"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 424
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaTable;->inext(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.ipairs (vm2.lib.BaseLib$ipairs)
.class final Lvm2/lib/BaseLib$ipairs;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ipairs"
.end annotation


# instance fields
.field inext:Lvm2/lib/BaseLib$inext;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 409
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 410
    new-instance v0, Lvm2/lib/BaseLib$inext;

    invoke-direct {v0}, Lvm2/lib/BaseLib$inext;-><init>()V

    iput-object v0, p0, Lvm2/lib/BaseLib$ipairs;->inext:Lvm2/lib/BaseLib$inext;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 412
    iget-object v0, p0, Lvm2/lib/BaseLib$ipairs;->inext:Lvm2/lib/BaseLib$inext;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object p1

    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {v0, p1, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.load (vm2.lib.BaseLib$load)
.class final Lvm2/lib/BaseLib$load;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "load"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lvm2/lib/BaseLib$load;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 197
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lvm2/LuaValue;->isfunction()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_31

    .line 199
    :cond_11
    new-instance p1, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument #1 to \'load\' (string or function expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_31
    :goto_31
    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    const-string v1, "=(load)"

    :goto_3e
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 202
    const-string v3, "bt"

    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lvm2/lib/BaseLib$load;->this$0:Lvm2/lib/BaseLib;

    iget-object v3, v3, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lvm2/Varargs;->optvalue(ILvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 204
    iget-object v3, p0, Lvm2/lib/BaseLib$load;->this$0:Lvm2/lib/BaseLib;

    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaString;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6e

    .line 205
    :cond_64
    new-instance v4, Lvm2/lib/BaseLib$StringInputStream;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v0

    invoke-direct {v4, v0}, Lvm2/lib/BaseLib$StringInputStream;-><init>(Lvm2/LuaValue;)V

    move-object v0, v4

    .line 204
    :goto_6e
    invoke-virtual {v3, v0, v1, v2, p1}, Lvm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.loadfile (vm2.lib.BaseLib$loadfile)
.class final Lvm2/lib/BaseLib$loadfile;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "loadfile"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lvm2/lib/BaseLib$loadfile;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnil(I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v1, v0

    :goto_11
    const-string v2, "filename must be string or nil"

    invoke-virtual {p1, v1, v0, v2}, Lvm2/Varargs;->argcheck(ZILjava/lang/String;)V

    .line 213
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1, v0}, Lvm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    const/4 v1, 0x2

    .line 214
    const-string v2, "bt"

    invoke-virtual {p1, v1, v2}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lvm2/lib/BaseLib$loadfile;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lvm2/Varargs;->optvalue(ILvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    if-nez v0, :cond_41

    .line 217
    iget-object v0, p0, Lvm2/lib/BaseLib$loadfile;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v2, v2, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    const-string v3, "=stdin"

    invoke-virtual {v0, v2, v3, v1, p1}, Lvm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 218
    :cond_41
    iget-object v2, p0, Lvm2/lib/BaseLib$loadfile;->this$0:Lvm2/lib/BaseLib;

    invoke-virtual {v2, v0, v1, p1}, Lvm2/lib/BaseLib;->loadFile(Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.next (vm2.lib.BaseLib$next)
.class final Lvm2/lib/BaseLib$next;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "next"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 417
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaTable;->next(Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.pairs (vm2.lib.BaseLib$pairs)
.class final Lvm2/lib/BaseLib$pairs;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pairs"
.end annotation


# instance fields
.field final next:Lvm2/lib/BaseLib$next;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib$next;)V
    .registers 2

    .line 400
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 401
    iput-object p1, p0, Lvm2/lib/BaseLib$pairs;->next:Lvm2/lib/BaseLib$next;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 404
    iget-object v0, p0, Lvm2/lib/BaseLib$pairs;->next:Lvm2/lib/BaseLib$next;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object p1

    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-static {v0, p1, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.pcall (vm2.lib.BaseLib$pcall)
.class final Lvm2/lib/BaseLib$pcall;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "pcall"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v1, v1, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v1, :cond_12

    .line 227
    invoke-virtual {v1, p0}, Lvm2/lib/DebugLib;->onCall(Lvm2/LuaFunction;)V

    .line 229
    :cond_12
    :try_start_12
    sget-object v1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-static {v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_21
    .catch Lvm2/LuaError; {:try_start_12 .. :try_end_21} :catch_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_31
    .catchall {:try_start_12 .. :try_end_21} :catchall_2f

    .line 237
    iget-object v0, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_2e

    .line 238
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_2e
    return-object p1

    :catchall_2f
    move-exception p1

    goto :goto_75

    :catch_31
    move-exception p1

    goto :goto_35

    :catch_33
    move-exception p1

    goto :goto_58

    .line 234
    :goto_35
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-eqz v0, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_2f

    .line 237
    iget-object v0, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v0, :cond_57

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_57

    .line 238
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_57
    return-object p1

    .line 231
    :goto_58
    :try_start_58
    invoke-virtual {p1}, Lvm2/LuaError;->getMessageObject()Lvm2/LuaValue;

    move-result-object p1

    .line 232
    sget-object v0, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-eqz p1, :cond_61

    goto :goto_63

    :cond_61
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_63
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_2f

    .line 237
    iget-object v0, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v0, :cond_74

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_74

    .line 238
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_74
    return-object p1

    .line 237
    :goto_75
    iget-object v0, p0, Lvm2/lib/BaseLib$pcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v0, :cond_82

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_82

    .line 238
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    .line 239
    :cond_82
    throw p1
.end method

###### Class vm2.lib.BaseLib.print (vm2.lib.BaseLib$print)
.class final Lvm2/lib/BaseLib$print;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "print"
.end annotation


# instance fields
.field final baselib:Lvm2/lib/BaseLib;

.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;Lvm2/lib/BaseLib;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lvm2/lib/BaseLib$print;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 247
    iput-object p2, p0, Lvm2/lib/BaseLib$print;->baselib:Lvm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 250
    iget-object v0, p0, Lvm2/lib/BaseLib$print;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    const-string v1, "tostring"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_10
    if-gt v3, v1, :cond_3b

    if-le v3, v2, :cond_1f

    .line 252
    iget-object v4, p0, Lvm2/lib/BaseLib$print;->this$0:Lvm2/lib/BaseLib;

    iget-object v4, v4, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v4, v4, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    .line 253
    :cond_1f
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v4

    .line 254
    iget-object v5, p0, Lvm2/lib/BaseLib$print;->this$0:Lvm2/lib/BaseLib;

    iget-object v5, v5, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v5, v5, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 256
    :cond_3b
    iget-object p1, p0, Lvm2/lib/BaseLib$print;->this$0:Lvm2/lib/BaseLib;

    iget-object p1, p1, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object p1, p1, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(C)V

    .line 257
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.BaseLib.rawequal (vm2.lib.BaseLib$rawequal)
.class final Lvm2/lib/BaseLib$rawequal;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rawequal"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    .line 265
    const-string v1, "value expected"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 p1, 0x2

    .line 268
    const-string v0, "value expected"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 271
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->raweq(Lvm2/LuaValue;)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.rawget (vm2.lib.BaseLib$rawget)
.class final Lvm2/lib/BaseLib$rawget;
.super Lvm2/lib/TableLibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rawget"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 276
    invoke-direct {p0}, Lvm2/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 p1, 0x2

    .line 278
    const-string v0, "value expected"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 281
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaTable;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.rawlen (vm2.lib.BaseLib$rawlen)
.class final Lvm2/lib/BaseLib$rawlen;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rawlen"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 287
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 289
    invoke-virtual {p1}, Lvm2/LuaValue;->rawlen()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.rawset (vm2.lib.BaseLib$rawset)
.class final Lvm2/lib/BaseLib$rawset;
.super Lvm2/lib/TableLibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rawset"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Lvm2/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 p1, 0x2

    .line 296
    const-string v0, "value expected"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 p1, 0x3

    .line 299
    const-string p2, "value expected"

    invoke-static {p1, p2}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 302
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 303
    invoke-virtual {p2}, Lvm2/LuaValue;->isvalidkey()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x2

    const-string v1, "table index is nil"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 304
    :cond_10
    invoke-virtual {p1, p2, p3}, Lvm2/LuaTable;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-object p1
.end method

###### Class vm2.lib.BaseLib.select (vm2.lib.BaseLib$select)
.class final Lvm2/lib/BaseLib$select;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "select"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 312
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 313
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v2

    const-string v3, "#"

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 314
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1b
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    if-eqz v2, :cond_24

    neg-int v3, v0

    if-ge v2, v3, :cond_29

    .line 317
    :cond_24
    const-string v3, "index out of range"

    invoke-static {v1, v3}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_29
    if-gez v2, :cond_2f

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_31

    :cond_2f
    add-int/lit8 v0, v2, 0x1

    .line 318
    :goto_31
    invoke-virtual {p1, v0}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.setmetatable (vm2.lib.BaseLib$setmetatable)
.class final Lvm2/lib/BaseLib$setmetatable;
.super Lvm2/lib/TableLibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setmetatable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Lvm2/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 p1, 0x2

    .line 325
    const-string v0, "nil or table expected"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 328
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaTable;->getmetatable()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 329
    sget-object v1, Lvm2/LuaValue;->METATABLE:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 330
    const-string v0, "cannot change a protected metatable"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 331
    :cond_1b
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p2, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p2

    :goto_27
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.tonumber (vm2.lib.BaseLib$tonumber)
.class final Lvm2/lib/BaseLib$tonumber;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tonumber"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 338
    invoke-virtual {p1}, Lvm2/LuaValue;->tonumber()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 341
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    invoke-virtual {p1}, Lvm2/LuaValue;->tonumber()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 343
    :cond_b
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_16

    const/16 v1, 0x24

    if-le p2, v1, :cond_1b

    .line 345
    :cond_16
    const-string v1, "base out of range"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 346
    :cond_1b
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaString;->tonumber(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.tostring (vm2.lib.BaseLib$tostring)
.class final Lvm2/lib/BaseLib$tostring;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tostring"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 353
    sget-object v0, Lvm2/LuaValue;->TOSTRING:Lvm2/LuaString;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_11

    .line 355
    invoke-virtual {v0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 356
    :cond_11
    invoke-virtual {p1}, Lvm2/LuaValue;->tostring()Lvm2/LuaValue;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_1c

    return-object v0

    .line 359
    :cond_1c
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.type (vm2.lib.BaseLib$type)
.class final Lvm2/lib/BaseLib$type;
.super Lvm2/lib/LibFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "type"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 364
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 366
    invoke-virtual {p1}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.BaseLib.xpcall (vm2.lib.BaseLib$xpcall)
.class final Lvm2/lib/BaseLib$xpcall;
.super Lvm2/lib/VarArgFunction;
.source "BaseLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "xpcall"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/BaseLib;


# direct methods
.method public constructor <init>(Lvm2/lib/BaseLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 373
    iget-object v0, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v0, v0, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    .line 374
    iget-object v1, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    const/4 v2, 0x2

    .line 375
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v2

    iput-object v2, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    .line 377
    :try_start_f
    iget-object v2, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_20

    .line 378
    invoke-virtual {v2, p0}, Lvm2/lib/DebugLib;->onCall(Lvm2/LuaFunction;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1d

    goto :goto_20

    :catchall_1d
    move-exception p1

    goto/16 :goto_9b

    .line 380
    :cond_20
    :goto_20
    :try_start_20
    sget-object v2, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v3, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-static {v2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_33
    .catch Lvm2/LuaError; {:try_start_20 .. :try_end_33} :catch_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_45
    .catchall {:try_start_20 .. :try_end_33} :catchall_43

    .line 388
    :try_start_33
    iget-object v2, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v2, :cond_40

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_40

    .line 389
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_1d

    .line 392
    :cond_40
    iput-object v1, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    return-object p1

    :catchall_43
    move-exception p1

    goto :goto_8d

    :catch_45
    move-exception p1

    goto :goto_49

    :catch_47
    move-exception p1

    goto :goto_6e

    .line 385
    :goto_49
    :try_start_49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 386
    sget-object v3, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-eqz v2, :cond_52

    goto :goto_56

    :cond_52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {v3, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_43

    .line 388
    :try_start_5e
    iget-object v2, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v2, :cond_6b

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_6b

    .line 389
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_1d

    .line 392
    :cond_6b
    iput-object v1, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    return-object p1

    .line 382
    :goto_6e
    :try_start_6e
    invoke-virtual {p1}, Lvm2/LuaError;->getMessageObject()Lvm2/LuaValue;

    move-result-object p1

    .line 383
    sget-object v2, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-eqz p1, :cond_77

    goto :goto_79

    :cond_77
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_79
    invoke-static {v2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_43

    .line 388
    :try_start_7d
    iget-object v2, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v2, :cond_8a

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_8a

    .line 389
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_1d

    .line 392
    :cond_8a
    iput-object v1, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    return-object p1

    .line 388
    :goto_8d
    :try_start_8d
    iget-object v2, p0, Lvm2/lib/BaseLib$xpcall;->this$0:Lvm2/lib/BaseLib;

    iget-object v2, v2, Lvm2/lib/BaseLib;->globals:Lvm2/Globals;

    if-eqz v2, :cond_9a

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_9a

    .line 389
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    .line 390
    :cond_9a
    throw p1
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_1d

    .line 392
    :goto_9b
    iput-object v1, v0, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    .line 393
    throw p1
.end method
