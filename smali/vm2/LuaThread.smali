###### Class vm2.LuaThread (vm2.LuaThread)
.class public Lvm2/LuaThread;
.super Lvm2/LuaValue;
.source "LuaThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/LuaThread$State;,
        Lvm2/LuaThread$StateThread;
    }
.end annotation


# static fields
.field public static final MAX_CALLSTACK:I = 0x100

.field public static final STATUS_DEAD:I = 0x4

.field public static final STATUS_INITIAL:I = 0x0

.field public static final STATUS_NAMES:[Ljava/lang/String;

.field public static final STATUS_NORMAL:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUSPENDED:I = 0x1

.field public static coroutine_count:I = 0x0

.field public static s_metatable:Lvm2/LuaValue; = null

.field public static thread_orphan_check_interval:J = 0x1388L


# instance fields
.field public callstack:Ljava/lang/Object;

.field public errorfunc:Lvm2/LuaValue;

.field public final globals:Lvm2/Globals;

.field public final state:Lvm2/LuaThread$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 93
    const-string v0, "normal"

    const-string v1, "dead"

    const-string v2, "suspended"

    const-string v3, "running"

    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lvm2/Globals;)V
    .registers 4

    .line 114
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 115
    new-instance v0, Lvm2/LuaThread$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lvm2/LuaThread$State;-><init>(Lvm2/Globals;Lvm2/LuaThread;Lvm2/LuaValue;)V

    iput-object v0, p0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    const/4 v1, 0x2

    .line 116
    iput v1, v0, Lvm2/LuaThread$State;->status:I

    .line 117
    iput-object p1, p0, Lvm2/LuaThread;->globals:Lvm2/Globals;

    return-void
.end method

.method public constructor <init>(Lvm2/Globals;Lvm2/LuaValue;)V
    .registers 5

    .line 124
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 125
    :goto_8
    const-string v1, "function cannot be null"

    invoke-static {v0, v1}, Lvm2/LuaValue;->assert_(ZLjava/lang/String;)V

    .line 126
    new-instance v0, Lvm2/LuaThread$State;

    invoke-direct {v0, p1, p0, p2}, Lvm2/LuaThread$State;-><init>(Lvm2/Globals;Lvm2/LuaThread;Lvm2/LuaValue;)V

    iput-object v0, p0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 127
    iput-object p1, p0, Lvm2/LuaThread;->globals:Lvm2/Globals;

    return-void
.end method


# virtual methods
.method public checkthread()Lvm2/LuaThread;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 3

    .line 155
    sget-object v0, Lvm2/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    iget-object v1, p0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    iget v1, v1, Lvm2/LuaThread$State;->status:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 151
    sget-object v0, Lvm2/LuaThread;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public isMainThread()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    iget-object v0, v0, Lvm2/LuaThread$State;->function:Lvm2/LuaValue;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isthread()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public optthread(Lvm2/LuaThread;)Lvm2/LuaThread;
    .registers 2

    .line 0
    return-object p0
.end method

