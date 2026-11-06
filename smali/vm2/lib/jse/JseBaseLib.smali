###### Class vm2.lib.jse.JseBaseLib (vm2.lib.jse.JseBaseLib)
.class public Lvm2/lib/jse/JseBaseLib;
.super Lvm2/lib/BaseLib;
.source "JseBaseLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lvm2/lib/BaseLib;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 85
    invoke-super {p0, p1, p2}, Lvm2/lib/BaseLib;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 86
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p1, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    return-object p2
.end method

.method public findResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 108
    invoke-super {p0, p1}, Lvm2/lib/BaseLib;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 110
    :cond_10
    :try_start_10
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    const/4 p1, 0x0

    return-object p1
.end method
