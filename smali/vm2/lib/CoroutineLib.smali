###### Class vm2.lib.CoroutineLib (vm2.lib.CoroutineLib)
.class public Lvm2/lib/CoroutineLib;
.super Lvm2/lib/TwoArgFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/CoroutineLib$create;,
        Lvm2/lib/CoroutineLib$resume;,
        Lvm2/lib/CoroutineLib$running;,
        Lvm2/lib/CoroutineLib$status;,
        Lvm2/lib/CoroutineLib$yieldCls;,
        Lvm2/lib/CoroutineLib$wrap;,
        Lvm2/lib/CoroutineLib$wrapper;
    }
.end annotation


# static fields
.field static coroutine_count:I


# instance fields
.field globals:Lvm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 77
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/CoroutineLib;->globals:Lvm2/Globals;

    .line 78
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 79
    new-instance v0, Lvm2/lib/CoroutineLib$create;

    invoke-direct {v0, p0}, Lvm2/lib/CoroutineLib$create;-><init>(Lvm2/lib/CoroutineLib;)V

    const-string v1, "create"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 80
    new-instance v0, Lvm2/lib/CoroutineLib$resume;

    invoke-direct {v0}, Lvm2/lib/CoroutineLib$resume;-><init>()V

    const-string v1, "resume"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 81
    new-instance v0, Lvm2/lib/CoroutineLib$running;

    invoke-direct {v0, p0}, Lvm2/lib/CoroutineLib$running;-><init>(Lvm2/lib/CoroutineLib;)V

    const-string v1, "running"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 82
    new-instance v0, Lvm2/lib/CoroutineLib$status;

    invoke-direct {v0}, Lvm2/lib/CoroutineLib$status;-><init>()V

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 83
    new-instance v0, Lvm2/lib/CoroutineLib$yieldCls;

    invoke-direct {v0, p0}, Lvm2/lib/CoroutineLib$yieldCls;-><init>(Lvm2/lib/CoroutineLib;)V

    const-string v1, "yield"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 84
    new-instance v0, Lvm2/lib/CoroutineLib$wrap;

    invoke-direct {v0, p0}, Lvm2/lib/CoroutineLib$wrap;-><init>(Lvm2/lib/CoroutineLib;)V

    const-string v1, "wrap"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 85
    const-string v0, "coroutine"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 86
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_65
    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.create (vm2.lib.CoroutineLib$create)
.class final Lvm2/lib/CoroutineLib$create;
.super Lvm2/lib/LibFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "create"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/CoroutineLib;


# direct methods
.method public constructor <init>(Lvm2/lib/CoroutineLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lvm2/lib/CoroutineLib$create;->this$0:Lvm2/lib/CoroutineLib;

    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 92
    new-instance v0, Lvm2/LuaThread;

    iget-object v1, p0, Lvm2/lib/CoroutineLib$create;->this$0:Lvm2/lib/CoroutineLib;

    iget-object v1, v1, Lvm2/lib/CoroutineLib;->globals:Lvm2/Globals;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lvm2/LuaThread;-><init>(Lvm2/Globals;Lvm2/LuaValue;)V

    return-object v0
.end method

###### Class vm2.lib.CoroutineLib.resume (vm2.lib.CoroutineLib$resume)
.class final Lvm2/lib/CoroutineLib$resume;
.super Lvm2/lib/VarArgFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "resume"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v0

    const/4 v1, 0x2

    .line 99
    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaThread;->resume(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.running (vm2.lib.CoroutineLib$running)
.class final Lvm2/lib/CoroutineLib$running;
.super Lvm2/lib/VarArgFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "running"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/CoroutineLib;


# direct methods
.method public constructor <init>(Lvm2/lib/CoroutineLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lvm2/lib/CoroutineLib$running;->this$0:Lvm2/lib/CoroutineLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 105
    iget-object p1, p0, Lvm2/lib/CoroutineLib$running;->this$0:Lvm2/lib/CoroutineLib;

    iget-object p1, p1, Lvm2/lib/CoroutineLib;->globals:Lvm2/Globals;

    iget-object p1, p1, Lvm2/Globals;->running:Lvm2/LuaThread;

    .line 106
    invoke-virtual {p1}, Lvm2/LuaThread;->isMainThread()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.status (vm2.lib.CoroutineLib$status)
.class final Lvm2/lib/CoroutineLib$status;
.super Lvm2/lib/LibFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "status"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 112
    invoke-virtual {p1}, Lvm2/LuaValue;->checkthread()Lvm2/LuaThread;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lvm2/LuaThread;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.wrap (vm2.lib.CoroutineLib$wrap)
.class final Lvm2/lib/CoroutineLib$wrap;
.super Lvm2/lib/LibFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "wrap"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/CoroutineLib;


# direct methods
.method public constructor <init>(Lvm2/lib/CoroutineLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lvm2/lib/CoroutineLib$wrap;->this$0:Lvm2/lib/CoroutineLib;

    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 125
    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    .line 126
    new-instance v0, Lvm2/LuaThread;

    iget-object v1, p0, Lvm2/lib/CoroutineLib$wrap;->this$0:Lvm2/lib/CoroutineLib;

    iget-object v1, v1, Lvm2/lib/CoroutineLib;->globals:Lvm2/Globals;

    invoke-direct {v0, v1, p1}, Lvm2/LuaThread;-><init>(Lvm2/Globals;Lvm2/LuaValue;)V

    .line 127
    new-instance p1, Lvm2/lib/CoroutineLib$wrapper;

    invoke-direct {p1, v0}, Lvm2/lib/CoroutineLib$wrapper;-><init>(Lvm2/LuaThread;)V

    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.wrapper (vm2.lib.CoroutineLib$wrapper)
.class final Lvm2/lib/CoroutineLib$wrapper;
.super Lvm2/lib/VarArgFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "wrapper"
.end annotation


# instance fields
.field final luathread:Lvm2/LuaThread;


# direct methods
.method public constructor <init>(Lvm2/LuaThread;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 134
    iput-object p1, p0, Lvm2/lib/CoroutineLib$wrapper;->luathread:Lvm2/LuaThread;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 137
    iget-object v0, p0, Lvm2/lib/CoroutineLib$wrapper;->luathread:Lvm2/LuaThread;

    invoke-virtual {v0, p1}, Lvm2/LuaThread;->resume(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_16

    .line 139
    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 141
    :cond_16
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.CoroutineLib.yieldCls (vm2.lib.CoroutineLib$yieldCls)
.class final Lvm2/lib/CoroutineLib$yieldCls;
.super Lvm2/lib/VarArgFunction;
.source "CoroutineLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "yieldCls"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/CoroutineLib;


# direct methods
.method public constructor <init>(Lvm2/lib/CoroutineLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lvm2/lib/CoroutineLib$yieldCls;->this$0:Lvm2/lib/CoroutineLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 119
    iget-object v0, p0, Lvm2/lib/CoroutineLib$yieldCls;->this$0:Lvm2/lib/CoroutineLib;

    iget-object v0, v0, Lvm2/lib/CoroutineLib;->globals:Lvm2/Globals;

    invoke-virtual {v0, p1}, Lvm2/Globals;->yield(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
