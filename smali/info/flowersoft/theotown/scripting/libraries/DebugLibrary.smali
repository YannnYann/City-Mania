###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary (info.flowersoft.theotown.scripting.libraries.DebugLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "DebugLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    const-string v0, "libs/Debug.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->infos:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;)Ljava/util/List;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->infos:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    .line 34
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V

    const-string v0, "toast"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 44
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V

    const-string v0, "info"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 52
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V

    const-string v0, "log"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 69
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;)V

    const-string v0, "brk"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 78
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V

    const-string p3, "error"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.DebugLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;
.super Lvm2/lib/VarArgFunction;
.source "DebugLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

.field public final synthetic val$globals:Lvm2/Globals;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;->val$globals:Lvm2/Globals;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 4

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;->val$globals:Lvm2/Globals;

    const-string v1, " "

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/LuaUtil;->toString(Lvm2/Globals;Lvm2/Varargs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Debug.toast"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 40
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$1;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.DebugLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "DebugLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

.field public final synthetic val$globals:Lvm2/Globals;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;->val$globals:Lvm2/Globals;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 5

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;->val$globals:Lvm2/Globals;

    const-string v2, " "

    invoke-static {v1, p1, v2}, Linfo/flowersoft/theotown/scripting/LuaUtil;->toString(Lvm2/Globals;Lvm2/Varargs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$2;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.DebugLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;
.super Lvm2/lib/VarArgFunction;
.source "DebugLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

.field public final synthetic val$globals:Lvm2/Globals;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;->val$globals:Lvm2/Globals;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 4

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;->val$globals:Lvm2/Globals;

    const-string v1, " "

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/LuaUtil;->toString(Lvm2/Globals;Lvm2/Varargs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Lua:DebugLibrary"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 60
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/Script;->log(Ljava/lang/String;)V

    .line 62
    :cond_1c
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    if-eqz v0, :cond_23

    .line 63
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 65
    :cond_23
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$3;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.DebugLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$4;
.super Lvm2/lib/VarArgFunction;
.source "DebugLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 5

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentSource()Ljava/lang/String;

    move-result-object p1

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Break: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Lua:DebugLibrary"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$4;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DebugLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.DebugLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;
.super Lvm2/lib/VarArgFunction;
.source "DebugLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

.field public final synthetic val$globals:Lvm2/Globals;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;Lvm2/Globals;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;->val$globals:Lvm2/Globals;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 6

    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;->val$globals:Lvm2/Globals;

    const-string v3, " "

    invoke-static {v2, p1, v3}, Linfo/flowersoft/theotown/scripting/LuaUtil;->toString(Lvm2/Globals;Lvm2/Varargs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary$5;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method
