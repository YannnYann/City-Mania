###### Class info.flowersoft.theotown.resources.TaskManager (info.flowersoft.theotown.resources.TaskManager)
.class public final Linfo/flowersoft/theotown/resources/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/TaskManager$Task;
    }
.end annotation


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/TaskManager;


# instance fields
.field public final TASK_ACCOUNT_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_CHOSE_SHADER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_CREATED_REGION:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_GALLERY_UPLOAD_AGREEMENT:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_H76:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_ONLINE_REGIONS:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_OPEN_SCENARIOS_LIST:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_OPEN_STORE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_PRIVACY_POLICY_REVIEW:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_REACH_RANK:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_REGION_UPLOAD_DELETION_NOTICE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_SPECIAL_OFFER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_STORE_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_STORE_PLUGIN_QUALITY_WARNING:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final TASK_TOOL_SLIDE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public isSetUp:Z

.field public ssp:Linfo/flowersoft/theotown/util/SSP;

.field public final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/TaskManager$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->tasks:Ljava/util/List;

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "reach rank"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_REACH_RANK:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "rate"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "chose shader"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->alwaysCompleted()Linfo/flowersoft/theotown/resources/TaskManager$Task;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_CHOSE_SHADER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "special_offer00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_SPECIAL_OFFER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "tool slide action"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_TOOL_SLIDE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "gallery upload agreement2"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_GALLERY_UPLOAD_AGREEMENT:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "privacy"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v3, "task name"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_PRIVACY_POLICY_REVIEW:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "open store"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_OPEN_STORE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "store disclaimer"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_STORE_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "account disclaimer"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_ACCOUNT_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "region created"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_CREATED_REGION:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 33
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "task h76"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_H76:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "online regions3"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_ONLINE_REGIONS:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "store plugin quality warning"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_STORE_PLUGIN_QUALITY_WARNING:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "region upload deletion notice"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_REGION_UPLOAD_DELETION_NOTICE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-string v1, "open scenario list"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_OPEN_SCENARIOS_LIST:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->isSetUp:Z

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/resources/TaskManager;)Ljava/util/List;
    .registers 1

    .line 12
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->tasks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/resources/TaskManager;)V
    .registers 1

    .line 12
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TaskManager;->save()V

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 60
    sput-object v0, Linfo/flowersoft/theotown/resources/TaskManager;->instance:Linfo/flowersoft/theotown/resources/TaskManager;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/TaskManager;
    .registers 1

    .line 139
    sget-object v0, Linfo/flowersoft/theotown/resources/TaskManager;->instance:Linfo/flowersoft/theotown/resources/TaskManager;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Linfo/flowersoft/theotown/resources/TaskManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/TaskManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/TaskManager;->instance:Linfo/flowersoft/theotown/resources/TaskManager;

    .line 142
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/TaskManager;->instance:Linfo/flowersoft/theotown/resources/TaskManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init()V
    .registers 9

    monitor-enter p0

    .line 44
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->isSetUp:Z

    if-nez v0, :cond_72

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->isSetUp:Z

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.tasks"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 50
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 52
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 53
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$102(Linfo/flowersoft/theotown/resources/TaskManager$Task;Z)Z

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$302(Linfo/flowersoft/theotown/resources/TaskManager$Task;J)J

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".completeuntil"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$402(Linfo/flowersoft/theotown/resources/TaskManager$Task;J)J
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6e

    goto :goto_1b

    :catchall_6e
    move-exception v0

    goto :goto_7a

    .line 57
    :cond_70
    monitor-exit p0

    return-void

    .line 45
    :cond_72
    :try_start_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to re-setup tasks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :goto_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_6e

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$102(Linfo/flowersoft/theotown/resources/TaskManager$Task;Z)Z

    goto :goto_7

    :catchall_18
    move-exception v0

    goto :goto_1f

    .line 78
    :cond_1a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TaskManager;->save()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_18

    .line 79
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_18

    throw v0
.end method

.method public final declared-synchronized save()V
    .registers 7

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 68
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$100(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Linfo/flowersoft/theotown/util/SSP$Writer;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$300(Linfo/flowersoft/theotown/resources/TaskManager$Task;)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".completeuntil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->access$400(Linfo/flowersoft/theotown/resources/TaskManager$Task;)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :catchall_5d
    move-exception v0

    goto :goto_64

    .line 73
    :cond_5f
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_5d

    .line 74
    monitor-exit p0

    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_5d

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.TaskManager.AnonymousClass1 (info.flowersoft.theotown.resources.TaskManager$1)
.class public synthetic Linfo/flowersoft/theotown/resources/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.resources.TaskManager.Task (info.flowersoft.theotown.resources.TaskManager$Task)
.class public Linfo/flowersoft/theotown/resources/TaskManager$Task;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field public alwaysCompleted:Z

.field public completeUntilTimestamp:J

.field public completed:Z

.field public completionTimestamp:J

.field public final id:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/TaskManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->this$0:Linfo/flowersoft/theotown/resources/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->id:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/TaskManager;->access$500(Linfo/flowersoft/theotown/resources/TaskManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;Linfo/flowersoft/theotown/resources/TaskManager$1;)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;-><init>(Linfo/flowersoft/theotown/resources/TaskManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/resources/TaskManager$Task;Z)Z
    .registers 2

    .line 81
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/TaskManager$Task;)Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/resources/TaskManager$Task;)J
    .registers 3

    .line 81
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completionTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/resources/TaskManager$Task;J)J
    .registers 3

    .line 81
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completionTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/resources/TaskManager$Task;)J
    .registers 3

    .line 81
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeUntilTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/resources/TaskManager$Task;J)J
    .registers 3

    .line 81
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeUntilTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public alwaysCompleted()Linfo/flowersoft/theotown/resources/TaskManager$Task;
    .registers 2

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->alwaysCompleted:Z

    return-object p0
.end method

.method public complete()V
    .registers 3

    .line 118
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    .line 123
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completionTimestamp:J

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->this$0:Linfo/flowersoft/theotown/resources/TaskManager;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/TaskManager;->access$600(Linfo/flowersoft/theotown/resources/TaskManager;)V

    return-void
.end method

.method public completeForSeconds(J)V
    .registers 7

    .line 128
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    if-eqz v0, :cond_5

    return-void

    .line 132
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeUntilTimestamp:J

    .line 133
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completionTimestamp:J

    .line 134
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->this$0:Linfo/flowersoft/theotown/resources/TaskManager;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/TaskManager;->access$600(Linfo/flowersoft/theotown/resources/TaskManager;)V

    return-void
.end method

.method public isCompleted()Z
    .registers 8

    .line 108
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_23

    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->alwaysCompleted:Z

    if-eqz v0, :cond_a

    goto :goto_23

    .line 110
    :cond_a
    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completionTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 111
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeUntilTimestamp:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_22

    return v1

    :cond_22
    return v2

    :cond_23
    :goto_23
    return v1
.end method
