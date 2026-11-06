###### Class vm2.lib.PackageLib (vm2.lib.PackageLib)
.class public Lvm2/lib/PackageLib;
.super Lvm2/lib/TwoArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/PackageLib$require;,
        Lvm2/lib/PackageLib$loadlib;,
        Lvm2/lib/PackageLib$searchpath;,
        Lvm2/lib/PackageLib$preload_searcher;,
        Lvm2/lib/PackageLib$lua_searcher;,
        Lvm2/lib/PackageLib$java_searcher;
    }
.end annotation


# static fields
.field public static final DEFAULT_LUA_PATH:Ljava/lang/String;

.field private static final FILE_SEP:Ljava/lang/String;

.field static final _LOADED:Lvm2/LuaString;

.field private static final _LOADLIB:Lvm2/LuaString;

.field static final _PATH:Lvm2/LuaString;

.field static final _PRELOAD:Lvm2/LuaString;

.field static final _SEARCHERS:Lvm2/LuaString;

.field static final _SEARCHPATH:Lvm2/LuaString;

.field private static final _SENTINEL:Lvm2/LuaString;


# instance fields
.field globals:Lvm2/Globals;

.field public java_searcher:Lvm2/lib/PackageLib$java_searcher;

.field public lua_searcher:Lvm2/lib/PackageLib$lua_searcher;

.field package_:Lvm2/LuaTable;

.field public preload_searcher:Lvm2/lib/PackageLib$preload_searcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 90
    :try_start_0
    const-string v0, "luaj.package.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    .line 92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 95
    const-string v0, "?.lua"

    .line 97
    :cond_16
    sput-object v0, Lvm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    .line 100
    const-string v0, "loaded"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_LOADED:Lvm2/LuaString;

    .line 101
    const-string v0, "loadlib"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_LOADLIB:Lvm2/LuaString;

    .line 102
    const-string v0, "preload"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_PRELOAD:Lvm2/LuaString;

    .line 103
    const-string v0, "path"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_PATH:Lvm2/LuaString;

    .line 104
    const-string v0, "searchpath"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_SEARCHPATH:Lvm2/LuaString;

    .line 105
    const-string v0, "searchers"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_SEARCHERS:Lvm2/LuaString;

    .line 122
    const-string v0, "\u0001"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->_SENTINEL:Lvm2/LuaString;

    .line 124
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/PackageLib;->FILE_SEP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lvm2/LuaString;
    .registers 1

    .line 82
    sget-object v0, Lvm2/lib/PackageLib;->_SENTINEL:Lvm2/LuaString;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 82
    sget-object v0, Lvm2/lib/PackageLib;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method private static final isClassnamePart(C)Z
    .registers 3

    .line 0
    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7a

    if-le p0, v0, :cond_19

    :cond_9
    const/16 v0, 0x41

    if-lt p0, v0, :cond_11

    const/16 v0, 0x5a

    if-le p0, v0, :cond_19

    :cond_11
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1a

    :cond_19
    return v1

    :cond_1a
    const/16 v0, 0x24

    if-eq p0, v0, :cond_28

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_28

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    return v1
.end method

