###### Class info.flowersoft.theotown.scripting.ScriptingEnvironment (info.flowersoft.theotown.scripting.ScriptingEnvironment)
.class public Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;
.super Ljava/lang/Object;
.source "ScriptingEnvironment.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;


# static fields
.field public static instance:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;


# instance fields
.field public final cache:Linfo/flowersoft/theotown/scripting/LuaCache;

.field public final cacheSuffix:Ljava/lang/String;

.field public compileMS:J

.field public currentScript:Linfo/flowersoft/theotown/scripting/Script;

.field public currentThread:Ljava/lang/Thread;

.field public final globals:Lvm2/Globals;

.field public initMS:J

.field public final libraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/LuaLibrary;",
            ">;"
        }
    .end annotation
.end field

.field public nextPostponedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public postponedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public precompileMS:J

.field public final precompiler:Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

.field public final protectedGlobals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lvm2/LuaValue;",
            "Lvm2/LuaValue;",
            ">;"
        }
    .end annotation
.end field

.field public protectedMode:Z

.field public final protectedTable:Lvm2/LuaTable;

.field public final publicGlobals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lvm2/LuaValue;",
            "Lvm2/LuaValue;",
            ">;"
        }
    .end annotation
.end field

.field public final scriptHeader:Ljava/lang/String;

