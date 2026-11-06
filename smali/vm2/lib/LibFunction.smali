###### Class vm2.lib.LibFunction (vm2.lib.LibFunction)
.class public abstract Lvm2/lib/LibFunction;
.super Lvm2/LuaFunction;
.source "LibFunction.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected opcode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Lvm2/LuaFunction;-><init>()V

    return-void
.end method

.method public static newupe()[Lvm2/LuaValue;
    .registers 1

    const/4 v0, 0x1

    .line 185
    new-array v0, v0, [Lvm2/LuaValue;

    return-object v0
.end method

.method public static newupl(Lvm2/LuaValue;)[Lvm2/LuaValue;
    .registers 1

    .line 195
    filled-new-array {p0}, [Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static newupn()[Lvm2/LuaValue;
    .registers 1

    .line 190
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    filled-new-array {v0}, [Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, p3, v0}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    return-void
.end method

.method public bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V
    .registers 9

    .line 172
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    .line 173
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/lib/LibFunction;

    add-int v3, p4, v1

    .line 174
    iput v3, v2, Lvm2/lib/LibFunction;->opcode:I

    .line 175
    aget-object v3, p3, v1

    iput-object v3, v2, Lvm2/lib/LibFunction;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_18
    move-exception p1

    goto :goto_1b

    :cond_1a
    return-void

    .line 179
    :goto_1b
    new-instance p2, Lvm2/LuaError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bind failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public call()Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    .line 199
    const-string v1, "value expected"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 202
    invoke-virtual {p0}, Lvm2/lib/LibFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 205
    invoke-virtual {p0, p1}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 208
    invoke-virtual {p0, p1, p2}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 214
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v2, 0x3

    if-eq v0, v2, :cond_25

    .line 219
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 218
    :cond_25
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 217
    :cond_36
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 216
    :cond_43
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/lib/LibFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 215
    :cond_4c
    invoke-virtual {p0}, Lvm2/lib/LibFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 142
    iget-object v0, p0, Lvm2/lib/LibFunction;->name:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/lib/LibFunction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-super {p0}, Lvm2/LuaFunction;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
