###### Class info.flowersoft.theotown.scripting.ScriptMethod (info.flowersoft.theotown.scripting.ScriptMethod)
.class public Linfo/flowersoft/theotown/scripting/ScriptMethod;
.super Ljava/lang/Object;
.source "ScriptMethod.java"


# instance fields
.field public constant:Lvm2/LuaValue;

.field public function:Lvm2/LuaFunction;

.field public name:Ljava/lang/String;

.field public script:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    .line 17
    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvm2/LuaValue;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    return-void
.end method

.method public static create(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 4

    if-eqz p2, :cond_12

    .line 150
    invoke-virtual {p2}, Lvm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    new-instance v0, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    return-object v0

    :cond_12
    if-eqz p2, :cond_1e

    .line 152
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    if-eq p2, p1, :cond_1e

    .line 153
    new-instance p1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;-><init>(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object p1

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 3

    .line 146
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-static {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->create(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p0

    invoke-static {p1, p0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->create(Ljava/lang/String;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 7

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 32
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 34
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 36
    :try_start_12
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    invoke-virtual {v2}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 40
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object v2

    :catchall_1c
    move-exception v2

    .line 38
    :try_start_1d
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v3, v4, v5, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3f

    .line 40
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 42
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    :catchall_3f
    move-exception v2

    .line 40
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 41
    throw v2
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 48
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 50
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 52
    :try_start_12
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    invoke-virtual {v2, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 56
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object p1

    :catchall_1c
    move-exception p1

    .line 54
    :try_start_1d
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(.)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v2, v3, v4, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3f

    .line 56
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 58
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :catchall_3f
    move-exception p1

    .line 56
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 57
    throw p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 64
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 66
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 68
    :try_start_12
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    invoke-virtual {v2, p1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 72
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object p1

    :catchall_1c
    move-exception p1

    .line 70
    :try_start_1d
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(., .)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {p2, v2, v3, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3f

    .line 72
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 74
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :catchall_3f
    move-exception p1

    .line 72
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 73
    throw p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 80
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 82
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 84
    :try_start_12
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    invoke-virtual {v2, p1, p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 88
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object p1

    :catchall_1c
    move-exception p1

    .line 86
    :try_start_1d
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(., ., .)"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {p2, p3, v2, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3f

    .line 88
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 90
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :catchall_3f
    move-exception p1

    .line 88
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 89
    throw p1
.end method

.method public call([Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 8

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 96
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 98
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 100
    :try_start_12
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    invoke-virtual {v2, p1}, Lvm2/LuaValue;->invoke([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 104
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object p1

    :catchall_1c
    move-exception v2

    .line 102
    :try_start_1d
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "])"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v3, p1, v4, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_48

    .line 104
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 106
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :catchall_48
    move-exception p1

    .line 104
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 105
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 127
    instance-of v0, p1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_16

    .line 128
    check-cast p1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    if-eqz v0, :cond_11

    iget-object p1, p1, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    :goto_c
    invoke-virtual {v0, p1}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    iget-object p1, p1, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public getScript()Linfo/flowersoft/theotown/scripting/Script;
    .registers 2

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->script:Linfo/flowersoft/theotown/scripting/Script;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->function:Lvm2/LuaFunction;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;->constant:Lvm2/LuaValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
