###### Class info.flowersoft.theotown.scripting.libraries.ScriptLibrary (info.flowersoft.theotown.scripting.libraries.ScriptLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "ScriptLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    const-string v0, "libs/Script.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->resolveScript(Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200()Lvm2/LuaValue;
    .registers 1

    .line 19
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    return-object v0
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 39
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V

    const-string p3, "getScript"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 51
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V

    const-string p3, "addScript"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 71
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V

    const-string p3, "setName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 84
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V

    const-string p3, "getOrig"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final resolveScript(Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;
    .registers 3

    .line 99
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/Script;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScriptLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.ScriptLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$1;
.super Lvm2/lib/ZeroArgFunction;
.source "ScriptLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 42
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 44
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v0

    return-object v0

    .line 46
    :cond_f
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScriptLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.ScriptLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "ScriptLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v8

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    .line 56
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    const/4 v0, 0x4

    .line 57
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object p1

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentSourceDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    if-eqz v4, :cond_6f

    if-nez p1, :cond_39

    .line 62
    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getInitializer()Lvm2/LuaFunction;

    move-result-object p1

    :cond_39
    move-object v5, p1

    .line 64
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object v7

    .line 64
    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->appendScript(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Lvm2/LuaFunction;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/scripting/Script;)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 60
    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScriptLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.ScriptLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$3;
.super Lvm2/lib/TwoArgFunction;
.source "ScriptLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 76
    const-string v0, ""

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/scripting/Script;->setName(Ljava/lang/String;)V

    .line 78
    :cond_11
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScriptLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.ScriptLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "ScriptLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    const-string v1, "orig"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;->access$200()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 92
    :cond_18
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method
