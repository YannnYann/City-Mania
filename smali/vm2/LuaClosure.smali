###### Class vm2.LuaClosure (vm2.LuaClosure)
.class public Lvm2/LuaClosure;
.super Lvm2/LuaFunction;
.source "LuaClosure.java"


# static fields
.field private static final NOUPVALUES:[Lvm2/UpValue;


# instance fields
.field final globals:Lvm2/Globals;

.field public final p:Lvm2/Prototype;

.field private stackPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lvm2/LuaValue;",
            ">;"
        }
    .end annotation
.end field

.field public upValues:[Lvm2/UpValue;

.field private upvalueListPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lvm2/UpValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Lvm2/UpValue;

    sput-object v0, Lvm2/LuaClosure;->NOUPVALUES:[Lvm2/UpValue;

    return-void
.end method

.method public constructor <init>(Lvm2/Prototype;Lvm2/LuaValue;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Lvm2/LuaFunction;-><init>()V

    .line 105
    iput-object p1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    .line 106
    invoke-virtual {p0, p2}, Lvm2/LuaClosure;->initupvalue1(Lvm2/LuaValue;)V

    .line 107
    instance-of p1, p2, Lvm2/Globals;

    if-eqz p1, :cond_f

    check-cast p2, Lvm2/Globals;

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    :goto_10
    iput-object p2, p0, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    return-void
.end method

.method private allocateStack()[Lvm2/LuaValue;
    .registers 5

    .line 139
    iget-object v0, p0, Lvm2/LuaClosure;->stackPool:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/LuaClosure;->stackPool:Ljava/util/List;

    .line 140
    :cond_b
    iget-object v0, p0, Lvm2/LuaClosure;->stackPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 141
    iget-object v0, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v0, v0, Lvm2/Prototype;->maxstacksize:I

    .line 142
    new-array v1, v0, [Lvm2/LuaValue;

    .line 143
    sget-object v2, Lvm2/LuaValue;->NILS:[Lvm2/LuaValue;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 146
    :cond_20
    iget-object v0, p0, Lvm2/LuaClosure;->stackPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvm2/LuaValue;

    return-object v0
.end method

.method private allocateUpvalues()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvm2/UpValue;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lvm2/LuaClosure;->upvalueListPool:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/LuaClosure;->upvalueListPool:Ljava/util/List;

    .line 158
    :cond_b
    iget-object v0, p0, Lvm2/LuaClosure;->upvalueListPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v1, v1, Lvm2/Prototype;->maxstacksize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 161
    :cond_1d
    iget-object v0, p0, Lvm2/LuaClosure;->upvalueListPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private findupval([Lvm2/LuaValue;SLjava/util/ArrayList;)Lvm2/UpValue;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvm2/LuaValue;",
            "S",
            "Ljava/util/ArrayList<",
            "Lvm2/UpValue;",
            ">;)",
            "Lvm2/UpValue;"
        }
    .end annotation

    .line 659
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 661
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/UpValue;

    .line 662
    iget v3, v2, Lvm2/UpValue;->index:I

    if-ne v3, p2, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 666
    :cond_15
    array-length v1, p1

    if-ge v0, v1, :cond_21

    .line 667
    new-instance v0, Lvm2/UpValue;

    invoke-direct {v0, p1, p2}, Lvm2/UpValue;-><init>([Lvm2/LuaValue;I)V

    .line 668
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 678
    :cond_21
    const-string p1, "No space for upvalue"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method private processErrorHooks(Lvm2/LuaError;Lvm2/Prototype;I)V
    .registers 9

    .line 641
    iget-object v0, p0, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    const-string v1, "?"

    const/4 v2, -0x1

    if-eqz v0, :cond_23

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_23

    .line 642
    iget v3, p1, Lvm2/LuaError;->level:I

    invoke-virtual {v0, v3}, Lvm2/lib/DebugLib;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 644
    invoke-virtual {v0}, Lvm2/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    .line 646
    :goto_1b
    invoke-virtual {v0}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    goto :goto_25

    :cond_20
    :goto_20
    move-object v3, v1

    move v4, v2

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_20

    :goto_25
    if-nez v0, :cond_3c

    .line 650
    iget-object v0, p2, Lvm2/Prototype;->source:Lvm2/LuaString;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    .line 651
    :cond_2f
    iget-object p2, p2, Lvm2/Prototype;->lineinfo:[I

    if-eqz p2, :cond_3a

    if-ltz p3, :cond_3a

    array-length v0, p2

    if-ge p3, v0, :cond_3a

    aget v2, p2, p3

    :cond_3a
    move-object v3, v1

    move v4, v2

    .line 654
    :cond_3c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lvm2/LuaError;->fileline:Ljava/lang/String;

    .line 655
    invoke-virtual {p1}, Lvm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lvm2/LuaError;->level:I

    invoke-virtual {p0, p2, p3}, Lvm2/LuaClosure;->errorHook(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lvm2/LuaError;->traceback:Ljava/lang/String;

    return-void
.end method

.method private releaseStack([Lvm2/LuaValue;)V
    .registers 5

    .line 151
    sget-object v0, Lvm2/LuaValue;->NILS:[Lvm2/LuaValue;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v0, p0, Lvm2/LuaClosure;->stackPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private releaseUpvalues(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvm2/UpValue;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lvm2/LuaClosure;->upvalueListPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final call()Lvm2/LuaValue;
    .registers 3

    .line 170
    invoke-direct {p0}, Lvm2/LuaClosure;->allocateStack()[Lvm2/LuaValue;

    move-result-object v0

    .line 171
    sget-object v1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0, v1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    .line 172
    invoke-direct {p0, v0}, Lvm2/LuaClosure;->releaseStack([Lvm2/LuaValue;)V

    return-object v1
.end method

.method public final call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 177
    invoke-direct {p0}, Lvm2/LuaClosure;->allocateStack()[Lvm2/LuaValue;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v1, v1, Lvm2/Prototype;->numparams:I

    if-nez v1, :cond_13

    .line 180
    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_20

    :cond_13
    const/4 v1, 0x0

    .line 182
    aput-object p1, v0, v1

    .line 183
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 185
    :goto_20
    invoke-direct {p0, v0}, Lvm2/LuaClosure;->releaseStack([Lvm2/LuaValue;)V

    return-object p1
.end method

.method public final call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 190
    invoke-direct {p0}, Lvm2/LuaClosure;->allocateStack()[Lvm2/LuaValue;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v2, v1, Lvm2/Prototype;->numparams:I

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 194
    aput-object p1, v0, v1

    .line 195
    aput-object p2, v0, v3

    .line 196
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_3b

    .line 199
    :cond_1d
    aput-object p1, v0, v1

    .line 200
    invoke-virtual {p0, v0, p2}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_3b

    .line 203
    :cond_28
    iget v1, v1, Lvm2/Prototype;->is_vararg:I

    if-eqz v1, :cond_31

    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    goto :goto_33

    :cond_31
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    :goto_33
    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 206
    :goto_3b
    invoke-direct {p0, v0}, Lvm2/LuaClosure;->releaseStack([Lvm2/LuaValue;)V

    return-object p1
.end method

.method public final call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 211
    invoke-direct {p0}, Lvm2/LuaClosure;->allocateStack()[Lvm2/LuaValue;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v2, v1, Lvm2/Prototype;->numparams:I

    if-eqz v2, :cond_45

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2f

    const/4 v1, 0x2

    if-eq v2, v1, :cond_22

    .line 215
    aput-object p1, v0, v3

    .line 216
    aput-object p2, v0, v4

    .line 217
    aput-object p3, v0, v1

    .line 218
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_58

    .line 221
    :cond_22
    aput-object p1, v0, v3

    .line 222
    aput-object p2, v0, v4

    .line 223
    invoke-virtual {p0, v0, p3}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_58

    .line 226
    :cond_2f
    aput-object p1, v0, v3

    .line 227
    iget p1, v1, Lvm2/Prototype;->is_vararg:I

    if-eqz p1, :cond_3a

    invoke-static {p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    goto :goto_3c

    :cond_3a
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    :goto_3c
    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_58

    .line 230
    :cond_45
    iget v1, v1, Lvm2/Prototype;->is_vararg:I

    if-eqz v1, :cond_4e

    invoke-static {p1, p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    goto :goto_50

    :cond_4e
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    :goto_50
    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 233
    :goto_58
    invoke-direct {p0, v0}, Lvm2/LuaClosure;->releaseStack([Lvm2/LuaValue;)V

    return-object p1
.end method

.method public checkclosure()Lvm2/LuaClosure;
    .registers 1

    .line 0
    return-object p0
.end method

.method public errorHook(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 619
    iget-object v0, p0, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-nez v0, :cond_5

    goto :goto_2b

    .line 620
    :cond_5
    iget-object v1, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    .line 621
    iget-object v2, v1, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    if-nez v2, :cond_2c

    .line 622
    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_2b

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    iget-object p1, p1, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    invoke-virtual {p1, p2}, Lvm2/lib/DebugLib;->traceback(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    :goto_2b
    return-object p1

    :cond_2c
    const/4 p2, 0x0

    .line 626
    iput-object p2, v1, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    .line 628
    :try_start_2f
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v2, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3e

    .line 632
    iput-object v2, v1, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    return-object p1

    .line 630
    :catchall_3e
    :try_start_3e
    const-string p1, "error in error handling"
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_43

    .line 632
    iput-object v2, v1, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    return-object p1

    :catchall_43
    move-exception p1

    iput-object v2, v1, Lvm2/LuaThread;->errorfunc:Lvm2/LuaValue;

    .line 633
    throw p1
.end method

.method public execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 256
    sget-object v3, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    .line 257
    iget-object v4, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget-object v5, v4, Lvm2/Prototype;->code:[I

    .line 258
    iget-object v4, v4, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    .line 266
    iget-object v6, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v6, :cond_19

    iget-object v6, v6, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v6, :cond_19

    .line 267
    invoke-virtual {v6, v1, v2, v0}, Lvm2/lib/DebugLib;->onCall(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V

    :cond_19
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 272
    :goto_1c
    :try_start_1c
    iget-object v10, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v10, :cond_31

    iget-object v10, v10, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v10, :cond_31

    .line 273
    invoke-virtual {v10, v8, v3, v9}, Lvm2/lib/DebugLib;->onInstruction(ILvm2/Varargs;I)V

    goto :goto_31

    :catchall_28
    move-exception v0

    goto/16 :goto_795

    :catch_2b
    move-exception v0

    goto/16 :goto_780

    :catch_2e
    move-exception v0

    goto/16 :goto_78b

    .line 276
    :cond_31
    :goto_31
    aget v10, v5, v8

    shr-int/lit8 v11, v10, 0x6

    const/16 v12, 0xff

    and-int/2addr v11, v12

    and-int/lit8 v13, v10, 0x3f

    const v16, 0x7fc000

    const/4 v14, 0x2

    const v17, 0x1ffff

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_7bc

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :pswitch_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexecutable opcode: OP_EXTRAARG"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_64
    ushr-int/lit8 v10, v10, 0x17

    if-nez v10, :cond_73

    .line 578
    invoke-virtual {v2}, Lvm2/Varargs;->narg()I

    move-result v3

    add-int v9, v11, v3

    move-object v3, v2

    move/from16 v18, v15

    goto/16 :goto_77a

    :cond_73
    move v12, v15

    :goto_74
    if-ge v12, v10, :cond_2a6

    add-int v13, v11, v12

    sub-int/2addr v13, v15

    .line 582
    invoke-virtual {v2, v12}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v14

    aput-object v14, v0, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_74

    .line 558
    :pswitch_82
    iget-object v12, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget-object v12, v12, Lvm2/Prototype;->p:[Lvm2/Prototype;

    ushr-int/lit8 v10, v10, 0xe

    aget-object v10, v12, v10

    .line 559
    new-instance v12, Lvm2/LuaClosure;

    iget-object v13, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    invoke-direct {v12, v10, v13}, Lvm2/LuaClosure;-><init>(Lvm2/Prototype;Lvm2/LuaValue;)V

    .line 560
    iget-object v10, v10, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    .line 561
    array-length v13, v10

    const/4 v14, 0x0

    :goto_95
    if-ge v14, v13, :cond_c4

    move/from16 v18, v15

    .line 562
    aget-object v15, v10, v14

    iget-boolean v6, v15, Lvm2/Upvaldesc;->instack:Z

    if-eqz v6, :cond_b3

    if-nez v7, :cond_a6

    .line 564
    invoke-direct {v1}, Lvm2/LuaClosure;->allocateUpvalues()Ljava/util/ArrayList;

    move-result-object v6

    move-object v7, v6

    .line 566
    :cond_a6
    iget-object v6, v12, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    aget-object v15, v10, v14

    iget-short v15, v15, Lvm2/Upvaldesc;->idx:S

    invoke-direct {v1, v0, v15, v7}, Lvm2/LuaClosure;->findupval([Lvm2/LuaValue;SLjava/util/ArrayList;)Lvm2/UpValue;

    move-result-object v15

    aput-object v15, v6, v14

    goto :goto_bd

    .line 568
    :cond_b3
    iget-object v6, v12, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    iget-object v2, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    iget-short v15, v15, Lvm2/Upvaldesc;->idx:S

    aget-object v2, v2, v15

    aput-object v2, v6, v14

    :goto_bd
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move/from16 v15, v18

    goto :goto_95

    :cond_c4
    move/from16 v18, v15

    .line 571
    aput-object v12, v0, v11

    goto/16 :goto_77a

    :pswitch_ca
    move/from16 v18, v15

    shr-int/lit8 v2, v10, 0xe

    and-int/lit16 v2, v2, 0x1ff

    if-nez v2, :cond_d6

    add-int/lit8 v8, v8, 0x1

    .line 537
    aget v2, v5, v8

    :cond_d6
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    .line 539
    aget-object v6, v0, v11

    ushr-int/lit8 v10, v10, 0x17

    if-nez v10, :cond_10a

    sub-int v10, v9, v11

    add-int/lit8 v10, v10, -0x1

    .line 542
    invoke-virtual {v3}, Lvm2/Varargs;->narg()I

    move-result v12

    sub-int v12, v10, v12

    move/from16 v13, v18

    :goto_ec
    if-gt v13, v12, :cond_fa

    add-int v14, v2, v13

    add-int v15, v11, v13

    .line 545
    aget-object v15, v0, v15

    invoke-virtual {v6, v14, v15}, Lvm2/LuaValue;->set(ILvm2/LuaValue;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_ec

    :cond_fa
    :goto_fa
    if-gt v13, v10, :cond_77a

    add-int v11, v2, v13

    sub-int v14, v13, v12

    .line 547
    invoke-virtual {v3, v14}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v14

    invoke-virtual {v6, v11, v14}, Lvm2/LuaValue;->set(ILvm2/LuaValue;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_fa

    :cond_10a
    add-int v12, v2, v10

    .line 549
    invoke-virtual {v6, v12}, Lvm2/LuaValue;->presize(I)V

    move/from16 v12, v18

    :goto_111
    if-gt v12, v10, :cond_77a

    add-int v13, v2, v12

    add-int v14, v11, v12

    .line 551
    aget-object v14, v0, v14

    invoke-virtual {v6, v13, v14}, Lvm2/LuaValue;->set(ILvm2/LuaValue;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_111

    :pswitch_11f
    move/from16 v18, v15

    add-int/lit8 v2, v11, 0x1

    .line 528
    aget-object v6, v0, v2

    invoke-virtual {v6}, Lvm2/LuaValue;->isnil()Z

    move-result v6

    if-nez v6, :cond_2a6

    .line 529
    aget-object v2, v0, v2

    aput-object v2, v0, v11

    :goto_12f
    ushr-int/lit8 v2, v10, 0xe

    sub-int v2, v2, v17

    add-int/2addr v8, v2

    goto/16 :goto_77a

    :pswitch_136
    move/from16 v18, v15

    .line 520
    aget-object v2, v0, v11

    add-int/lit8 v3, v11, 0x1

    aget-object v3, v0, v3

    add-int/lit8 v6, v11, 0x2

    aget-object v6, v0, v6

    invoke-static {v3, v6}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    shr-int/lit8 v3, v10, 0xe

    and-int/lit16 v3, v3, 0x1ff

    :goto_14e
    add-int/lit8 v6, v3, -0x1

    if-ltz v6, :cond_15d

    add-int/lit8 v10, v11, 0x3

    add-int/2addr v10, v6

    .line 523
    invoke-virtual {v2, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    aput-object v3, v0, v10

    move v3, v6

    goto :goto_14e

    .line 524
    :cond_15d
    sget-object v2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    move-object v3, v2

    goto/16 :goto_77a

    :pswitch_162
    move/from16 v18, v15

    add-int/lit8 v2, v11, 0x1

    .line 496
    aget-object v2, v0, v2

    add-int/lit8 v6, v11, 0x2

    .line 497
    aget-object v6, v0, v6

    .line 498
    aget-object v12, v0, v11

    invoke-virtual {v12, v6}, Lvm2/LuaValue;->add(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v12

    const/4 v13, 0x0

    .line 499
    invoke-virtual {v6, v13}, Lvm2/LuaValue;->gt_b(I)Z

    move-result v6

    if-eqz v6, :cond_180

    invoke-virtual {v12, v2}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_77a

    goto :goto_186

    :cond_180
    invoke-virtual {v12, v2}, Lvm2/LuaValue;->gteq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_77a

    .line 500
    :goto_186
    aput-object v12, v0, v11

    add-int/lit8 v11, v11, 0x3

    .line 501
    aput-object v12, v0, v11

    goto :goto_12f

    :pswitch_18d
    move/from16 v18, v15

    const/4 v13, 0x0

    .line 509
    aget-object v2, v0, v11

    const-string v6, "\'for\' initial value must be a number"

    invoke-virtual {v2, v6}, Lvm2/LuaValue;->checknumber(Ljava/lang/String;)Lvm2/LuaNumber;

    move-result-object v2

    add-int/lit8 v6, v11, 0x1

    .line 510
    aget-object v12, v0, v6

    const-string v14, "\'for\' limit must be a number"

    invoke-virtual {v12, v14}, Lvm2/LuaValue;->checknumber(Ljava/lang/String;)Lvm2/LuaNumber;

    move-result-object v12

    add-int/lit8 v14, v11, 0x2

    .line 511
    aget-object v15, v0, v14

    const-string v13, "\'for\' step must be a number"

    invoke-virtual {v15, v13}, Lvm2/LuaValue;->checknumber(Ljava/lang/String;)Lvm2/LuaNumber;

    move-result-object v13

    .line 512
    invoke-virtual {v2, v13}, Lvm2/LuaValue;->sub(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    .line 513
    aput-object v12, v0, v6

    .line 514
    aput-object v13, v0, v14

    goto/16 :goto_12f

    :pswitch_1b8
    move/from16 v18, v15

    ushr-int/lit8 v2, v10, 0x17

    if-eqz v2, :cond_23f

    move/from16 v4, v18

    if-eq v2, v4, :cond_217

    if-eq v2, v14, :cond_1ef

    sub-int/2addr v2, v4

    .line 491
    invoke-static {v0, v11, v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;II)Lvm2/Varargs;

    move-result-object v0
    :try_end_1c9
    .catch Lvm2/LuaError; {:try_start_1c .. :try_end_1c9} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c9} :catch_2b
    .catchall {:try_start_1c .. :try_end_1c9} :catchall_28

    if-eqz v7, :cond_1e3

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1cf
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1dd

    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_1cf

    .line 606
    :cond_1dd
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_1e3
    iget-object v2, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v2, :cond_1ee

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_1ee

    .line 610
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_1ee
    return-object v0

    .line 489
    :cond_1ef
    :try_start_1ef
    aget-object v0, v0, v11
    :try_end_1f1
    .catch Lvm2/LuaError; {:try_start_1ef .. :try_end_1f1} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f1} :catch_2b
    .catchall {:try_start_1ef .. :try_end_1f1} :catchall_28

    if-eqz v7, :cond_20b

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1f7
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_205

    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_1f7

    .line 606
    :cond_205
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_20b
    iget-object v2, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v2, :cond_216

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_216

    .line 610
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_216
    return-object v0

    .line 488
    :cond_217
    :try_start_217
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;
    :try_end_219
    .catch Lvm2/LuaError; {:try_start_217 .. :try_end_219} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_219} :catch_2b
    .catchall {:try_start_217 .. :try_end_219} :catchall_28

    if-eqz v7, :cond_233

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_21f
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_22d

    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_21f

    .line 606
    :cond_22d
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_233
    iget-object v2, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v2, :cond_23e

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_23e

    .line 610
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_23e
    return-object v0

    .line 487
    :cond_23f
    :try_start_23f
    invoke-virtual {v3}, Lvm2/Varargs;->narg()I

    move-result v2

    sub-int/2addr v9, v2

    sub-int/2addr v9, v11

    invoke-static {v0, v11, v9, v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0
    :try_end_249
    .catch Lvm2/LuaError; {:try_start_23f .. :try_end_249} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_249} :catch_2b
    .catchall {:try_start_23f .. :try_end_249} :catchall_28

    if-eqz v7, :cond_263

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_24f
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_25d

    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_24f

    .line 606
    :cond_25d
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_263
    iget-object v2, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v2, :cond_26e

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_26e

    .line 610
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_26e
    return-object v0

    :pswitch_26f
    and-int/lit16 v2, v10, -0x4000

    sparse-switch v2, :sswitch_data_810

    ushr-int/lit8 v2, v10, 0x17

    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v6, v6, 0x1ff

    .line 452
    :try_start_27a
    aget-object v10, v0, v11

    if-lez v2, :cond_287

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 453
    invoke-static {v0, v3, v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;II)Lvm2/Varargs;

    move-result-object v2

    goto :goto_294

    :cond_287
    add-int/lit8 v2, v11, 0x1

    .line 454
    invoke-virtual {v3}, Lvm2/Varargs;->narg()I

    move-result v12

    sub-int v12, v9, v12

    sub-int/2addr v12, v2

    invoke-static {v0, v2, v12, v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    .line 452
    :goto_294
    invoke-virtual {v10, v2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    if-nez v2, :cond_29c

    .line 458
    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_29c
    if-lez v6, :cond_2aa

    add-int/lit8 v6, v6, -0x1

    .line 461
    invoke-virtual {v2, v0, v11, v6}, Lvm2/Varargs;->copyto([Lvm2/LuaValue;II)V

    .line 462
    sget-object v2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    :goto_2a5
    move-object v3, v2

    :cond_2a6
    :goto_2a6
    const/16 v18, 0x1

    goto/16 :goto_77a

    .line 464
    :cond_2aa
    invoke-virtual {v2}, Lvm2/Varargs;->narg()I

    move-result v3

    add-int v9, v11, v3

    .line 465
    invoke-virtual {v2}, Lvm2/Varargs;->dealias()Lvm2/Varargs;

    move-result-object v2

    goto :goto_2a5

    .line 448
    :sswitch_2b5
    aget-object v2, v0, v11

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v0, v6

    add-int/lit8 v10, v11, 0x2

    aget-object v10, v0, v10

    add-int/lit8 v12, v11, 0x3

    aget-object v12, v0, v12

    invoke-virtual {v2, v6, v10, v12}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto :goto_2a6

    .line 444
    :sswitch_2ca
    aget-object v2, v0, v11

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v0, v6

    add-int/lit8 v10, v11, 0x2

    aget-object v10, v0, v10

    add-int/lit8 v11, v11, 0x3

    aget-object v11, v0, v11

    invoke-virtual {v2, v6, v10, v11}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    goto :goto_2a6

    .line 447
    :sswitch_2dc
    aget-object v2, v0, v11

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v0, v6

    add-int/lit8 v10, v11, 0x2

    aget-object v10, v0, v10

    invoke-virtual {v2, v6, v10}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto :goto_2a6

    .line 443
    :sswitch_2ed
    aget-object v2, v0, v11

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v0, v6

    add-int/lit8 v11, v11, 0x2

    aget-object v10, v0, v11

    invoke-virtual {v2, v6, v10}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    goto :goto_2a6

    .line 446
    :sswitch_2fb
    aget-object v2, v0, v11

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v2, v6}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto :goto_2a6

    .line 442
    :sswitch_308
    aget-object v2, v0, v11

    add-int/lit8 v11, v11, 0x1

    aget-object v6, v0, v11

    invoke-virtual {v2, v6}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    goto :goto_2a6

    .line 440
    :sswitch_312
    aget-object v2, v0, v11

    add-int/lit8 v3, v11, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/Varargs;->narg()I

    move-result v3

    :goto_320
    add-int v9, v11, v3

    goto :goto_2a5

    .line 445
    :sswitch_323
    aget-object v2, v0, v11

    invoke-virtual {v2}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 441
    :sswitch_32d
    aget-object v2, v0, v11

    invoke-virtual {v2}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    goto/16 :goto_2a6

    .line 439
    :sswitch_334
    aget-object v2, v0, v11

    sget-object v3, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/Varargs;->narg()I

    move-result v3

    goto :goto_320

    :pswitch_341
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v2, v10

    const/high16 v4, 0x800000

    if-eq v2, v4, :cond_444

    const/high16 v4, 0x1000000

    if-eq v2, v4, :cond_411

    const/high16 v4, 0x1800000

    if-eq v2, v4, :cond_3d9

    const/high16 v4, 0x2000000

    if-eq v2, v4, :cond_39c

    ushr-int/lit8 v2, v10, 0x17

    if-lez v2, :cond_363

    add-int/lit8 v3, v11, 0x1

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 479
    invoke-static {v0, v3, v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;II)Lvm2/Varargs;

    move-result-object v2

    goto :goto_36f

    :cond_363
    add-int/lit8 v2, v11, 0x1

    .line 480
    invoke-virtual {v3}, Lvm2/Varargs;->narg()I

    move-result v4

    sub-int/2addr v9, v4

    sub-int/2addr v9, v2

    invoke-static {v0, v2, v9, v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    .line 481
    :goto_36f
    new-instance v3, Lvm2/TailcallVarargs;

    aget-object v0, v0, v11

    invoke-direct {v3, v0, v2}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    :try_end_376
    .catch Lvm2/LuaError; {:try_start_27a .. :try_end_376} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_376} :catch_2b
    .catchall {:try_start_27a .. :try_end_376} :catchall_28

    if-eqz v7, :cond_390

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_37c
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_38a

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/UpValue;

    invoke-virtual {v2}, Lvm2/UpValue;->close()V

    goto :goto_37c

    .line 606
    :cond_38a
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_390
    iget-object v0, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v0, :cond_39b

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_39b

    .line 610
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_39b
    return-object v3

    .line 475
    :cond_39c
    :try_start_39c
    new-instance v2, Lvm2/TailcallVarargs;

    aget-object v3, v0, v11

    add-int/lit8 v4, v11, 0x1

    aget-object v4, v0, v4

    add-int/lit8 v5, v11, 0x2

    aget-object v5, v0, v5

    add-int/lit8 v11, v11, 0x3

    aget-object v0, v0, v11

    invoke-static {v4, v5, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    :try_end_3b3
    .catch Lvm2/LuaError; {:try_start_39c .. :try_end_3b3} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3b3} :catch_2b
    .catchall {:try_start_39c .. :try_end_3b3} :catchall_28

    if-eqz v7, :cond_3cd

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3c7

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_3b9

    .line 606
    :cond_3c7
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_3cd
    iget-object v0, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v0, :cond_3d8

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_3d8

    .line 610
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_3d8
    return-object v2

    .line 474
    :cond_3d9
    :try_start_3d9
    new-instance v2, Lvm2/TailcallVarargs;

    aget-object v3, v0, v11

    add-int/lit8 v4, v11, 0x1

    aget-object v4, v0, v4

    add-int/2addr v11, v14

    aget-object v0, v0, v11

    invoke-static {v4, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    :try_end_3eb
    .catch Lvm2/LuaError; {:try_start_3d9 .. :try_end_3eb} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3eb} :catch_2b
    .catchall {:try_start_3d9 .. :try_end_3eb} :catchall_28

    if-eqz v7, :cond_405

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3f1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3ff

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_3f1

    .line 606
    :cond_3ff
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_405
    iget-object v0, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v0, :cond_410

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_410

    .line 610
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_410
    return-object v2

    .line 473
    :cond_411
    :try_start_411
    new-instance v2, Lvm2/TailcallVarargs;

    aget-object v3, v0, v11

    const/16 v18, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v0, v0, v11

    invoke-direct {v2, v3, v0}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    :try_end_41e
    .catch Lvm2/LuaError; {:try_start_411 .. :try_end_41e} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_411 .. :try_end_41e} :catch_2b
    .catchall {:try_start_411 .. :try_end_41e} :catchall_28

    if-eqz v7, :cond_438

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_424
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_432

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_424

    .line 606
    :cond_432
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_438
    iget-object v0, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v0, :cond_443

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_443

    .line 610
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_443
    return-object v2

    .line 472
    :cond_444
    :try_start_444
    new-instance v2, Lvm2/TailcallVarargs;

    aget-object v0, v0, v11

    sget-object v3, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-direct {v2, v0, v3}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    :try_end_44d
    .catch Lvm2/LuaError; {:try_start_444 .. :try_end_44d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_44d} :catch_2b
    .catchall {:try_start_444 .. :try_end_44d} :catchall_28

    if-eqz v7, :cond_467

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_453
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_461

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_453

    .line 606
    :cond_461
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_467
    iget-object v0, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v0, :cond_472

    iget-object v0, v0, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v0, :cond_472

    .line 610
    invoke-virtual {v0}, Lvm2/lib/DebugLib;->onReturn()V

    :cond_472
    return-object v2

    :pswitch_473
    ushr-int/lit8 v2, v10, 0x17

    .line 431
    :try_start_475
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lvm2/LuaValue;->toboolean()Z

    move-result v6

    and-int v10, v10, v16

    if-nez v10, :cond_481

    const/4 v10, 0x1

    goto :goto_482

    :cond_481
    const/4 v10, 0x0

    :goto_482
    if-ne v6, v10, :cond_488

    :goto_484
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2a6

    .line 434
    :cond_488
    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 425
    :pswitch_48c
    aget-object v2, v0, v11

    invoke-virtual {v2}, Lvm2/LuaValue;->toboolean()Z

    move-result v2

    and-int v6, v10, v16

    if-nez v6, :cond_498

    const/4 v6, 0x1

    goto :goto_499

    :cond_498
    const/4 v6, 0x0

    :goto_499
    if-ne v2, v6, :cond_2a6

    :goto_49b
    goto :goto_484

    :pswitch_49c
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_4a5

    and-int/lit16 v2, v2, 0xff

    .line 415
    aget-object v2, v4, v2

    goto :goto_4a7

    :cond_4a5
    aget-object v2, v0, v2

    :goto_4a7
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_4b2

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_4b4

    :cond_4b2
    aget-object v6, v0, v10

    :goto_4b4
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result v2

    if-nez v11, :cond_4bc

    const/4 v6, 0x1

    goto :goto_4bd

    :cond_4bc
    const/4 v6, 0x0

    :goto_4bd
    if-ne v2, v6, :cond_2a6

    goto :goto_49b

    :pswitch_4c0
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_4c9

    and-int/lit16 v2, v2, 0xff

    .line 410
    aget-object v2, v4, v2

    goto :goto_4cb

    :cond_4c9
    aget-object v2, v0, v2

    :goto_4cb
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_4d6

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_4d8

    :cond_4d6
    aget-object v6, v0, v10

    :goto_4d8
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->eq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-nez v11, :cond_4e0

    const/4 v6, 0x1

    goto :goto_4e1

    :cond_4e0
    const/4 v6, 0x0

    :goto_4e1
    if-ne v2, v6, :cond_2a6

    goto :goto_484

    :pswitch_4e4
    ushr-int/lit8 v2, v10, 0xe

    sub-int v2, v2, v17

    add-int/2addr v8, v2

    if-lez v11, :cond_2a6

    if-eqz v7, :cond_2a6

    add-int/lit8 v11, v11, -0x1

    .line 399
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4f3
    :goto_4f3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2a6

    .line 400
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvm2/UpValue;

    .line 401
    iget v10, v6, Lvm2/UpValue;->index:I

    if-lt v10, v11, :cond_4f3

    .line 402
    invoke-virtual {v6}, Lvm2/UpValue;->close()V

    .line 403
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4f3

    :pswitch_508
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_511

    and-int/lit16 v2, v2, 0xff

    .line 420
    aget-object v2, v4, v2

    goto :goto_513

    :cond_511
    aget-object v2, v0, v2

    :goto_513
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_51e

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_520

    :cond_51e
    aget-object v6, v0, v10

    :goto_520
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-nez v11, :cond_528

    const/4 v6, 0x1

    goto :goto_529

    :cond_528
    const/4 v6, 0x0

    :goto_529
    if-ne v2, v6, :cond_2a6

    goto/16 :goto_49b

    :pswitch_52d
    ushr-int/lit8 v2, v10, 0x17

    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v6, v6, 0x1ff

    add-int/lit8 v10, v2, 0x1

    if-le v6, v10, :cond_54f

    .line 386
    aget-object v10, v0, v6

    invoke-virtual {v10}, Lvm2/LuaValue;->buffer()Lvm2/Buffer;

    move-result-object v10

    :goto_53d
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v2, :cond_547

    .line 388
    aget-object v12, v0, v6

    invoke-virtual {v10, v12}, Lvm2/Buffer;->concatTo(Lvm2/LuaValue;)Lvm2/Buffer;

    goto :goto_53d

    .line 389
    :cond_547
    invoke-virtual {v10}, Lvm2/Buffer;->value()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :cond_54f
    add-int/lit8 v2, v6, -0x1

    .line 391
    aget-object v2, v0, v2

    aget-object v6, v0, v6

    invoke-virtual {v2, v6}, Lvm2/LuaValue;->concat(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_55d
    ushr-int/lit8 v2, v10, 0x17

    .line 374
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lvm2/LuaValue;->not()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_569
    ushr-int/lit8 v2, v10, 0x17

    .line 370
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lvm2/LuaValue;->neg()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_575
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_57e

    and-int/lit16 v2, v2, 0xff

    .line 366
    aget-object v2, v4, v2

    goto :goto_580

    :cond_57e
    aget-object v2, v0, v2

    :goto_580
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_58b

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_58d

    :cond_58b
    aget-object v6, v0, v10

    :goto_58d
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->pow(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_595
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_59e

    and-int/lit16 v2, v2, 0xff

    .line 362
    aget-object v2, v4, v2

    goto :goto_5a0

    :cond_59e
    aget-object v2, v0, v2

    :goto_5a0
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_5ab

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_5ad

    :cond_5ab
    aget-object v6, v0, v10

    :goto_5ad
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->mod(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_5b5
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_5be

    and-int/lit16 v2, v2, 0xff

    .line 358
    aget-object v2, v4, v2

    goto :goto_5c0

    :cond_5be
    aget-object v2, v0, v2

    :goto_5c0
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_5cb

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_5cd

    :cond_5cb
    aget-object v6, v0, v10

    :goto_5cd
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->div(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_5d5
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_5de

    and-int/lit16 v2, v2, 0xff

    .line 354
    aget-object v2, v4, v2

    goto :goto_5e0

    :cond_5de
    aget-object v2, v0, v2

    :goto_5e0
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_5eb

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_5ed

    :cond_5eb
    aget-object v6, v0, v10

    :goto_5ed
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->mul(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_5f5
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_5fe

    and-int/lit16 v2, v2, 0xff

    .line 350
    aget-object v2, v4, v2

    goto :goto_600

    :cond_5fe
    aget-object v2, v0, v2

    :goto_600
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_60b

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_60d

    :cond_60b
    aget-object v6, v0, v10

    :goto_60d
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->sub(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_615
    ushr-int/lit8 v2, v10, 0x17

    if-le v2, v12, :cond_61e

    and-int/lit16 v2, v2, 0xff

    .line 346
    aget-object v2, v4, v2

    goto :goto_620

    :cond_61e
    aget-object v2, v0, v2

    :goto_620
    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_62b

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_62d

    :cond_62b
    aget-object v6, v0, v10

    :goto_62d
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->add(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_635
    ushr-int/lit8 v2, v10, 0x17

    .line 378
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lvm2/LuaValue;->len()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_641
    add-int/lit8 v2, v11, 0x1

    ushr-int/lit8 v6, v10, 0x17

    .line 341
    aget-object v6, v0, v6

    aput-object v6, v0, v2

    shr-int/lit8 v2, v10, 0xe

    and-int/lit16 v10, v2, 0x1ff

    if-le v10, v12, :cond_654

    and-int/lit16 v2, v2, 0xff

    .line 342
    aget-object v2, v4, v2

    goto :goto_656

    :cond_654
    aget-object v2, v0, v10

    :goto_656
    invoke-virtual {v6, v2}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 337
    :pswitch_65e
    new-instance v2, Lvm2/LuaTable;

    ushr-int/lit8 v6, v10, 0x17

    shr-int/lit8 v10, v10, 0xe

    and-int/lit16 v10, v10, 0x1ff

    invoke-direct {v2, v6, v10}, Lvm2/LuaTable;-><init>(II)V

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 333
    :pswitch_66d
    aget-object v2, v0, v11

    ushr-int/lit8 v6, v10, 0x17

    if-le v6, v12, :cond_678

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_67a

    :cond_678
    aget-object v6, v0, v6

    :goto_67a
    shr-int/lit8 v10, v10, 0xe

    and-int/lit16 v11, v10, 0x1ff

    if-le v11, v12, :cond_685

    and-int/lit16 v10, v10, 0xff

    aget-object v10, v4, v10

    goto :goto_687

    :cond_685
    aget-object v10, v0, v11

    :goto_687
    invoke-virtual {v2, v6, v10}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_2a6

    .line 329
    :pswitch_68c
    iget-object v2, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    ushr-int/lit8 v6, v10, 0x17

    aget-object v2, v2, v6

    aget-object v6, v0, v11

    invoke-virtual {v2, v6}, Lvm2/UpValue;->setValue(Lvm2/LuaValue;)V

    goto/16 :goto_2a6

    .line 325
    :pswitch_699
    iget-object v2, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lvm2/UpValue;->getValue()Lvm2/LuaValue;

    move-result-object v2

    ushr-int/lit8 v6, v10, 0x17

    if-le v6, v12, :cond_6aa

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_6ac

    :cond_6aa
    aget-object v6, v0, v6

    :goto_6ac
    shr-int/lit8 v10, v10, 0xe

    and-int/lit16 v11, v10, 0x1ff

    if-le v11, v12, :cond_6b7

    and-int/lit16 v10, v10, 0xff

    aget-object v10, v4, v10

    goto :goto_6b9

    :cond_6b7
    aget-object v10, v0, v11

    :goto_6b9
    invoke-virtual {v2, v6, v10}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_2a6

    :pswitch_6be
    ushr-int/lit8 v2, v10, 0x17

    .line 321
    aget-object v2, v0, v2

    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_6cd

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_6cf

    :cond_6cd
    aget-object v6, v0, v10

    :goto_6cf
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 317
    :pswitch_6d7
    iget-object v2, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    ushr-int/lit8 v6, v10, 0x17

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lvm2/UpValue;->getValue()Lvm2/LuaValue;

    move-result-object v2

    shr-int/lit8 v6, v10, 0xe

    and-int/lit16 v10, v6, 0x1ff

    if-le v10, v12, :cond_6ec

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    goto :goto_6ee

    :cond_6ec
    aget-object v6, v0, v10

    :goto_6ee
    invoke-virtual {v2, v6}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    .line 313
    :pswitch_6f6
    iget-object v2, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    ushr-int/lit8 v6, v10, 0x17

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lvm2/UpValue;->getValue()Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_704
    ushr-int/lit8 v2, v10, 0x17

    :goto_706
    add-int/lit8 v6, v2, -0x1

    if-ltz v2, :cond_2a6

    add-int/lit8 v2, v11, 0x1

    .line 309
    sget-object v10, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v10, v0, v11

    move v11, v2

    move v2, v6

    goto :goto_706

    :pswitch_713
    add-int/lit8 v8, v8, 0x1

    .line 292
    aget v2, v5, v8

    and-int/lit8 v6, v2, 0x3f

    const/16 v10, 0x27

    if-eq v6, v10, :cond_751

    .line 295
    new-instance v0, Lvm2/LuaError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_EXTRAARG expected after OP_LOADKX, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    sget-object v3, Lvm2/Print;->OPNAMES:[Ljava/lang/String;

    array-length v4, v3

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v6, v4, :cond_735

    aget-object v3, v3, v6

    goto :goto_746

    :cond_735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN_OP_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_746
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_751
    ushr-int/lit8 v2, v2, 0x6

    .line 298
    aget-object v2, v4, v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_759
    ushr-int/lit8 v2, v10, 0x17

    if-eqz v2, :cond_760

    .line 302
    sget-object v2, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    goto :goto_762

    :cond_760
    sget-object v2, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    :goto_762
    aput-object v2, v0, v11

    and-int v2, v10, v16

    if-eqz v2, :cond_2a6

    goto/16 :goto_49b

    :pswitch_76a
    ushr-int/lit8 v2, v10, 0x17

    .line 283
    aget-object v2, v0, v2

    aput-object v2, v0, v11

    goto/16 :goto_2a6

    :pswitch_772
    ushr-int/lit8 v2, v10, 0xe

    .line 287
    aget-object v2, v4, v2

    aput-object v2, v0, v11
    :try_end_778
    .catch Lvm2/LuaError; {:try_start_475 .. :try_end_778} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_475 .. :try_end_778} :catch_2b
    .catchall {:try_start_475 .. :try_end_778} :catchall_28

    goto/16 :goto_2a6

    :cond_77a
    :goto_77a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_1c

    .line 598
    :goto_780
    :try_start_780
    new-instance v2, Lvm2/LuaError;

    invoke-direct {v2, v0}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    .line 599
    iget-object v0, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-direct {v1, v2, v0, v8}, Lvm2/LuaClosure;->processErrorHooks(Lvm2/LuaError;Lvm2/Prototype;I)V

    .line 600
    throw v2

    .line 594
    :goto_78b
    iget-object v2, v0, Lvm2/LuaError;->traceback:Ljava/lang/String;

    if-nez v2, :cond_794

    .line 595
    iget-object v2, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-direct {v1, v0, v2, v8}, Lvm2/LuaClosure;->processErrorHooks(Lvm2/LuaError;Lvm2/Prototype;I)V

    .line 596
    :cond_794
    throw v0
    :try_end_795
    .catchall {:try_start_780 .. :try_end_795} :catchall_28

    :goto_795
    if-eqz v7, :cond_7af

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_79b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7a9

    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/UpValue;

    invoke-virtual {v3}, Lvm2/UpValue;->close()V

    goto :goto_79b

    .line 606
    :cond_7a9
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-direct {v1, v7}, Lvm2/LuaClosure;->releaseUpvalues(Ljava/util/ArrayList;)V

    .line 609
    :cond_7af
    iget-object v2, v1, Lvm2/LuaClosure;->globals:Lvm2/Globals;

    if-eqz v2, :cond_7ba

    iget-object v2, v2, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    if-eqz v2, :cond_7ba

    .line 610
    invoke-virtual {v2}, Lvm2/lib/DebugLib;->onReturn()V

    .line 611
    :cond_7ba
    throw v0

    nop

    :pswitch_data_7bc
    .packed-switch 0x0
        :pswitch_772
        :pswitch_76a
        :pswitch_759
        :pswitch_713
        :pswitch_704
        :pswitch_6f6
        :pswitch_6d7
        :pswitch_6be
        :pswitch_699
        :pswitch_68c
        :pswitch_66d
        :pswitch_65e
        :pswitch_641
        :pswitch_635
        :pswitch_615
        :pswitch_5f5
        :pswitch_5d5
        :pswitch_5b5
        :pswitch_595
        :pswitch_575
        :pswitch_569
        :pswitch_55d
        :pswitch_52d
        :pswitch_508
        :pswitch_4e4
        :pswitch_4c0
        :pswitch_49c
        :pswitch_48c
        :pswitch_473
        :pswitch_341
        :pswitch_26f
        :pswitch_1b8
        :pswitch_18d
        :pswitch_162
        :pswitch_136
        :pswitch_11f
        :pswitch_ca
        :pswitch_82
        :pswitch_64
        :pswitch_5c
    .end packed-switch

    :sswitch_data_810
    .sparse-switch
        0x800000 -> :sswitch_334
        0x804000 -> :sswitch_32d
        0x808000 -> :sswitch_323
        0x1000000 -> :sswitch_312
        0x1004000 -> :sswitch_308
        0x1008000 -> :sswitch_2fb
        0x1804000 -> :sswitch_2ed
        0x1808000 -> :sswitch_2dc
        0x2004000 -> :sswitch_2ca
        0x2008000 -> :sswitch_2b5
    .end sparse-switch
.end method

.method public getUpvalue(I)Lvm2/LuaValue;
    .registers 3

    .line 683
    iget-object v0, p0, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lvm2/UpValue;->getValue()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public initupvalue1(Lvm2/LuaValue;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_1c

    .line 114
    :cond_a
    array-length v0, v0

    new-array v0, v0, [Lvm2/UpValue;

    iput-object v0, p0, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    .line 115
    new-instance v1, Lvm2/UpValue;

    filled-new-array {p1}, [Lvm2/LuaValue;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lvm2/UpValue;-><init>([Lvm2/LuaValue;I)V

    aput-object v1, v0, v2

    return-void

    .line 112
    :cond_1c
    :goto_1c
    sget-object p1, Lvm2/LuaClosure;->NOUPVALUES:[Lvm2/UpValue;

    iput-object p1, p0, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    return-void
.end method

.method public final invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lvm2/LuaClosure;->onInvoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->eval()Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public isclosure()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-virtual {v1}, Lvm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v1, v1, Lvm2/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onInvoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 242
    invoke-direct {p0}, Lvm2/LuaClosure;->allocateStack()[Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    :goto_5
    iget-object v2, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v3, v2, Lvm2/Prototype;->numparams:I

    if-ge v1, v3, :cond_15

    add-int/lit8 v2, v1, 0x1

    .line 244
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_5

    .line 245
    :cond_15
    iget v1, v2, Lvm2/Prototype;->is_vararg:I

    if-eqz v1, :cond_20

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    goto :goto_22

    :cond_20
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    :goto_22
    invoke-virtual {p0, v0, p1}, Lvm2/LuaClosure;->execute([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    .line 246
    instance-of v1, p1, Lvm2/LuaValue;

    if-eqz v1, :cond_2d

    .line 247
    invoke-direct {p0, v0}, Lvm2/LuaClosure;->releaseStack([Lvm2/LuaValue;)V

    :cond_2d
    return-object p1
.end method

.method public optclosure(Lvm2/LuaClosure;)Lvm2/LuaClosure;
    .registers 2

    .line 0
    return-object p0
.end method

.method public setUpvalue(ILvm2/LuaValue;)V
    .registers 4

    .line 687
    iget-object v0, p0, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lvm2/UpValue;->setValue(Lvm2/LuaValue;)V

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-virtual {v1}, Lvm2/Prototype;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
