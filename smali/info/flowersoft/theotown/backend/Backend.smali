###### Class info.flowersoft.theotown.backend.Backend (info.flowersoft.theotown.backend.Backend)
.class public Linfo/flowersoft/theotown/backend/Backend;
.super Ljava/lang/Object;
.source "Backend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/backend/Backend$Task;,
        Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;,
        Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;,
        Linfo/flowersoft/theotown/backend/Backend$TaskValidator;
    }
.end annotation


# static fields
.field public static final ALWAYS_VALID:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

.field public static instance:Linfo/flowersoft/theotown/backend/Backend;


# instance fields
.field public final backendConnector:Linfo/flowersoft/theotown/backend/BackendConnector;

.field public cake:Ljava/lang/String;

.field public final currentSession:Linfo/flowersoft/theotown/backend/Session;

.field public final currentUser:Linfo/flowersoft/theotown/backend/User;

.field public logoutHint:Ljava/lang/String;

.field public paused:Z

.field public runTemporary:Z

.field public scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final scheduledTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/backend/Backend$Task;",
            ">;"
        }
    .end annotation
.end field

.field public final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/backend/Backend$Task;",
            ">;"
        }
    .end annotation
.end field

.field public final userStore:Linfo/flowersoft/theotown/backend/UserStore;

.field public final workerThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$btYdZ9YKwOPsL2ygrLu40k9G15A(Linfo/flowersoft/theotown/backend/Backend;)V
    .registers 1

    .line 86
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/Backend;->scheduleTasks()V

    return-void
.end method