.method public resume(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 163
    iget-object v0, p0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 164
    iget v1, v0, Lvm2/LuaThread$State;->status:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_32

    .line 165
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot resume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v0, v0, Lvm2/LuaThread$State;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    const-string v0, "dead"

    goto :goto_1d

    :cond_1b
    const-string v0, "non-suspended"

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " coroutine"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    .line 165
    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 167
    :cond_32
    invoke-virtual {v0, p0, p1}, Lvm2/LuaThread$State;->lua_resume(Lvm2/LuaThread;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public type()I
    .registers 2

    .line 0
    const/16 v0, 0x9

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 135
    const-string v0, "thread"

    return-object v0
.end method

###### Class vm2.LuaThread.State (vm2.LuaThread$State)
.class public Lvm2/LuaThread$State;
.super Ljava/lang/Object;
.source "LuaThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field args:Lvm2/Varargs;

.field public bytecodes:I

.field error:Ljava/lang/String;

.field public final function:Lvm2/LuaValue;

.field private final globals:Lvm2/Globals;

.field public hookcall:Z

.field public hookcount:I

.field public hookfunc:Lvm2/LuaValue;

.field public hookline:Z

.field public hookrtrn:Z

.field public inhook:Z

.field public lastline:I

.field final lua_thread:Ljava/lang/ref/WeakReference;

.field result:Lvm2/Varargs;

.field public status:I


# direct methods
.method public constructor <init>(Lvm2/Globals;Lvm2/LuaThread;Lvm2/LuaValue;)V
    .registers 5

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object v0, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 189
    iput-object v0, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lvm2/LuaThread$State;->error:Ljava/lang/String;

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lvm2/LuaThread$State;->status:I

    .line 206
    iput-object p1, p0, Lvm2/LuaThread$State;->globals:Lvm2/Globals;

    .line 207
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lvm2/LuaThread$State;->lua_thread:Ljava/lang/ref/WeakReference;

    .line 208
    iput-object p3, p0, Lvm2/LuaThread$State;->function:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public declared-synchronized lua_resume(Lvm2/LuaThread;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    monitor-enter p0

    .line 225
    :try_start_1
    iget-object v0, p0, Lvm2/LuaThread$State;->globals:Lvm2/Globals;

    iget-object v1, v0, Lvm2/Globals;->running:Lvm2/LuaThread;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6c

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 227
    :try_start_7
    iput-object p1, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    .line 228
    iput-object p2, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 229
    iget p1, p0, Lvm2/LuaThread$State;->status:I

    if-nez p1, :cond_33

    .line 230
    iput v3, p0, Lvm2/LuaThread$State;->status:I

    .line 231
    new-instance p1, Lvm2/LuaThread$StateThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Coroutine-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lvm2/LuaThread;->coroutine_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lvm2/LuaThread;->coroutine_count:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lvm2/LuaThread$StateThread;-><init>(Lvm2/LuaThread$State;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_36

    :catchall_31
    move-exception p1

    goto :goto_76

    .line 233
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :goto_36
    if-eqz v1, :cond_3d

    .line 236
    iget-object p1, v1, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    const/4 p2, 0x3

    iput p2, p1, Lvm2/LuaThread$State;->status:I

    .line 237
    :cond_3d
    iput v3, p0, Lvm2/LuaThread$State;->status:I

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 239
    iget-object p1, p0, Lvm2/LuaThread$State;->error:Ljava/lang/String;

    if-eqz p1, :cond_51

    .line 240
    sget-object p2, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    goto :goto_59

    .line 241
    :cond_51
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    iget-object p2, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_59} :catch_70
    .catchall {:try_start_7 .. :try_end_59} :catchall_31

    .line 245
    :goto_59
    :try_start_59
    sget-object p2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object p2, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 246
    iput-object p2, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    .line 247
    iput-object v2, p0, Lvm2/LuaThread$State;->error:Ljava/lang/String;

    .line 248
    iget-object p2, p0, Lvm2/LuaThread$State;->globals:Lvm2/Globals;

    iput-object v1, p2, Lvm2/Globals;->running:Lvm2/LuaThread;

    if-eqz v1, :cond_6e

    .line 250
    iget-object p2, v1, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    iput v3, p2, Lvm2/LuaThread$State;->status:I
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_6c

    goto :goto_6e

    :catchall_6c
    move-exception p1

    goto :goto_89

    .line 239
    :cond_6e
    :goto_6e
    monitor-exit p0

    return-object p1

    .line 243
    :catch_70
    :try_start_70
    new-instance p1, Lvm2/OrphanedThread;

    invoke-direct {p1}, Lvm2/OrphanedThread;-><init>()V

    throw p1
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_31

    .line 245
    :goto_76
    :try_start_76
    sget-object p2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object p2, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 246
    iput-object p2, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    .line 247
    iput-object v2, p0, Lvm2/LuaThread$State;->error:Ljava/lang/String;

    .line 248
    iget-object p2, p0, Lvm2/LuaThread$State;->globals:Lvm2/Globals;

    iput-object v1, p2, Lvm2/Globals;->running:Lvm2/LuaThread;

    if-eqz v1, :cond_88

    .line 250
    iget-object p2, v1, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    iput v3, p2, Lvm2/LuaThread$State;->status:I

    .line 251
    :cond_88
    throw p1

    :goto_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_76 .. :try_end_8a} :catchall_6c

    throw p1
.end method

.method public declared-synchronized lua_yield(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x4

    .line 256
    :try_start_2
    iput-object p1, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    const/4 p1, 0x1

    .line 257
    iput p1, p0, Lvm2/LuaThread$State;->status:I

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 260
    :cond_a
    sget-wide v1, Lvm2/LuaThread;->thread_orphan_check_interval:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 261
    iget-object v1, p0, Lvm2/LuaThread$State;->lua_thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 265
    iget v1, p0, Lvm2/LuaThread$State;->status:I

    if-eq v1, p1, :cond_a

    .line 266
    iget-object p1, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1d} :catch_31
    .catchall {:try_start_2 .. :try_end_1d} :catchall_27

    .line 271
    :try_start_1d
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object v0, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 272
    iput-object v0, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_25

    .line 266
    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    goto :goto_40

    :catchall_27
    move-exception p1

    goto :goto_39

    .line 262
    :cond_29
    :try_start_29
    iput v0, p0, Lvm2/LuaThread$State;->status:I

    .line 263
    new-instance p1, Lvm2/OrphanedThread;

    invoke-direct {p1}, Lvm2/OrphanedThread;-><init>()V

    throw p1
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_31} :catch_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_27

    .line 268
    :catch_31
    :try_start_31
    iput v0, p0, Lvm2/LuaThread$State;->status:I

    .line 269
    new-instance p1, Lvm2/OrphanedThread;

    invoke-direct {p1}, Lvm2/OrphanedThread;-><init>()V

    throw p1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_27

    .line 271
    :goto_39
    :try_start_39
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object v0, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 272
    iput-object v0, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;

    .line 273
    throw p1

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_25

    throw p1
.end method

.method public declared-synchronized run()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x4

    .line 213
    :try_start_2
    iget-object v1, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 214
    sget-object v2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object v2, p0, Lvm2/LuaThread$State;->args:Lvm2/Varargs;

    .line 215
    iget-object v2, p0, Lvm2/LuaThread$State;->function:Lvm2/LuaValue;

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v1

    iput-object v1, p0, Lvm2/LuaThread$State;->result:Lvm2/Varargs;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_18

    .line 219
    :try_start_10
    iput v0, p0, Lvm2/LuaThread$State;->status:I

    .line 220
    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception v0

    goto :goto_2b

    :catchall_18
    move-exception v1

    .line 217
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvm2/LuaThread$State;->error:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_24

    .line 219
    :try_start_1f
    iput v0, p0, Lvm2/LuaThread$State;->status:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_16

    goto :goto_12

    .line 222
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v1

    .line 219
    :try_start_25
    iput v0, p0, Lvm2/LuaThread$State;->status:I

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 221
    throw v1

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_16

    throw v0
.end method

###### Class vm2.LuaThread.StateThread (vm2.LuaThread$StateThread)
.class public Lvm2/LuaThread$StateThread;
.super Ljava/lang/Thread;
.source "LuaThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateThread"
.end annotation


# instance fields
.field public final owner:Ljava/lang/Thread;

.field public final state:Lvm2/LuaThread$State;


# direct methods
.method public constructor <init>(Lvm2/LuaThread$State;Ljava/lang/String;)V
    .registers 3

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lvm2/LuaThread$StateThread;->state:Lvm2/LuaThread$State;

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lvm2/LuaThread$StateThread;->owner:Ljava/lang/Thread;

    return-void
.end method