.field public final scripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D9MTORy_o5mBjURYKOmyzt42BtI(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 4

    .line 168
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->enterProtectedMode()V

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedTable:Lvm2/LuaTable;

    invoke-interface {p1, v0, v1, p0}, Linfo/flowersoft/theotown/scripting/LuaLibrary;->load(Lvm2/Globals;Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;)V

    .line 170
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->leaveProtectedMode()V

    .line 171
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->libraries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$vSpcfcaW9TpQk_jjEQUbKvNtT0o(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 3

    .line 177
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->enterProtectedMode()V

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/scripting/LuaLibrary;->unload(Lvm2/Globals;)V

    .line 179
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->leaveProtectedMode()V

    .line 180
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->libraries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->libraries:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scripts:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->nextPostponedTasks:Ljava/util/List;

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/LuaPrecompiler;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompiler:Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

    .line 46
    const-string v0, "v4"

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cacheSuffix:Ljava/lang/String;

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/scripting/LuaCache;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/LuaCache;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cache:Linfo/flowersoft/theotown/scripting/LuaCache;

    .line 48
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedTable:Lvm2/LuaTable;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->publicGlobals:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    .line 61
    const-string v0, "Car"

    const-string v1, "Builder"

    const-string v2, "City"

    const-string v3, "Tile"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_53
    const/4 v3, 0x4

    if-ge v2, v3, :cond_66

    aget-object v3, v0, v2

    .line 62
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    sget-object v5, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_66
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lvm2/LuaString;->s_metatable:Lvm2/LuaValue;

    .line 73
    invoke-static {}, Lvm2/lib/jse/JsePlatform;->debugGlobals()Lvm2/Globals;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    .line 74
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setupProtectedMode()V

    .line 75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->enterProtectedMode()V

    .line 77
    const-string v0, "rawget"

    const-string v2, "rawset"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_7d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_90

    aget-object v2, v0, v1

    .line 80
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedTable:Lvm2/LuaTable;

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v4, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 83
    :cond_90
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 84
    const-string v2, "loaded"

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const-string v5, "io"

    invoke-virtual {v3, v5, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 85
    invoke-virtual {v0, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-string v5, "luajava"

    invoke-virtual {v3, v5, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 86
    invoke-virtual {v0, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 88
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_c5

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "ieio22UdjFHm6qYH6QUpxZfKLApzBbtv"

    invoke-virtual {v0, v3, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;D)V

    .line 92
    :cond_c5
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "Ax7EPgt6mpexln4Xwqaa"

    invoke-virtual {v0, v3, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;D)V

    .line 93
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->leaveProtectedMode()V

    .line 95
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    const-string v1, "script_header.lby"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scriptHeader:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->publicGlobals:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedMode:Z

    return p0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;
    .registers 1

    .line 536
    sget-object v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->instance:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    if-nez v0, :cond_b

    .line 537
    new-instance v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->instance:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    .line 539
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->instance:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    return-object v0
.end method


# virtual methods
.method public final afterCallingMethodOnce()V
    .registers 4

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    const-string v1, "script_calling_phase"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    const-string v2, "other"

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendScript(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Lvm2/LuaFunction;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/scripting/Script;)Linfo/flowersoft/theotown/scripting/Script;
    .registers 13

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    const-string v1, "Script"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 308
    new-instance v1, Linfo/flowersoft/theotown/scripting/Script;

    invoke-direct {v1, p1, p2, p4, p5}, Linfo/flowersoft/theotown/scripting/Script;-><init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 310
    invoke-static {p4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    .line 311
    invoke-virtual {p5}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p4

    iget-object p5, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 313
    invoke-static {v1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v2

    .line 314
    invoke-virtual {p6}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Lvm2/LuaValue;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object p4, v4, p2

    const/4 p2, 0x2

    aput-object p5, v4, p2

    const/4 p2, 0x3

    aput-object v2, v4, p2

    const/4 p2, 0x4

    aput-object v3, v4, p2

    .line 309
    const-string p2, "_new"

    invoke-virtual {v0, p2, v4}, Lvm2/LuaValue;->invokemethod(Ljava/lang/String;[Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p2

    .line 315
    invoke-virtual {p2}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p2

    .line 316
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 318
    iput-object p2, v1, Linfo/flowersoft/theotown/scripting/Script;->script:Lvm2/LuaValue;

    .line 319
    iput-object p3, v1, Linfo/flowersoft/theotown/scripting/Script;->initializer:Lvm2/LuaFunction;

    .line 320
    iput-object p6, v1, Linfo/flowersoft/theotown/scripting/Script;->parent:Linfo/flowersoft/theotown/scripting/Script;

    .line 321
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scripts:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public assertPrivileged(Ljava/lang/String;)V
    .registers 5

    .line 518
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_42

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient permission caused by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " called by script "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    .line 521
    :cond_35
    const-string p1, " called by unknown script"

    :goto_37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    return-void
.end method

.method public assertSuperPrivileged(Ljava/lang/String;)V
    .registers 5

    .line 526
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isSuperPrivileged()Z

    move-result v0

    if-nez v0, :cond_42

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal access by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " called by script "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    .line 529
    :cond_35
    const-string p1, " called by unknown script"

    :goto_37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    return-void
.end method

.method public final beforeCallingMethodOnce(Ljava/lang/String;)V
    .registers 4

    .line 404
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    const-string v1, "script_calling_phase"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public callMethodOnce(Ljava/lang/String;)V
    .registers 4

    .line 412
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 413
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 414
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->beforeCallingMethodOnce(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    .line 416
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->afterCallingMethodOnce()V

    :cond_17
    return-void
.end method

.method public callMethodOnce(Ljava/lang/String;Lvm2/LuaValue;)V
    .registers 5

    .line 421
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 422
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 423
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->beforeCallingMethodOnce(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 425
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->afterCallingMethodOnce()V

    :cond_17
    return-void
.end method

.method public catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    .registers 8

    if-eqz p2, :cond_7

    .line 487
    invoke-virtual {p2}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 488
    :goto_8
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v0, :cond_11

    .line 489
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->muteLua:Z

    if-nez v1, :cond_25

    .line 490
    :cond_11
    instance-of v1, p3, Ljava/lang/Exception;

    if-eqz v1, :cond_19

    move-object v1, p3

    check-cast v1, Ljava/lang/Exception;

    goto :goto_1e

    :cond_19
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 491
    :goto_1e
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Lua"

    invoke-interface {v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_25
    if-eqz v0, :cond_4b

    .line 493
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scriptingEnvironment"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    if-eqz v0, :cond_5e

    .line 494
    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/Draft;->strictLua:Z

    if-nez v0, :cond_52

    goto :goto_5e

    .line 495
    :cond_52
    new-instance v0, Linfo/flowersoft/theotown/scripting/ScriptException;

    invoke-direct {v0, p1, p2, p3}, Linfo/flowersoft/theotown/scripting/ScriptException;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 496
    new-array p1, p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 497
    throw v0

    :cond_5e
    :goto_5e
    return-void
.end method

.method public declared-synchronized countPostponedTasks()I
    .registers 2

    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->nextPostponedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 543
    sput-object v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->instance:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    return-void
.end method

.method public final enterProtectedMode()V
    .registers 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedMode:Z

    return-void
.end method

.method public final executeSynced(Ljava/lang/Runnable;)V
    .registers 9

    .line 577
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 579
    monitor-enter p0

    .line 580
    :try_start_5
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-eq v1, v0, :cond_60

    .line 581
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 583
    :goto_d
    :try_start_d
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-eqz v3, :cond_60

    if-eq v3, v0, :cond_60

    .line 584
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gtz v3, :cond_28

    const-wide/16 v3, 0x3e8

    .line 589
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_d

    :catchall_24
    move-exception p1

    goto :goto_84

    :catch_26
    move-exception v1

    goto :goto_5d

    .line 585
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous script "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was not released within 10 seconds for execution of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_5d} :catch_26
    .catchall {:try_start_d .. :try_end_5d} :catchall_24

    .line 592
    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    :cond_60
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    .line 597
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_24

    const/4 v1, 0x0

    .line 600
    :try_start_64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_75

    .line 602
    monitor-enter p0

    .line 603
    :try_start_68
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_71

    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    goto :goto_71

    :catchall_6f
    move-exception p1

    goto :goto_73

    .line 604
    :cond_71
    :goto_71
    monitor-exit p0

    return-void

    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_6f

    throw p1

    :catchall_75
    move-exception p1

    .line 602
    monitor-enter p0

    .line 603
    :try_start_77
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-ne v2, v0, :cond_80

    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    goto :goto_80

    :catchall_7e
    move-exception p1

    goto :goto_82

    .line 604
    :cond_80
    :goto_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7e

    .line 605
    throw p1

    .line 604
    :goto_82
    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7e

    throw p1

    .line 597
    :goto_84
    :try_start_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_24

    throw p1
.end method

.method public finalizeScripts()V
    .registers 2

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cache:Linfo/flowersoft/theotown/scripting/LuaCache;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/LuaCache;->save()V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cache:Linfo/flowersoft/theotown/scripting/LuaCache;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/LuaCache;->clear()V

    return-void
.end method

.method public getCompileMS()J
    .registers 3

    .line 199
    iget-wide v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->compileMS:J

    return-wide v0
.end method

.method public declared-synchronized getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    monitor-enter p0

    .line 560
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 561
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_11

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_c

    throw v0
.end method

.method public declared-synchronized getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;
    .registers 3

    monitor-enter p0

    .line 547
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    if-eq v0, v1, :cond_c

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_c
    :try_start_c
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized getCurrentSource()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 552
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    if-eqz v0, :cond_d

    .line 553
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_11

    .line 555
    :cond_d
    :try_start_d
    const-string v0, "<none>"
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_b

    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_b

    throw v0
.end method

.method public declared-synchronized getCurrentSourceDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    monitor-enter p0

    .line 565
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 566
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getSourceDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_11

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_c

    throw v0
.end method

.method public final getCurrentThread()Ljava/lang/Thread;
    .registers 3

    .line 609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 610
    instance-of v1, v0, Lvm2/LuaThread$StateThread;

    if-eqz v1, :cond_c

    .line 611
    check-cast v0, Lvm2/LuaThread$StateThread;

    iget-object v0, v0, Lvm2/LuaThread$StateThread;->owner:Ljava/lang/Thread;

    :cond_c
    return-object v0
.end method

.method public getGlobals()Lvm2/Globals;
    .registers 2

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    return-object v0
.end method

.method public getInitMS()J
    .registers 3

    .line 203
    iget-wide v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->initMS:J

    return-wide v0
.end method

.method public getLibrary(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->libraries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 186
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->libraries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;
    .registers 3

    .line 328
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    return-object p1
.end method

.method public getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;"
        }
    .end annotation

    .line 353
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 356
    :cond_6
    iget-boolean v0, p2, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    move-object v2, v1

    .line 357
    :goto_c
    iget-object v3, p2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3b

    .line 358
    iget-object v3, p2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/Script;

    .line 359
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, p1}, Lvm2/LuaValue;->rawget(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v1}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v4

    if-eqz v4, :cond_38

    if-nez v2, :cond_35

    .line 362
    new-instance v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;-><init>(Ljava/lang/String;)V

    .line 363
    iput-object p2, v2, Linfo/flowersoft/theotown/scripting/MethodCluster;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 364
    iput-object p0, v2, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    .line 366
    :cond_35
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->addMethod(Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    move-object v1, v2

    :cond_3c
    if-eqz v1, :cond_41

    .line 371
    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->setup()V

    :cond_41
    return-object v1
.end method

.method public getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 333
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scripts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 334
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scripts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/Script;

    .line 335
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v4, :cond_3f

    .line 336
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, p1}, Lvm2/LuaValue;->rawget(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v0}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v4

    if-eqz v4, :cond_3f

    if-nez v2, :cond_3c

    .line 339
    new-instance v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;-><init>(Ljava/lang/String;)V

    .line 340
    iput-object p0, v2, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    .line 342
    :cond_3c
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->addMethod(Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_42
    if-eqz v2, :cond_47

    .line 347
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->setup()V

    :cond_47
    return-object v2
.end method

.method public getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation

    .line 379
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 380
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v3, :cond_b

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 381
    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 382
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v1, :cond_38

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    :cond_38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3c
    return-object v1
.end method

.method public getPrecompileMS()J
    .registers 3

    .line 195
    iget-wide v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompileMS:J

    return-wide v0
.end method

.method public getPrecompiler()Linfo/flowersoft/theotown/scripting/LuaPrecompiler;
    .registers 2

    .line 483
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompiler:Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

    return-object v0
.end method

.method public getSender()Lvm2/LuaValue;
    .registers 2

    .line 570
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 571
    iget-object v0, v0, Linfo/flowersoft/theotown/scripting/Script;->script:Lvm2/LuaValue;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 502
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 504
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->isPrivileged()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperPrivileged()Z
    .registers 2

    .line 510
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 512
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->isSuperPrivileged()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final leaveProtectedMode()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedMode:Z

    return-void
.end method

.method public loadBase64(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaFunction;
    .registers 6

    .line 152
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "b"

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v0, v1, p2, p1, v2}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 3

    .line 167
    new-instance v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->executeSynced(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaFunction;
    .registers 4

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v0, p1, p2}, Lvm2/Globals;->load(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized postponeTask(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 430
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 431
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 5

    monitor-enter p0

    .line 434
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->nextPostponedTasks:Ljava/util/List;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-direct {v1, p2, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 435
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public protect()V
    .registers 7

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->enterProtectedMode()V

    .line 100
    const-string v4, "package"

    const-string v5, "debug"

    const-string v0, "io"

    const-string v1, "rawset"

    const-string v2, "rawget"

    const-string v3, "luajava"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x6

    if-ge v1, v2, :cond_23

    aget-object v2, v0, v1

    .line 103
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v3, v2, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 105
    :cond_23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->leaveProtectedMode()V

    return-void
.end method

.method public registerDraft(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 5

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    const-string v1, "Draft"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 221
    invoke-static {p1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v1

    .line 222
    const-string v2, "_new"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 223
    const-string v1, "_init"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->method(Ljava/lang/String;)Lvm2/LuaValue;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    return-void
.end method

.method public registerScripts(Linfo/flowersoft/theotown/draft/Draft;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 232
    iget-object v0, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    const-string v4, "Script"

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 235
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_179

    move-object/from16 v8, p2

    .line 236
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v9, p3

    .line 237
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-object/from16 v11, p4

    .line 238
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 239
    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v0, :cond_68

    .line 243
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ":debug:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "v4"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 244
    iget-object v15, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cache:Linfo/flowersoft/theotown/scripting/LuaCache;

    invoke-virtual {v15, v12}, Linfo/flowersoft/theotown/scripting/LuaCache;->get(Ljava/lang/String;)[B

    move-result-object v15

    if-eqz v15, :cond_66

    move-object v0, v14

    :cond_66
    move-object v14, v12

    move-object v12, v15

    .line 250
    :cond_68
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v15

    if-eqz v0, :cond_86

    const/16 v17, 0x1

    .line 252
    iget-object v3, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompiler:Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/scripting/LuaPrecompiler;->precompile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v18, v7

    const/4 v3, 0x0

    .line 253
    iget-wide v6, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompileMS:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v19

    sub-long v19, v19, v15

    add-long v6, v6, v19

    iput-wide v6, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->precompileMS:J

    goto :goto_8b

    :cond_86
    move/from16 v18, v7

    const/4 v3, 0x0

    const/16 v17, 0x1

    .line 256
    :goto_8b
    new-instance v6, Linfo/flowersoft/theotown/scripting/Script;

    invoke-direct {v6, v2, v2, v13, v10}, Linfo/flowersoft/theotown/scripting/Script;-><init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 258
    invoke-static {v13}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v7

    .line 259
    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v13

    iget-object v15, v2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 261
    invoke-static {v6}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v16

    move/from16 v19, v3

    const/4 v3, 0x4

    new-array v3, v3, [Lvm2/LuaValue;

    aput-object v7, v3, v19

    aput-object v13, v3, v17

    const/4 v7, 0x2

    aput-object v15, v3, v7

    const/4 v7, 0x3

    aput-object v16, v3, v7

    .line 257
    const-string v7, "_new"

    invoke-virtual {v4, v7, v3}, Lvm2/LuaValue;->invokemethod(Ljava/lang/String;[Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v3

    .line 263
    iput-object v3, v6, Linfo/flowersoft/theotown/scripting/Script;->script:Lvm2/LuaValue;

    .line 267
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v15

    if-eqz v0, :cond_106

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scriptHeader:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v7, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lvm2/Globals;->load(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v7

    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    :try_start_ec
    iget-object v10, v7, Lvm2/LuaClosure;->p:Lvm2/Prototype;
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ee} :catch_ff

    move/from16 v13, v19

    :try_start_f0
    invoke-static {v10, v0, v13}, Lvm2/compiler/DumpState;->dump(Lvm2/Prototype;Ljava/io/OutputStream;Z)I

    .line 274
    iget-object v10, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->cache:Linfo/flowersoft/theotown/scripting/LuaCache;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Linfo/flowersoft/theotown/scripting/LuaCache;->put(Ljava/lang/String;[B)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fc} :catch_fd

    goto :goto_121

    :catch_fd
    move-exception v0

    goto :goto_102

    :catch_ff
    move-exception v0

    move/from16 v13, v19

    .line 276
    :goto_102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_121

    :cond_106
    move/from16 v13, v19

    if-eqz v12, :cond_162

    .line 280
    iget-object v0, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "b"

    iget-object v14, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v0, v7, v10, v12, v14}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v7

    .line 284
    :goto_121
    iget-wide v13, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->compileMS:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v20

    sub-long v20, v20, v15

    add-long v13, v13, v20

    iput-wide v13, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->compileMS:J

    .line 286
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v12

    .line 287
    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v10

    .line 288
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 290
    :try_start_138
    invoke-virtual {v7, v3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_15d

    .line 292
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 294
    iget-wide v14, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->initMS:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v20

    sub-long v20, v20, v12

    add-long v14, v14, v20

    iput-wide v14, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->initMS:J

    .line 296
    iput-object v7, v6, Linfo/flowersoft/theotown/scripting/Script;->initializer:Lvm2/LuaFunction;

    .line 297
    iget-object v0, v2, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->scripts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v18, 0x1

    goto/16 :goto_12

    :catchall_15d
    move-exception v0

    .line 292
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 293
    throw v0

    .line 282
    :cond_162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got no code nor binary data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_179
    return-object v5
.end method

.method public declared-synchronized runPostponedTasks()V
    .registers 6

    monitor-enter p0

    .line 442
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->swapPostponedTaskLists()V

    .line 443
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_47

    const/4 v1, 0x0

    .line 446
    :goto_9
    :try_start_9
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 447
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    .line 448
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_3b

    .line 450
    :try_start_22
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_38

    :catchall_2c
    move-exception v3

    .line 452
    :try_start_2d
    const-string v4, "postponed"

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {p0, v4, v2, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3b

    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_3b
    move-exception v1

    goto :goto_49

    .line 456
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 457
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_47

    .line 459
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    goto :goto_52

    .line 456
    :goto_49
    :try_start_49
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 457
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 458
    throw v1

    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_47

    throw v0
.end method

.method public declared-synchronized runTaskNow(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 5

    monitor-enter p0

    .line 462
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    .line 465
    :try_start_5
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    .line 467
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception p1

    .line 469
    :try_start_d
    const-string v1, "postponed"

    invoke-virtual {p0, v1, p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_19

    .line 472
    :goto_12
    :try_start_12
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    .line 474
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    goto :goto_1e

    :catchall_19
    move-exception p1

    .line 472
    :try_start_1a
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 473
    throw p1

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    throw p1
.end method

.method public declared-synchronized setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 9

    monitor-enter p0

    .line 617
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 619
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1d

    if-eqz v1, :cond_1d

    .line 621
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "ScriptingEnvironment"

    const-string v3, "change of current script detected"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_85

    .line 624
    :cond_1d
    :goto_1d
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-eqz v1, :cond_76

    if-eq v1, v0, :cond_76

    .line 625
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_1b

    .line 627
    :goto_27
    :try_start_27
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    if-eqz v3, :cond_76

    if-eq v3, v0, :cond_76

    .line 628
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gtz v3, :cond_40

    const-wide/16 v3, 0x3e8

    .line 633
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_27

    :catch_3e
    move-exception v1

    goto :goto_73

    .line 629
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous script "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was not released within 10 seconds for execution of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_73} :catch_3e
    .catchall {:try_start_27 .. :try_end_73} :catchall_1b

    .line 636
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 640
    :cond_76
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentScript:Linfo/flowersoft/theotown/scripting/Script;

    if-nez p1, :cond_81

    const/4 p1, 0x0

    .line 642
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;

    .line 643
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_83

    .line 645
    :cond_81
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->currentThread:Ljava/lang/Thread;
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_1b

    .line 654
    :goto_83
    monitor-exit p0

    return-void

    :goto_85
    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_1b

    throw p1
.end method

.method public final setupProtectedMode()V
    .registers 7

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v0}, Lvm2/LuaTable;->keys()[Lvm2/LuaValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 110
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protectedGlobals:Ljava/util/Map;

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v5, v3}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    sget-object v5, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v4, v3, v5}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 114
    :cond_21
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 115
    new-instance v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;-><init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V

    const-string v2, "__index"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 124
    new-instance v1, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;-><init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V

    const-string v2, "__newindex"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 138
    const-string v1, "__metatable"

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 139
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->globals:Lvm2/Globals;

    invoke-virtual {v1, v0}, Lvm2/LuaTable;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public final swapPostponedTaskLists()V
    .registers 3

    .line 477
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->nextPostponedTasks:Ljava/util/List;

    .line 478
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->nextPostponedTasks:Ljava/util/List;

    .line 479
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponedTasks:Ljava/util/List;

    return-void
.end method

.method public unloadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 3

    .line 176
    new-instance v0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->executeSynced(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDraftCallbacks()V
    .registers 4

    .line 398
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 399
    const-string v2, "draw"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    goto :goto_a

    :cond_1f
    return-void
.end method

###### Class info.flowersoft.theotown.scripting.ScriptingEnvironment.AnonymousClass1 (info.flowersoft.theotown.scripting.ScriptingEnvironment$1)
.class public Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;
.super Lvm2/lib/TwoArgFunction;
.source "ScriptingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setupProtectedMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 118
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$000(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvm2/LuaValue;

    if-nez p1, :cond_1a

    .line 119
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$1;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$100(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvm2/LuaValue;

    :cond_1a
    if-nez p1, :cond_1e

    .line 120
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_1e
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.ScriptingEnvironment.AnonymousClass2 (info.flowersoft.theotown.scripting.ScriptingEnvironment$2)
.class public Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;
.super Lvm2/lib/ThreeArgFunction;
.source "ScriptingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setupProtectedMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 127
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$200(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 128
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$100(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$000(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 131
    :cond_1b
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$000(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 132
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$2;->this$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->access$100(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_30
    :goto_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

.field public final synthetic f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->$r8$lambda$D9MTORy_o5mBjURYKOmyzt42BtI(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.ScriptingEnvironment$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

.field public final synthetic f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->$r8$lambda$vSpcfcaW9TpQk_jjEQUbKvNtT0o(Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    return-void
.end method