.method public static final toClassname(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 351
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 353
    const-string v1, ".lua"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v1, v0, -0x4

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_51

    .line 356
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 357
    invoke-static {v4}, Lvm2/lib/PackageLib;->isClassnamePart(C)Z

    move-result v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    if-eqz v5, :cond_2a

    if-eq v4, v7, :cond_2a

    if-ne v4, v6, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 358
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_2f
    if-ge v2, v1, :cond_4c

    .line 360
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 362
    invoke-static {v3}, Lvm2/lib/PackageLib;->isClassnamePart(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_46

    :cond_3c
    if-eq v3, v7, :cond_44

    if-ne v3, v6, :cond_41

    goto :goto_44

    :cond_41
    const/16 v3, 0x5f

    goto :goto_46

    :cond_44
    :goto_44
    const/16 v3, 0x2e

    .line 361
    :goto_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 365
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_51
    if-ne v0, v1, :cond_54

    return-object p0

    .line 368
    :cond_54
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 136
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    .line 137
    new-instance v0, Lvm2/lib/PackageLib$require;

    invoke-direct {v0, p0}, Lvm2/lib/PackageLib$require;-><init>(Lvm2/lib/PackageLib;)V

    const-string v1, "require"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 138
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    iput-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    .line 139
    sget-object v0, Lvm2/lib/PackageLib;->_LOADED:Lvm2/LuaString;

    new-instance v1, Lvm2/LuaTable;

    invoke-direct {v1}, Lvm2/LuaTable;-><init>()V

    invoke-virtual {p1, v0, v1}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 140
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_PRELOAD:Lvm2/LuaString;

    new-instance v2, Lvm2/LuaTable;

    invoke-direct {v2}, Lvm2/LuaTable;-><init>()V

    invoke-virtual {p1, v1, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 141
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_PATH:Lvm2/LuaString;

    sget-object v2, Lvm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 142
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_LOADLIB:Lvm2/LuaString;

    new-instance v2, Lvm2/lib/PackageLib$loadlib;

    invoke-direct {v2}, Lvm2/lib/PackageLib$loadlib;-><init>()V

    invoke-virtual {p1, v1, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 143
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_SEARCHPATH:Lvm2/LuaString;

    new-instance v2, Lvm2/lib/PackageLib$searchpath;

    invoke-direct {v2, p0}, Lvm2/lib/PackageLib$searchpath;-><init>(Lvm2/lib/PackageLib;)V

    invoke-virtual {p1, v1, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 144
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 145
    new-instance v1, Lvm2/lib/PackageLib$preload_searcher;

    invoke-direct {v1, p0}, Lvm2/lib/PackageLib$preload_searcher;-><init>(Lvm2/lib/PackageLib;)V

    iput-object v1, p0, Lvm2/lib/PackageLib;->preload_searcher:Lvm2/lib/PackageLib$preload_searcher;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    .line 146
    new-instance v1, Lvm2/lib/PackageLib$lua_searcher;

    invoke-direct {v1, p0}, Lvm2/lib/PackageLib$lua_searcher;-><init>(Lvm2/lib/PackageLib;)V

    iput-object v1, p0, Lvm2/lib/PackageLib;->lua_searcher:Lvm2/lib/PackageLib$lua_searcher;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    .line 147
    new-instance v1, Lvm2/lib/PackageLib$java_searcher;

    invoke-direct {v1, p0}, Lvm2/lib/PackageLib$java_searcher;-><init>(Lvm2/lib/PackageLib;)V

    iput-object v1, p0, Lvm2/lib/PackageLib;->java_searcher:Lvm2/lib/PackageLib$java_searcher;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lvm2/LuaTable;->set(ILvm2/LuaValue;)V

    .line 148
    iget-object v1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v2, Lvm2/lib/PackageLib;->_SEARCHERS:Lvm2/LuaString;

    invoke-virtual {v1, v2, p1}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 149
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lvm2/lib/PackageLib;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n;\n?\n!\n-\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {p1, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    invoke-virtual {p1, v0}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    iget-object v0, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 151
    iget-object p1, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    invoke-virtual {p2, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 152
    iget-object p1, p0, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    iput-object p0, p1, Lvm2/Globals;->package_:Lvm2/lib/PackageLib;

    return-object p2
.end method

.method public setIsLoaded(Ljava/lang/String;Lvm2/LuaTable;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_LOADED:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public setLuaPath(Ljava/lang/String;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_PATH:Lvm2/LuaString;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 169
    const-string v0, "package"

    return-object v0
.end method

###### Class vm2.lib.PackageLib.java_searcher (vm2.lib.PackageLib$java_searcher)
.class public Lvm2/lib/PackageLib$java_searcher;
.super Lvm2/lib/VarArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "java_searcher"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lvm2/lib/PackageLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lvm2/lib/PackageLib$java_searcher;->this$0:Lvm2/lib/PackageLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {p1}, Lvm2/lib/PackageLib;->toClassname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    :try_start_9
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm2/LuaValue;

    .line 338
    invoke-virtual {v0}, Lvm2/LuaValue;->isfunction()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 339
    move-object v1, v0

    check-cast v1, Lvm2/LuaFunction;

    iget-object v2, p0, Lvm2/lib/PackageLib$java_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v2, v2, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->initupvalue1(Lvm2/LuaValue;)V

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_2f

    .line 340
    :cond_26
    :goto_26
    iget-object v1, p0, Lvm2/lib/PackageLib$java_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v1, v1, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    invoke-static {v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_2e} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_24

    return-object p1

    .line 344
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tjava load failed on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 342
    :catch_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tno class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.PackageLib.loadlib (vm2.lib.PackageLib$loadlib)
.class public Lvm2/lib/PackageLib$loadlib;
.super Lvm2/lib/VarArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "loadlib"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    .line 244
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const-string v0, "dynamic libraries not enabled"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    const-string v1, "absent"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.PackageLib.lua_searcher (vm2.lib.PackageLib$lua_searcher)
.class public Lvm2/lib/PackageLib$lua_searcher;
.super Lvm2/lib/VarArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "lua_searcher"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lvm2/lib/PackageLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lvm2/lib/PackageLib$lua_searcher;->this$0:Lvm2/lib/PackageLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object p1

    .line 263
    iget-object v1, p0, Lvm2/lib/PackageLib$lua_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v1, v1, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v2, Lvm2/lib/PackageLib;->_PATH:Lvm2/LuaString;

    invoke-virtual {v1, v2}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lvm2/LuaValue;->isstring()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 265
    const-string p1, "package.path is not a string"

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 268
    :cond_1c
    iget-object v2, p0, Lvm2/lib/PackageLib$lua_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v2, v2, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v3, Lvm2/lib/PackageLib;->_SEARCHPATH:Lvm2/LuaString;

    invoke-virtual {v2, v3}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    invoke-static {p1, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v2, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isstring(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3e

    .line 272
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tostring()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 273
    :cond_3e
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lvm2/lib/PackageLib$lua_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v0, v0, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    invoke-virtual {p1}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvm2/Globals;->loadfile(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isfunction()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 278
    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 281
    :cond_65
    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {v2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.PackageLib.preload_searcher (vm2.lib.PackageLib$preload_searcher)
.class public Lvm2/lib/PackageLib$preload_searcher;
.super Lvm2/lib/VarArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "preload_searcher"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lvm2/lib/PackageLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lvm2/lib/PackageLib$preload_searcher;->this$0:Lvm2/lib/PackageLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lvm2/lib/PackageLib$preload_searcher;->this$0:Lvm2/lib/PackageLib;

    iget-object v0, v0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_PRELOAD:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tno field package.preload[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\']"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    :cond_34
    return-object v0
.end method

###### Class vm2.lib.PackageLib.require (vm2.lib.PackageLib$require)
.class public Lvm2/lib/PackageLib$require;
.super Lvm2/lib/OneArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "require"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lvm2/lib/PackageLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lvm2/lib/PackageLib$require;->this$0:Lvm2/lib/PackageLib;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 10

    .line 203
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lvm2/lib/PackageLib$require;->this$0:Lvm2/lib/PackageLib;

    iget-object v0, v0, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v1, Lvm2/lib/PackageLib;->_LOADED:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lvm2/LuaValue;->toboolean()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 207
    invoke-static {}, Lvm2/lib/PackageLib;->access$000()Lvm2/LuaString;

    move-result-object v0

    if-ne v1, v0, :cond_37

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop or previous error loading module \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_37
    return-object v1

    .line 213
    :cond_38
    iget-object v1, p0, Lvm2/lib/PackageLib$require;->this$0:Lvm2/lib/PackageLib;

    iget-object v1, v1, Lvm2/lib/PackageLib;->package_:Lvm2/LuaTable;

    sget-object v2, Lvm2/lib/PackageLib;->_SEARCHERS:Lvm2/LuaString;

    invoke-virtual {v1, v2}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    .line 217
    :goto_4d
    invoke-virtual {v1, v4}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v5

    .line 218
    invoke-virtual {v5}, Lvm2/LuaValue;->isnil()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "module \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 223
    :cond_76
    invoke-virtual {v5, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v5

    .line 224
    invoke-virtual {v5, v3}, Lvm2/Varargs;->isfunction(I)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 231
    invoke-static {}, Lvm2/lib/PackageLib;->access$000()Lvm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 232
    invoke-virtual {v5}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 234
    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-object v1

    .line 235
    :cond_9e
    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {}, Lvm2/lib/PackageLib;->access$000()Lvm2/LuaString;

    move-result-object v2

    if-ne v1, v2, :cond_ad

    .line 236
    sget-object v1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_ad
    return-object v1

    .line 226
    :cond_ae
    invoke-virtual {v5, v3}, Lvm2/Varargs;->isstring(I)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 227
    invoke-virtual {v5, v3}, Lvm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d
.end method

###### Class vm2.lib.PackageLib.searchpath (vm2.lib.PackageLib$searchpath)
.class public Lvm2/lib/PackageLib$searchpath;
.super Lvm2/lib/VarArgFunction;
.source "PackageLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "searchpath"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lvm2/lib/PackageLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lvm2/lib/PackageLib$searchpath;->this$0:Lvm2/lib/PackageLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 288
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 289
    const-string v3, "."

    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 290
    invoke-static {}, Lvm2/lib/PackageLib;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_2d
    if-ge v0, v3, :cond_96

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x3b

    .line 301
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_3d

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 304
    :cond_3d
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x3f

    .line 307
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_65

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_65
    iget-object v6, p0, Lvm2/lib/PackageLib$searchpath;->this$0:Lvm2/lib/PackageLib;

    iget-object v6, v6, Lvm2/lib/PackageLib;->globals:Lvm2/Globals;

    iget-object v6, v6, Lvm2/Globals;->finder:Lvm2/lib/ResourceFinder;

    invoke-interface {v6, v0}, Lvm2/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_79

    .line 316
    :try_start_71
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_74

    .line 317
    :catch_74
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    :cond_79
    if-nez v2, :cond_80

    .line 322
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    :cond_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v5

    goto :goto_2d

    .line 325
    :cond_96
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
