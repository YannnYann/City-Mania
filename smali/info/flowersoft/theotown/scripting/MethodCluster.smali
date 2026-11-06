###### Class info.flowersoft.theotown.scripting.MethodCluster (info.flowersoft.theotown.scripting.MethodCluster)
.class public Linfo/flowersoft/theotown/scripting/MethodCluster;
.super Ljava/lang/Object;
.source "MethodCluster.java"


# static fields
.field public static final activeClusters:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation
.end field

.field public static ctr:I


# instance fields
.field public args4:[Lvm2/LuaValue;

.field public args5:[Lvm2/LuaValue;

.field public args6:[Lvm2/LuaValue;

.field public draft:Linfo/flowersoft/theotown/draft/Draft;

.field public env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

.field public final executionCtrs:Lio/blueflower/stapel2d/util/IntList;

.field public final executionTimes:Lio/blueflower/stapel2d/util/IntList;

.field public final functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/LuaFunction;",
            ">;"
        }
    .end annotation
.end field

.field public isActive:Z

.field public logExecutionTimes:Z

.field public name:Ljava/lang/String;

.field public final scripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ">;"
        }
    .end annotation
.end field

.field public totalExecutionCtr:I

.field public totalExecutionTime:J

.field public vargs4:Lvm2/Varargs;

.field public vargs5:Lvm2/Varargs;

.field public vargs6:Lvm2/Varargs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/scripting/MethodCluster;->activeClusters:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    .line 28
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionTimes:Lio/blueflower/stapel2d/util/IntList;

    .line 29
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionCtrs:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->logExecutionTimes:Z

    .line 69
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    return-void
.end method

.method public static clearActiveClusters()V
    .registers 4

    .line 57
    sget-object v0, Linfo/flowersoft/theotown/scripting/MethodCluster;->activeClusters:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 58
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/4 v3, 0x0

    .line 59
    iput-boolean v3, v2, Linfo/flowersoft/theotown/scripting/MethodCluster;->isActive:Z

    goto :goto_7

    :catchall_17
    move-exception v1

    goto :goto_20

    .line 61
    :cond_19
    sget-object v1, Linfo/flowersoft/theotown/scripting/MethodCluster;->activeClusters:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 62
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_17

    throw v1
.end method

.method public static getActiveClusters()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Linfo/flowersoft/theotown/scripting/MethodCluster;->activeClusters:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 53
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getAndResetCallCounter()I
    .registers 2

    .line 380
    sget v0, Linfo/flowersoft/theotown/scripting/MethodCluster;->ctr:I

    const/4 v1, 0x0

    .line 381
    sput v1, Linfo/flowersoft/theotown/scripting/MethodCluster;->ctr:I

    return v0
.end method

.method public static markClusterAsActive(Linfo/flowersoft/theotown/scripting/MethodCluster;)V
    .registers 4

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/scripting/MethodCluster;->activeClusters:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 40
    :try_start_3
    iget-boolean v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->isActive:Z

    if-nez v1, :cond_21

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_1b

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/4 v2, 0x0

    .line 43
    iput-boolean v2, v1, Linfo/flowersoft/theotown/scripting/MethodCluster;->isActive:Z

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_23

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->isActive:Z

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_19

    throw p0
.end method


# virtual methods
.method public addMethod(Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V
    .registers 4

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final afterInvoke()V
    .registers 2

    .line 101
    iget v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->totalExecutionCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->totalExecutionCtr:I

    .line 102
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    .line 103
    invoke-static {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->markClusterAsActive(Linfo/flowersoft/theotown/scripting/MethodCluster;)V

    return-void
.end method

.method public final beforeInvoke()V
    .registers 1

    .line 0
    return-void
.end method

.method public final catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    .registers 5

    .line 93
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V

    return-void
.end method

.method public clearExecutionStats(I)V
    .registers 4

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionTimes:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionCtrs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

.method public collectInvoke()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/Script;",
            "Lvm2/LuaValue;",
            ">;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v2, 0x0

    .line 153
    :goto_f
    :try_start_f
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 154
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/Script;

    .line 155
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_73

    if-eqz v4, :cond_75

    .line 157
    :try_start_25
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvm2/LuaFunction;

    .line 158
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 159
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    .line 160
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v4, v7}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v4

    .line 161
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v5, v7

    invoke-virtual {p0, v2, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V

    .line 162
    invoke-virtual {v4}, Lvm2/LuaValue;->isnil()Z

    move-result v5

    if-nez v5, :cond_75

    .line 163
    new-instance v5, Lio/blueflower/stapel2d/util/Tuple;

    invoke-direct {v5, v3, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_56

    goto :goto_75

    :catchall_56
    move-exception v4

    .line 166
    :try_start_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_57 .. :try_end_72} :catchall_73

    goto :goto_75

    :catchall_73
    move-exception v0

    goto :goto_81

    :cond_75
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 171
    :cond_78
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 172
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object v0

    .line 171
    :goto_81
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 172
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 173
    throw v0
.end method

.method public countMethods()I
    .registers 2

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 398
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getMethodExecutionCounter(I)I
    .registers 3

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionCtrs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getMethodExecutionTime(I)I
    .registers 3

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionTimes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getMethodScript(I)Linfo/flowersoft/theotown/scripting/Script;
    .registers 3

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/Script;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    return-object v0
.end method

.method public invoke()V
    .registers 9

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v1, 0x0

    .line 182
    :goto_a
    :try_start_a
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 183
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/Script;

    .line 184
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_5f

    if-eqz v3, :cond_61

    .line 186
    :try_start_20
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/LuaFunction;

    .line 187
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 188
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    .line 189
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v3, v6}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 190
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v3, v6

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_42

    goto :goto_61

    :catchall_42
    move-exception v3

    .line 192
    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    goto :goto_61

    :catchall_5f
    move-exception v1

    goto :goto_6d

    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 197
    :cond_64
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-void

    .line 197
    :goto_6d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 198
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 199
    throw v1
.end method

.method public invoke(III)Z
    .registers 6

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    if-nez v0, :cond_16

    const/4 v0, 0x4

    .line 328
    new-array v0, v0, [Lvm2/LuaValue;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    .line 329
    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs4:Lvm2/Varargs;

    .line 332
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    aput-object p1, v0, v1

    .line 333
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p2, :cond_3c

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    aput-object p2, p1, v0

    .line 334
    :cond_3c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p3, :cond_4f

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    invoke-static {p3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 335
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args4:[Lvm2/LuaValue;

    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs4:Lvm2/Varargs;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke([Lvm2/LuaValue;Lvm2/Varargs;)Z

    move-result p1

    return p1
.end method

.method public invoke(IIII)Z
    .registers 7

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    if-nez v0, :cond_16

    const/4 v0, 0x5

    .line 340
    new-array v0, v0, [Lvm2/LuaValue;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    .line 341
    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs5:Lvm2/Varargs;

    .line 344
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    aput-object p1, v0, v1

    .line 345
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p2, :cond_3c

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    aput-object p2, p1, v0

    .line 346
    :cond_3c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p3, :cond_4f

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    invoke-static {p3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 347
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p4, :cond_62

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    invoke-static {p4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 348
    :cond_62
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args5:[Lvm2/LuaValue;

    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs5:Lvm2/Varargs;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke([Lvm2/LuaValue;Lvm2/Varargs;)Z

    move-result p1

    return p1
.end method

.method public invoke(IIIILvm2/LuaValue;)Z
    .registers 8

    .line 352
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    if-nez v0, :cond_16

    const/4 v0, 0x6

    .line 353
    new-array v0, v0, [Lvm2/LuaValue;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    .line 354
    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs6:Lvm2/Varargs;

    .line 357
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    aput-object p1, v0, v1

    .line 358
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p2, :cond_3c

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    aput-object p2, p1, v0

    .line 359
    :cond_3c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p3, :cond_4f

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 360
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p4, :cond_62

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 361
    :cond_62
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x5

    aput-object p5, p1, p2

    .line 362
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs6:Lvm2/Varargs;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke([Lvm2/LuaValue;Lvm2/Varargs;)Z

    move-result p1

    return p1
.end method

.method public invoke(IIIZLvm2/LuaValue;)Z
    .registers 8

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    if-nez v0, :cond_16

    const/4 v0, 0x6

    .line 367
    new-array v0, v0, [Lvm2/LuaValue;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    .line 368
    sget-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs6:Lvm2/Varargs;

    .line 371
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    aput-object p1, v0, v1

    .line 372
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p2, :cond_3c

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    aput-object p2, p1, v0

    .line 373
    :cond_3c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eq p1, p3, :cond_4f

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    invoke-static {p3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p3

    aput-object p3, p1, p2

    .line 374
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x4

    invoke-static {p4}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p3

    aput-object p3, p1, p2

    .line 375
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->args6:[Lvm2/LuaValue;

    const/4 p2, 0x5

    aput-object p5, p1, p2

    .line 376
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->vargs6:Lvm2/Varargs;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke([Lvm2/LuaValue;Lvm2/Varargs;)Z

    move-result p1

    return p1
.end method

.method public invoke(Lvm2/LuaValue;)Z
    .registers 12

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    .line 208
    :goto_c
    :try_start_c
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6c

    .line 209
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/scripting/Script;

    .line 210
    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v5
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_67

    if-eqz v5, :cond_69

    .line 212
    :try_start_22
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvm2/LuaFunction;

    .line 213
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 214
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    .line 215
    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v5, v8, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v5

    and-int/2addr v3, v5

    .line 216
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    long-to-int v5, v8

    invoke-virtual {p0, v2, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_4a

    goto :goto_69

    :catchall_4a
    move-exception v5

    .line 218
    :try_start_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(.)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_67

    goto :goto_69

    :catchall_67
    move-exception p1

    goto :goto_75

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 223
    :cond_6c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 224
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return v3

    .line 223
    :goto_75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 224
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 225
    throw p1
.end method

.method public invoke(Lvm2/Varargs;)Z
    .registers 12

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    .line 236
    :goto_c
    :try_start_c
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_82

    .line 237
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/scripting/Script;

    .line 238
    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v5
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_7d

    if-eqz v5, :cond_7f

    .line 240
    :try_start_22
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvm2/LuaFunction;

    .line 241
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 242
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    .line 243
    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v5, v8, p1}, Lvm2/LuaValue;->invoke(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v5

    .line 244
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    long-to-int v6, v8

    invoke-virtual {p0, v2, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V

    .line 245
    invoke-virtual {v5}, Lvm2/Varargs;->narg()I

    move-result v6

    if-lt v6, v1, :cond_7f

    invoke-virtual {v5}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_22 .. :try_end_52} :catchall_54

    and-int/2addr v3, v4

    goto :goto_7f

    :catchall_54
    move-exception v5

    .line 247
    :try_start_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(.["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "])"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_7d

    goto :goto_7f

    :catchall_7d
    move-exception p1

    goto :goto_8b

    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 252
    :cond_82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 253
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return v3

    .line 252
    :goto_8b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 253
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 254
    throw p1
.end method

.method public final invoke([Lvm2/LuaValue;Lvm2/Varargs;)Z
    .registers 14

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 265
    :goto_d
    :try_start_d
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_82

    .line 266
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/scripting/Script;

    .line 267
    invoke-virtual {v5}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v6
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_7d

    if-eqz v6, :cond_7f

    .line 269
    :try_start_23
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvm2/LuaFunction;

    .line 270
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 271
    invoke-virtual {v5}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v1

    .line 272
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    .line 273
    invoke-virtual {v6, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v6

    .line 274
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    long-to-int v7, v9

    invoke-virtual {p0, v3, v7}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V

    .line 275
    invoke-virtual {v6}, Lvm2/Varargs;->narg()I

    move-result v7

    if-lt v7, v2, :cond_7f

    invoke-virtual {v6}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v5
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_57

    and-int/2addr v4, v5

    goto :goto_7f

    :catchall_57
    move-exception v6

    .line 277
    :try_start_58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(.["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "])"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_58 .. :try_end_7c} :catchall_7d

    goto :goto_7f

    :catchall_7d
    move-exception p1

    goto :goto_8b

    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 282
    :cond_82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 283
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return v4

    .line 282
    :goto_8b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 283
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 284
    throw p1
.end method

.method public invokeUntil(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 13

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->beforeInvoke()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    .line 296
    :goto_d
    :try_start_d
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_85

    if-eqz v4, :cond_85

    .line 297
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/scripting/Script;

    .line 298
    invoke-virtual {v5}, Linfo/flowersoft/theotown/scripting/Script;->isActive()Z

    move-result v6
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_80

    if-eqz v6, :cond_82

    .line 300
    :try_start_25
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->functions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvm2/LuaFunction;

    .line 301
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 302
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    .line 303
    invoke-virtual {v5}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v6, v9, p1}, Lvm2/LuaValue;->invoke(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v2

    .line 304
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    long-to-int v6, v9

    invoke-virtual {p0, v3, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->notifyExecutionTime(II)V

    .line 305
    invoke-virtual {v2}, Lvm2/Varargs;->narg()I

    move-result v6

    if-lt v6, v1, :cond_82

    invoke-virtual {v2}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->isnil()Z

    move-result v4
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_57

    xor-int/2addr v4, v1

    goto :goto_82

    :catchall_57
    move-exception v6

    .line 307
    :try_start_58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(.["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "])"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->catchError(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_58 .. :try_end_7f} :catchall_80

    goto :goto_82

    :catchall_80
    move-exception p1

    goto :goto_8e

    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 312
    :cond_85
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 313
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-object v2

    .line 312
    :goto_8e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->afterInvoke()V

    .line 313
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 314
    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 390
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNotEmpty()Z
    .registers 2

    .line 394
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final notifyExecutionTime(II)V
    .registers 7

    const/16 v0, 0xa

    if-lt p2, v0, :cond_43

    .line 107
    iget-boolean v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->logExecutionTimes:Z

    if-eqz v0, :cond_43

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/Script;

    .line 109
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " took "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MethodCluster"

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionTimes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionCtrs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 114
    iget-wide v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->totalExecutionTime:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->totalExecutionTime:J

    .line 115
    sget p1, Linfo/flowersoft/theotown/scripting/MethodCluster;->ctr:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Linfo/flowersoft/theotown/scripting/MethodCluster;->ctr:I

    return-void
.end method

.method public setup()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->scripts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 87
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionTimes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 88
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/MethodCluster;->executionCtrs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method