.method public static synthetic $r8$lambda$yklM75snCOjG6R6Lf9a_53hkIP8(Linfo/flowersoft/theotown/backend/Backend$Task;)Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/backend/Backend;->ALWAYS_VALID:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/UserStore;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 12

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/backend/User;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/User;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    .line 78
    const-string v1, ""

    iput-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->backendConnector:Linfo/flowersoft/theotown/backend/BackendConnector;

    .line 82
    iput-object p2, p0, Linfo/flowersoft/theotown/backend/Backend;->userStore:Linfo/flowersoft/theotown/backend/UserStore;

    .line 83
    new-instance p1, Linfo/flowersoft/theotown/backend/Session;

    invoke-direct {p1, p3}, Linfo/flowersoft/theotown/backend/Session;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    const/4 p1, 0x1

    .line 85
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    new-instance v2, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/backend/Backend;)V

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    new-instance p3, Linfo/flowersoft/theotown/backend/Backend$1;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/backend/Backend$1;-><init>(Linfo/flowersoft/theotown/backend/Backend;)V

    iput-object p3, p0, Linfo/flowersoft/theotown/backend/Backend;->workerThread:Ljava/lang/Thread;

    .line 124
    invoke-virtual {p3, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 125
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 128
    invoke-interface {p2, v0}, Linfo/flowersoft/theotown/backend/UserStore;->restore(Linfo/flowersoft/theotown/backend/User;)V

    .line 129
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    new-instance p2, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/backend/Backend;)V

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->registerStateListener(Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/backend/Backend;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Linfo/flowersoft/theotown/backend/Backend;->paused:Z

    return p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/backend/Backend;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Linfo/flowersoft/theotown/backend/Backend;->runTemporary:Z

    return p0
.end method

.method public static synthetic access$1502(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->logoutHint:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/Session;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    return-object p0
.end method

.method public static synthetic access$1702(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend;->timeoutTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/User;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/backend/Backend;->abortTask(Linfo/flowersoft/theotown/backend/Backend$Task;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend;->runTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public static getDefaultBackendConnector()Linfo/flowersoft/theotown/backend/BackendConnector;
    .registers 6

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/backend/BackendConnector;

    const-string v1, "connection"

    .line 45
    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "api url"

    const-string v3, "https://api.theotown.com"

    .line 46
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    sget v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONI:Ljava/lang/String;

    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 50
    invoke-interface {v5}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/backend/BackendConnector;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/backend/Backend;
    .registers 1

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/backend/Backend;->instance:Linfo/flowersoft/theotown/backend/Backend;

    return-object v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 469
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 470
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 471
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/UserStore;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    const-class v0, Linfo/flowersoft/theotown/backend/Backend;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Linfo/flowersoft/theotown/backend/Backend;->instance:Linfo/flowersoft/theotown/backend/Backend;

    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->dispose()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_16

    .line 40
    :cond_d
    :goto_d
    new-instance v1, Linfo/flowersoft/theotown/backend/Backend;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/backend/Backend;-><init>(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/UserStore;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    sput-object v1, Linfo/flowersoft/theotown/backend/Backend;->instance:Linfo/flowersoft/theotown/backend/Backend;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b

    .line 41
    monitor-exit v0

    return-void

    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_b

    throw p0
.end method


# virtual methods
.method public final abortTask(Linfo/flowersoft/theotown/backend/Backend$Task;Ljava/lang/String;)V
    .registers 5

    .line 259
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 261
    :try_start_5
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 262
    const-string v1, "hint"

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p2

    .line 264
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    :goto_14
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1200(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;->receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V
    .registers 4

    .line 405
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    monitor-enter v0

    mul-int/lit16 p2, p2, 0x3e8

    .line 406
    :try_start_5
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1902(Linfo/flowersoft/theotown/backend/Backend$Task;I)I

    .line 407
    iget-object p2, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 6

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$202(Linfo/flowersoft/theotown/backend/Backend$Task;J)J

    .line 414
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$2000(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 416
    :goto_f
    :try_start_f
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    if-eqz v0, :cond_2e

    .line 417
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/backend/Backend$Task;

    invoke-static {v3}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$2000(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_2e

    :catchall_2c
    move-exception p1

    goto :goto_4c

    :cond_2e
    :goto_2e
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3d

    .line 418
    :cond_36
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 422
    :cond_40
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 424
    monitor-exit v1

    return-void

    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_2c

    throw p1
.end method

.method public dispose()V
    .registers 2

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public getCake()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    return-object v0
.end method

.method public getConnector()Linfo/flowersoft/theotown/backend/BackendConnector;
    .registers 2

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->backendConnector:Linfo/flowersoft/theotown/backend/BackendConnector;

    return-object v0
.end method

.method public getLogoutHint()Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->logoutHint:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewSessionTask()Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 8

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->toJson()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v3, "unset"

    if-ne v1, v2, :cond_15

    .line 321
    const-string v1, "android"

    goto :goto_44

    .line 322
    :cond_15
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_22

    .line 323
    const-string v1, "ios"

    goto :goto_44

    .line 325
    :cond_22
    const-string v1, "desktop"

    .line 327
    :try_start_24
    new-instance v2, Ljava/io/File;

    const-class v4, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catch Ljava/net/URISyntaxException; {:try_start_24 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_44
    const/4 v2, 0x0

    .line 334
    :try_start_45
    const-string v4, "os"

    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 335
    const-string v1, "path"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 336
    const-string v1, "model"

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 338
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v1, v3, :cond_71

    .line 339
    const-string v1, "steam_id"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v1, "steam_token"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_71

    :catch_6f
    move-exception v1

    goto :goto_90

    .line 344
    :cond_71
    :goto_71
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getUserIds()[J

    move-result-object v1

    .line 345
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move v4, v2

    .line 346
    :goto_7f
    array-length v5, v1

    if-ge v4, v5, :cond_8a

    .line 347
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(J)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 349
    :cond_8a
    const-string v1, "user_ids"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_8f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_45 .. :try_end_8f} :catch_6f

    goto :goto_93

    .line 351
    :goto_90
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 354
    :goto_93
    new-instance v1, Linfo/flowersoft/theotown/backend/Backend$Task;

    new-instance v3, Linfo/flowersoft/theotown/backend/Backend$8;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/backend/Backend$8;-><init>(Linfo/flowersoft/theotown/backend/Backend;)V

    const-string v4, "user/verify_fb.php"

    invoke-direct {v1, v4, v0, v3}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    .line 381
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/backend/Backend$Task;->setSecured(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    return-object v1
.end method

.method public getUser()Linfo/flowersoft/theotown/backend/User;
    .registers 2

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    return-object v0
.end method

.method public invalidateSession()V
    .registers 2

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Session;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    :cond_d
    return-void
.end method

.method public logout()V
    .registers 4

    .line 298
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->invalidateSocialConnection()V

    .line 299
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/backend/User;->setForumId(J)V

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->userStore:Linfo/flowersoft/theotown/backend/UserStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/backend/UserStore;->store(Linfo/flowersoft/theotown/backend/User;)V

    .line 302
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    return-void
.end method

.method public onForumLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/User;->setForumName(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/User;->setForumPw(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    .line 189
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object p2, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->setConnectedUser(Linfo/flowersoft/theotown/backend/User;)V

    .line 190
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend;->userStore:Linfo/flowersoft/theotown/backend/UserStore;

    iget-object p2, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/backend/UserStore;->store(Linfo/flowersoft/theotown/backend/User;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    .line 137
    :try_start_4
    iput-boolean v1, p0, Linfo/flowersoft/theotown/backend/Backend;->paused:Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onResume()V
    .registers 3

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 143
    :try_start_4
    iput-boolean v1, p0, Linfo/flowersoft/theotown/backend/Backend;->paused:Z

    .line 144
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final runSecuredTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 9

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->backendConnector:Linfo/flowersoft/theotown/backend/BackendConnector;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$300(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1400(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;-><init>(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V

    iget-object v4, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    iget-object v5, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    iget-object v6, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendSecureRequest(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/backend/User;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Session;)V

    return-void
.end method

.method public final runTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 5

    .line 270
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1300(Linfo/flowersoft/theotown/backend/Backend$Task;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->currentSession:Linfo/flowersoft/theotown/backend/Session;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Session;->isValid()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 272
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Backend"

    const-string v2, "Initiate new session"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    monitor-enter v0

    .line 274
    :try_start_1a
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->tasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 275
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_29

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/Backend;->getNewSessionTask()Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend;->runUnsecuredTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void

    :catchall_29
    move-exception p1

    .line 275
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1

    .line 278
    :cond_2c
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend;->runSecuredTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void

    .line 281
    :cond_30
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend;->runUnsecuredTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public final runUnsecuredTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 7

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->backendConnector:Linfo/flowersoft/theotown/backend/BackendConnector;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$300(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1400(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Backend;->cake:Ljava/lang/String;

    new-instance v4, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;-><init>(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public saveUser()V
    .registers 3

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->userStore:Linfo/flowersoft/theotown/backend/UserStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend;->currentUser:Linfo/flowersoft/theotown/backend/User;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/backend/UserStore;->store(Linfo/flowersoft/theotown/backend/User;)V

    return-void
.end method

.method public final scheduleTasks()V
    .registers 10

    .line 390
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-boolean v1, p0, Linfo/flowersoft/theotown/backend/Backend;->paused:Z

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    goto :goto_3a

    .line 392
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 393
    :goto_10
    iget-object v4, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 394
    iget-object v4, p0, Linfo/flowersoft/theotown/backend/Backend;->scheduledTasks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/backend/Backend$Task;

    .line 395
    invoke-static {v4}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1800(Linfo/flowersoft/theotown/backend/Backend$Task;)J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-static {v4}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1900(Linfo/flowersoft/theotown/backend/Backend$Task;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_35

    .line 396
    invoke-static {v4, v1, v2}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1802(Linfo/flowersoft/theotown/backend/Backend$Task;J)J

    .line 397
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 400
    :cond_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_9

    throw v1
.end method

.method public setRunTemporary(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Linfo/flowersoft/theotown/backend/Backend;->runTemporary:Z

    return-void
.end method

.method public final timeoutTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 3

    .line 255
    const-string v0, "timeout"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->abortTask(Linfo/flowersoft/theotown/backend/Backend$Task;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.Backend.AnonymousClass1 (info.flowersoft.theotown.backend.Backend$1)
.class public Linfo/flowersoft/theotown/backend/Backend$1;
.super Ljava/lang/Thread;
.source "Backend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/Backend;-><init>(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/UserStore;Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/Backend;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/Backend;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_ce

    .line 95
    :goto_d
    :try_start_d
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_d

    :catchall_23
    move-exception v1

    goto/16 :goto_cc

    .line 97
    :cond_26
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_41

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/backend/Backend$Task;

    goto :goto_42

    :cond_41
    move-object v1, v2

    .line 100
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_23

    .line 102
    :try_start_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v1, :cond_82

    .line 103
    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$100(Linfo/flowersoft/theotown/backend/Backend$Task;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_82

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$200(Linfo/flowersoft/theotown/backend/Backend$Task;)J

    move-result-wide v5

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$100(Linfo/flowersoft/theotown/backend/Backend$Task;)J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_82

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "Backend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$300(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->access$400(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V

    move-object v1, v2

    :cond_82
    if-eqz v1, :cond_a8

    .line 109
    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$500(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

    move-result-object v0

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/backend/Backend$TaskValidator;->isValid(Linfo/flowersoft/theotown/backend/Backend$Task;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-static {v1}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$600(Linfo/flowersoft/theotown/backend/Backend$Task;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->access$700(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isSocialConnectable()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 110
    :cond_a0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    const-string v3, "invalid request"

    invoke-static {v0, v1, v3}, Linfo/flowersoft/theotown/backend/Backend;->access$800(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;Ljava/lang/String;)V

    goto :goto_a9

    :cond_a8
    move-object v2, v1

    :goto_a9
    if-eqz v2, :cond_b0

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/backend/Backend;->access$900(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 118
    :cond_b0
    :goto_b0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->access$1000(Linfo/flowersoft/theotown/backend/Backend;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$1;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->access$1100(Linfo/flowersoft/theotown/backend/Backend;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_cb} :catch_ce

    goto :goto_b0

    .line 100
    :goto_cc
    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_23

    :try_start_cd
    throw v1
    :try_end_ce
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_ce} :catch_ce

    :catch_ce
    :cond_ce
    return-void
.end method

###### Class info.flowersoft.theotown.backend.Backend.AnonymousClass8 (info.flowersoft.theotown.backend.Backend$8)
.class public Linfo/flowersoft/theotown/backend/Backend$8;
.super Ljava/lang/Object;
.source "Backend.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/Backend;->getNewSessionTask()Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/Backend;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/Backend;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7

    .line 357
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 358
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_56

    .line 359
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->access$1502(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->access$700(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/User;->fromJson(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 361
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->access$1600(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/Session;

    move-result-object p1

    const-string v0, "session"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Session;->fromJson(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 362
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->saveUser()V

    .line 363
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->access$700(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->notifyLogin(J)V

    .line 364
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    const-string v0, "cake"

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/backend/Backend;->access$1702(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 366
    :cond_56
    const-string v0, "invalid cred"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->logout()V

    .line 368
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    const-string v1, "hint"

    invoke-virtual {p2, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/backend/Backend;->access$1502(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 371
    :cond_6f
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$8;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/backend/Backend;->access$1702(Linfo/flowersoft/theotown/backend/Backend;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not initiate session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Backend"

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x1388

    .line 374
    :try_start_8e
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception p1

    .line 376
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.Backend.ResponseHandlerAdapter (info.flowersoft.theotown.backend.Backend$ResponseHandlerAdapter)
.class public Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;
.super Ljava/lang/Object;
.source "Backend.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseHandlerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final task:Linfo/flowersoft/theotown/backend/Backend$Task;

.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/Backend;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/Backend;Linfo/flowersoft/theotown/backend/Backend$Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p2, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->task:Linfo/flowersoft/theotown/backend/Backend$Task;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 5

    .line 457
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 458
    const-string v1, "status"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 459
    const-string v1, "extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 460
    const-string v1, "hint"

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 461
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_21
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 444
    const-string v0, "status"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->task:Linfo/flowersoft/theotown/backend/Backend$Task;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1300(Linfo/flowersoft/theotown/backend/Backend$Task;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 445
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->access$1600(Linfo/flowersoft/theotown/backend/Backend;)Linfo/flowersoft/theotown/backend/Session;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    .line 446
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 447
    :try_start_26
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->this$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->access$000(Linfo/flowersoft/theotown/backend/Backend;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->task:Linfo/flowersoft/theotown/backend/Backend$Task;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 448
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw p1

    .line 450
    :cond_37
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->task:Linfo/flowersoft/theotown/backend/Backend$Task;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend$Task;->access$1200(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->task:Linfo/flowersoft/theotown/backend/Backend$Task;

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;->receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 435
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/Backend$ResponseHandlerAdapter;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.Backend.Task (info.flowersoft.theotown.backend.Backend$Task)
.class public Linfo/flowersoft/theotown/backend/Backend$Task;
.super Ljava/lang/Object;
.source "Backend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public final data:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public id:Ljava/lang/String;

.field public initTime:J

.field public lastScheduled:J

.field public final responseHandler:Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;

.field public scheduleInterval:I

.field public final script:Ljava/lang/String;

.field public secured:Z

.field public timeout:J

.field public userbound:Z

.field public validator:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V
    .registers 4

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->script:Ljava/lang/String;

    .line 490
    iput-object p2, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->data:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 491
    iput-object p3, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->responseHandler:Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;

    const/4 p1, 0x1

    .line 492
    iput-boolean p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->secured:Z

    .line 493
    iput-boolean p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->userbound:Z

    .line 494
    sget-object p1, Linfo/flowersoft/theotown/backend/Backend;->ALWAYS_VALID:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->validator:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

    const-wide/16 p1, 0x2710

    .line 495
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->timeout:J

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/backend/Backend$Task;)J
    .registers 3

    .line 474
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->timeout:J

    return-wide v0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;
    .registers 1

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->responseHandler:Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/backend/Backend$Task;)Z
    .registers 1

    .line 474
    iget-boolean p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->secured:Z

    return p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->data:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/backend/Backend$Task;)J
    .registers 3

    .line 474
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->lastScheduled:J

    return-wide v0
.end method

.method public static synthetic access$1802(Linfo/flowersoft/theotown/backend/Backend$Task;J)J
    .registers 3

    .line 474
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->lastScheduled:J

    return-wide p1
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/backend/Backend$Task;)I
    .registers 1

    .line 474
    iget p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->scheduleInterval:I

    return p0
.end method

.method public static synthetic access$1902(Linfo/flowersoft/theotown/backend/Backend$Task;I)I
    .registers 2

    .line 474
    iput p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->scheduleInterval:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/backend/Backend$Task;)J
    .registers 3

    .line 474
    iget-wide v0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->initTime:J

    return-wide v0
.end method

.method public static synthetic access$2000(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;
    .registers 1

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/backend/Backend$Task;J)J
    .registers 3

    .line 474
    iput-wide p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->initTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/backend/Backend$Task;)Ljava/lang/String;
    .registers 1

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->script:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/backend/Backend$Task;)Linfo/flowersoft/theotown/backend/Backend$TaskValidator;
    .registers 1

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->validator:Linfo/flowersoft/theotown/backend/Backend$TaskValidator;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/backend/Backend$Task;)Z
    .registers 1

    .line 474
    iget-boolean p0, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->userbound:Z

    return p0
.end method


# virtual methods
.method public setSecured(Z)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 2

    .line 509
    iput-boolean p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->secured:Z

    return-object p0
.end method

.method public setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 2

    .line 514
    iput-boolean p1, p0, Linfo/flowersoft/theotown/backend/Backend$Task;->userbound:Z

    return-object p0
.end method

###### Class info.flowersoft.theotown.backend.Backend.TaskResponseHandler (info.flowersoft.theotown.backend.Backend$TaskResponseHandler)
.class public interface abstract Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;
.super Ljava/lang/Object;
.source "Backend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskResponseHandler"
.end annotation


# virtual methods
.method public abstract receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end method

###### Class info.flowersoft.theotown.backend.Backend.TaskValidator (info.flowersoft.theotown.backend.Backend$TaskValidator)
.class public interface abstract Linfo/flowersoft/theotown/backend/Backend$TaskValidator;
.super Ljava/lang/Object;
.source "Backend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskValidator"
.end annotation


# virtual methods
.method public abstract isValid(Linfo/flowersoft/theotown/backend/Backend$Task;)Z
.end method

###### Class info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda0 (info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskValidator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Linfo/flowersoft/theotown/backend/Backend$Task;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/Backend;->$r8$lambda$yklM75snCOjG6R6Lf9a_53hkIP8(Linfo/flowersoft/theotown/backend/Backend$Task;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda1 (info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/backend/Backend;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/backend/Backend;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/backend/Backend;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/backend/Backend;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/Backend;->$r8$lambda$btYdZ9YKwOPsL2ygrLu40k9G15A(Linfo/flowersoft/theotown/backend/Backend;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda2 (info.flowersoft.theotown.backend.Backend$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/backend/Backend;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/backend/Backend;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Backend$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/backend/Backend;

    return-void
.end method
