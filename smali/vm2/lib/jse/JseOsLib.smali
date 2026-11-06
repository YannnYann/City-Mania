###### Class vm2.lib.jse.JseOsLib (vm2.lib.jse.JseOsLib)
.class public Lvm2/lib/jse/JseOsLib;
.super Lvm2/lib/OsLib;
.source "JseOsLib.java"


# static fields
.field public static final EXEC_ERROR:I = -0x3

.field public static final EXEC_INTERRUPTED:I = -0x2

.field public static final EXEC_IOEXCEPTION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Lvm2/lib/OsLib;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Lvm2/Varargs;
    .registers 6

    .line 97
    :try_start_0
    new-instance v0, Lvm2/lib/jse/JseProcess;

    iget-object v1, p0, Lvm2/lib/OsLib;->globals:Lvm2/Globals;

    iget-object v2, v1, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    iget-object v1, v1, Lvm2/Globals;->STDERR:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v2, v1}, Lvm2/lib/jse/JseProcess;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lvm2/lib/jse/JseProcess;->waitFor()I

    move-result p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_13
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    const/4 p1, -0x3

    goto :goto_16

    :catch_13
    const/4 p1, -0x2

    goto :goto_16

    :catch_15
    const/4 p1, 0x1

    :goto_16
    if-nez p1, :cond_27

    .line 106
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    const-string v0, "exit"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {p1, v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 107
    :cond_27
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const-string v1, "signal"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 90
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 91
    :cond_7
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 115
    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to delete"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No such file or directory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 122
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 123
    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to rename"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No such file or directory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tmpname()Ljava/lang/String;
    .registers 3

    .line 128
    :try_start_0
    const-string v0, ".luaj"

    const-string v1, "tmp"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 131
    :catch_d
    invoke-super {p0}, Lvm2/lib/OsLib;->tmpname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
