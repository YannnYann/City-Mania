###### Class info.flowersoft.theotown.store.ManagedPluginsController (info.flowersoft.theotown.store.ManagedPluginsController)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;
    }
.end annotation


# static fields
.field public static final EMPTY_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "[B>;"
        }
    .end annotation
.end field

.field public static instance:Linfo/flowersoft/theotown/store/ManagedPluginsController;


# instance fields
.field public GET_FILE_URL:Ljava/lang/String;

.field public GET_PLUGIN_URL:Ljava/lang/String;

.field public final GET_RATINGS_URL:Ljava/lang/String;

.field public final PLUGIN_KEY:Ljava/lang/String;

.field public final PREF_KEY:Ljava/lang/String;

.field public final STORE_URL:Ljava/lang/String;

.field public final acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

.field public final acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

.field public application:Lcom/badlogic/gdx/Application;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final deletedPlugins:Lio/blueflower/stapel2d/util/IntList;

.field public final downloadedPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
            ">;"
        }
    .end annotation
.end field

.field public final extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

.field public final fetchWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public final internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

.field public lastUpdateCheckMs:J

.field public final lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

.field public final notificationWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;",
            ">;"
        }
    .end annotation
.end field

.field public final ratingWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public final ratings:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final reportedComments:Lio/blueflower/stapel2d/util/IntList;

.field public final reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

.field public final ssp:Linfo/flowersoft/theotown/util/SSP;

.field public final updateWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$H9MchlbXEkPLGLyY0oc9cmcAbBI(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V
    .registers 3

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    .line 357
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 358
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V

    return-void
.end method

.method public static synthetic $r8$lambda$VBl7VKyWf9jJ4oOjUN9u5UC-vh8(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V
    .registers 3

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    .line 374
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 375
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V

    return-void
.end method

.method public static synthetic $r8$lambda$feycE7lf1pBpGpgHN1UXWtDTGDk(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIJLjava/lang/Integer;)V
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-float p6, p6

    const-wide/16 v0, 0x1

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    long-to-float p4, p4

    div-float v4, p6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->setUpdateProgress(IIIFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ojhmaxr99_QLGZWpI6op3bIr7vA(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;[Linfo/flowersoft/theotown/util/json/JSONException;III)V
    .registers 16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    if-ge p4, p5, :cond_d9

    .line 571
    :try_start_5
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p3

    .line 572
    const-string v0, "file"

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    const-string v1, "plugin id"

    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 574
    const-string v2, "revision id"

    invoke-virtual {p3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 575
    const-string v3, "version"

    invoke-virtual {p3, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 576
    const-string v4, "hash"

    invoke-virtual {p3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    const-string v5, "size"

    invoke-virtual {p3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 578
    const-string v6, "active"

    invoke-virtual {p3, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 579
    const-string v7, "first downloaded"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 582
    iget-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter p3
    :try_end_3e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_3e} :catch_ac

    .line 583
    :try_start_3e
    iget-object v9, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v9

    .line 584
    monitor-exit p3
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_d3

    if-nez v9, :cond_b5

    .line 588
    :try_start_47
    new-instance p3, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedPluginsDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {p3, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 590
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-direct {v0, p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;-><init>(Ljava/io/File;)V

    .line 591
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p3

    if-ne p3, v1, :cond_cf

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result p3

    if-ne p3, v2, :cond_cf

    .line 592
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result p3

    if-ne p3, v3, :cond_cf

    .line 593
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getHash()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cf

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFileSize()J

    move-result-wide v1

    int-to-long v3, v5

    cmp-long p3, v1, v3

    if-nez p3, :cond_cf

    .line 594
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result p3

    if-eqz p3, :cond_cf

    .line 595
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    .line 596
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result p3

    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastVersion(I)V

    .line 597
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastActive(Z)V

    .line 598
    invoke-virtual {v0, v7, v8}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setFirstDownloaded(J)V

    .line 599
    iget-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter p3
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_99} :catch_ae
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_47 .. :try_end_99} :catch_ac

    .line 600
    :try_start_99
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    monitor-exit p3

    goto :goto_cf

    :catchall_a9
    move-exception v0

    monitor-exit p3
    :try_end_ab
    .catchall {:try_start_99 .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ac} :catch_ae
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_ab .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p0

    goto :goto_d6

    :catch_ae
    move-exception p3

    .line 606
    :try_start_af
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    goto :goto_cf

    .line 609
    :cond_b5
    sget-object p3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Plugin Store"

    const-string v2, "Duplicate plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v2, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_af .. :try_end_cf} :catch_ac

    :cond_cf
    :goto_cf
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_3

    :catchall_d3
    move-exception p0

    .line 584
    :try_start_d4
    monitor-exit p3
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    :try_start_d5
    throw p0
    :try_end_d6
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_d5 .. :try_end_d6} :catch_ac

    :goto_d6
    const/4 p1, 0x0

    .line 612
    aput-object p0, p2, p1

    :cond_d9
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->EMPTY_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "store"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 61
    const-string v1, "info.flowersoft.theotown.theotown.store"

    iput-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PREF_KEY:Ljava/lang/String;

    .line 62
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v2, :cond_16

    const-string v2, "8k40uUprem_"

    goto :goto_18

    :cond_16
    const-string v2, "8k40uUNL1G_"

    :goto_18
    iput-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PLUGIN_KEY:Ljava/lang/String;

    .line 63
    const-string v2, "base url"

    const-string v3, "https://api.theotown.com/store/store?"

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    .line 64
    const-string v2, "get ratings url"

    const-string v3, "https://api.theotown.com/store/get_ratings?"

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_RATINGS_URL:Ljava/lang/String;

    .line 69
    const-string v2, "get file url"

    const-string v3, "https://data.theotown.com/get_file?t=pf&"

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_FILE_URL:Ljava/lang/String;

    .line 70
    const-string v2, "get plugin url"

    const-string v3, "https://api.theotown.com/store/get_plugin?"

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_PLUGIN_URL:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 72
    iput-wide v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lastUpdateCheckMs:J

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 141
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    .line 142
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    .line 143
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    .line 144
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    .line 148
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->deletedPlugins:Lio/blueflower/stapel2d/util/IntList;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 150
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchWorkers:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->notificationWorkers:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratingWorkers:Ljava/util/List;

    .line 159
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$4;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/store/ManagedPluginsController;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_FILE_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_FILE_URL:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/store/ManagedPluginsController;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_PLUGIN_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_PLUGIN_URL:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->handleRatingsResult(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->checkNewVersions(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/store/ManagedPluginsController;[BIIILjava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual/range {p0 .. p7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->handleDownloadedPlugin([BIIILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIFLjava/lang/String;)V
    .registers 6

    .line 57
    invoke-virtual/range {p0 .. p5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->setUpdateProgress(IIIFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/util/List;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;
    .registers 1

    .line 1076
    sget-object v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->instance:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    if-nez v0, :cond_b

    .line 1077
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-direct {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->instance:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    .line 1079
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->instance:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    return-object v0
.end method

.method public static getSuccessJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "[B>;"
        }
    .end annotation

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;

    invoke-direct {v0, p1, p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;-><init>(Ljava/lang/Runnable;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-object v0
.end method

.method public static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 915
    const-string v0, "[^a-zA-Z0-9-_]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toInt(Z)I
    .registers 1

    .line 0
    return p0
.end method


# virtual methods
.method public declared-synchronized acquireAndNotifyPlugin(IIII)V
    .registers 14

    monitor-enter p0

    .line 330
    :try_start_1
    iget-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p2

    if-nez p2, :cond_95

    .line 331
    iget-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 332
    iget-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 333
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PLUGIN_KEY:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->purchaseRaw(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 335
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "mode=acquire&id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&p="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->generateKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&access="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&d="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/store/ManagedPluginsController;->EMPTY_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->notificationWorkers:Ljava/util/List;
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_92

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 336
    :try_start_8b
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_96

    :catchall_8f
    move-exception v0

    :goto_90
    move-object p1, v0

    goto :goto_98

    :catchall_92
    move-exception v0

    move-object v1, p0

    goto :goto_90

    :cond_95
    move-object v1, p0

    .line 344
    :goto_96
    monitor-exit p0

    return-void

    :goto_98
    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_8f

    throw p1
.end method

.method public declared-synchronized acquirePlugin(I)V
    .registers 5

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 322
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 323
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PLUGIN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->purchaseRaw(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 325
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_3a

    .line 327
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_36

    throw p1
.end method

.method public declared-synchronized addLocalPlugins(ZZZ)V
    .registers 11

    monitor-enter p0

    .line 700
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ManagedPluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add local plugins, acquisition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedPluginsDir()Ljava/io/File;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_57

    if-eqz v1, :cond_65

    .line 705
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 707
    array-length v1, v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_61
    .catchall {:try_start_2a .. :try_end_31} :catchall_57

    move v3, v2

    :goto_32
    if-ge v2, v1, :cond_5f

    :try_start_34
    aget-object v4, v0, v2

    .line 708
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mpf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 709
    invoke-virtual {p0, v4, p1, p2, p3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->addPluginFromFile(Ljava/io/File;ZZZ)Z

    move-result v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_59
    .catchall {:try_start_34 .. :try_end_52} :catchall_57

    if-eqz v4, :cond_5c

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :catchall_57
    move-exception p1

    goto :goto_89

    :catch_59
    move-exception p1

    move v2, v3

    goto :goto_62

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_5f
    move v2, v3

    goto :goto_65

    :catch_61
    move-exception p1

    .line 715
    :goto_62
    :try_start_62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 719
    :cond_65
    :goto_65
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "ManagedPluginController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " local plugins"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_87

    .line 721
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_57

    .line 723
    :cond_87
    monitor-exit p0

    return-void

    :goto_89
    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_57

    throw p1
.end method

.method public final addPluginFromFile(Ljava/io/File;ZZZ)Z
    .registers 9

    .line 670
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(Ljava/io/File;)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8c

    .line 673
    :try_start_7
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;-><init>(Ljava/io/File;)V

    .line 674
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v2

    if-nez v2, :cond_66

    .line 675
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result v2

    if-nez v2, :cond_32

    if-eqz p2, :cond_32

    .line 676
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquirePlugin(I)V

    goto :goto_32

    :catch_30
    move-exception p2

    goto :goto_82

    .line 678
    :cond_32
    :goto_32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result p2

    if-nez p2, :cond_3e

    if-nez p3, :cond_8c

    :cond_3e
    const/4 p2, 0x1

    .line 679
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    .line 680
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result p3

    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastVersion(I)V

    .line 681
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastActive(Z)V

    .line 682
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setFirstDownloaded(J)V

    .line 683
    iget-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v2

    invoke-virtual {p3, v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return p2

    .line 687
    :cond_66
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result p2

    if-nez p2, :cond_7c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result p2

    if-nez p2, :cond_8c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p2

    if-eqz p2, :cond_8c

    :cond_7c
    if-eqz p4, :cond_8c

    .line 688
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_81} :catch_30

    return v1

    :goto_82
    if-eqz p4, :cond_87

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 693
    :cond_87
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    :cond_8c
    return v1
.end method

.method public final buildIdListArg(Lio/blueflower/stapel2d/util/IntList;Z)Ljava/lang/String;
    .registers 10

    .line 432
    const-string v0, ""

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-lez v1, :cond_87

    .line 433
    const-string v1, "&ids="

    if-eqz p2, :cond_71

    .line 434
    new-instance p2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p2, p1}, Lio/blueflower/stapel2d/util/IntList;-><init>(Lio/blueflower/stapel2d/util/IntList;)V

    .line 435
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->sort()V

    .line 436
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    :try_start_1b
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    move v4, v3

    .line 439
    :goto_27
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 440
    invoke-virtual {p2, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    if-lez v4, :cond_3c

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    goto :goto_3d

    :catch_3a
    move-exception p1

    goto :goto_6d

    :cond_3c
    move v6, v3

    :goto_3d
    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 442
    :cond_44
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 443
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 443
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&idsv=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6c} :catch_3a

    goto :goto_70

    .line 446
    :goto_6d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_70
    return-object v0

    .line 449
    :cond_71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_87
    return-object v0
.end method

.method public final declared-synchronized checkForUpdates()V
    .registers 11

    monitor-enter p0

    .line 863
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lastUpdateCheckMs:J

    .line 865
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v1, 0x0

    .line 866
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 867
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 868
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catchall_27
    move-exception v0

    move-object v2, p0

    goto :goto_6e

    :cond_2a
    const/4 v1, 0x1

    .line 870
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->buildIdListArg(Lio/blueflower/stapel2d/util/IntList;Z)Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mode=updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&d="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V

    iget-object v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers:Ljava/util/List;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_27

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 872
    :try_start_68
    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6d

    .line 892
    monitor-exit p0

    return-void

    :catchall_6d
    move-exception v0

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method public final declared-synchronized checkNewVersions(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 13

    monitor-enter p0

    const/4 v0, 0x0

    .line 895
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 896
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 898
    const-string v2, "plugin_id"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 899
    const-string v2, "revision_id"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 900
    const-string v2, "version"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 901
    const-string v2, "title"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 902
    const-string v2, "size"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 903
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_8f

    if-eqz v2, :cond_7c

    .line 905
    :try_start_32
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "MPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v10

    if-ge v10, v6, :cond_70

    const-string v10, "NEW VERSION AVAILABLE"

    goto :goto_72

    :catchall_6c
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_99

    :cond_70
    const-string v10, ""

    :goto_72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_6c

    :cond_7c
    if-eqz v2, :cond_8d

    .line 907
    :try_start_7e
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v2
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_8f

    if-ge v2, v6, :cond_8d

    int-to-long v8, v1

    move-object v3, p0

    .line 908
    :try_start_86
    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadPlugin(IIILjava/lang/String;J)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_92

    :catchall_8a
    move-exception v0

    :goto_8b
    move-object p1, v0

    goto :goto_99

    :cond_8d
    move-object v3, p0

    goto :goto_92

    :catchall_8f
    move-exception v0

    move-object v3, p0

    goto :goto_8b

    :goto_92
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_96
    move-object v3, p0

    .line 912
    monitor-exit p0

    return-void

    :goto_99
    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_8a

    throw p1
.end method

.method public declared-synchronized clearReportedPlugins()V
    .registers 2

    monitor-enter p0

    .line 299
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 300
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized countAcquiredPlugins()I
    .registers 2

    monitor-enter p0

    .line 817
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized countActivePlugins()I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 800
    :goto_3
    :try_start_3
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 801
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    if-eqz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_1e
    move-exception v0

    goto :goto_22

    .line 805
    :cond_20
    monitor-exit p0

    return v1

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw v0
.end method

.method public declared-synchronized countDownloadedPlugins()I
    .registers 2

    monitor-enter p0

    .line 809
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized countInternalPlugins()I
    .registers 2

    monitor-enter p0

    .line 813
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized deletePlugin(I)V
    .registers 4

    monitor-enter p0

    .line 307
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 308
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloading(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 309
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->deletedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 312
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    .line 313
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 314
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 315
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_37

    .line 317
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_33

    throw p1
.end method

.method public declared-synchronized disableRecentPlugins()I
    .registers 6

    monitor-enter p0

    .line 1010
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1011
    :goto_8
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1012
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 1013
    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1014
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :catchall_28
    move-exception v0

    goto :goto_53

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1019
    :cond_2d
    new-instance v2, Linfo/flowersoft/theotown/store/ManagedPluginsController$8;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$8;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1027
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_40
    if-ge v3, v2, :cond_4e

    .line 1029
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 1033
    :cond_4e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_28

    .line 1035
    monitor-exit p0

    return v2

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_28

    throw v0
.end method

.method public dispose()V
    .registers 3

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->application:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    const/4 v0, 0x0

    .line 189
    sput-object v0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->instance:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    return-void
.end method

.method public final declared-synchronized download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "[B>;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;ZZZ)V"
        }
    .end annotation

    monitor-enter p0

    .line 1086
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v5, p3

    move-object v7, p4

    move v3, p6

    move v4, p7

    :try_start_a
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;ZZLio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/util/List;)V

    if-eqz p5, :cond_28

    const/4 p1, 0x0

    .line 1154
    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_25

    .line 1155
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :catchall_22
    move-exception v0

    :goto_23
    move-object p1, v0

    goto :goto_33

    .line 1157
    :cond_25
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1160
    :cond_28
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers(Ljava/util/List;)V
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_22

    .line 1162
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    move-object v1, p0

    goto :goto_23

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_22

    throw p1
.end method

.method public declared-synchronized downloadPlugin(IIILjava/lang/String;J)V
    .registers 16

    monitor-enter p0

    .line 919
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloading(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_9

    .line 920
    monitor-exit p0

    return-void

    .line 922
    :cond_9
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 923
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    if-lt v0, p3, :cond_1a

    .line 924
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto/16 :goto_7c

    :cond_1a
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 927
    :try_start_20
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->setUpdateProgress(IIIFLjava/lang/String;)V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_PLUGIN_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&d="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIILjava/lang/String;J)V

    move-object v7, v0

    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIJ)V

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers:Ljava/util/List;

    move-object v3, v7

    const/4 v7, 0x0

    move-object v2, v8

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    .line 928
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_7a
    .catchall {:try_start_20 .. :try_end_7a} :catchall_17

    .line 947
    monitor-exit p0

    return-void

    :goto_7c
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_17

    throw v0
.end method

.method public duringUpdates(Ljava/lang/Runnable;)V
    .registers 4

    .line 1057
    monitor-enter p0

    .line 1058
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1059
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1d

    if-nez v0, :cond_14

    const-wide/16 v0, 0x7d0

    .line 1062
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 1064
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1067
    :cond_14
    :goto_14
    monitor-enter p0

    .line 1068
    :try_start_15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1069
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw p1

    :catchall_1d
    move-exception p1

    .line 1059
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final extractInternalPlugins()V
    .registers 11

    .line 622
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    sget-object v1, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    const-string v2, "plugins.lby"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 623
    :goto_f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_af

    .line 624
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 625
    const-string v4, "permanent"

    invoke-virtual {v3, v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 626
    const-string v5, "id"

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 627
    iget-object v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 628
    const-string v6, "target"

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 629
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 630
    new-instance v7, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedPluginsDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "final target"

    invoke-virtual {v3, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 632
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 633
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquirePlugin(I)V

    goto :goto_5b

    :catch_59
    move-exception v0

    goto :goto_b3

    .line 635
    :cond_5b
    :goto_5b
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_65

    if-eqz v4, :cond_9c

    .line 636
    :cond_65
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloading(I)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 637
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-static {v3, v7}, Linfo/flowersoft/theotown/util/Files;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/io/File;)Z

    .line 638
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 639
    invoke-virtual {p0, v7, v1, v1, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->addPluginFromFile(Ljava/io/File;ZZZ)Z

    .line 642
    :cond_8f
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v3

    if-nez v3, :cond_9c

    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_9c
    if-eqz v4, :cond_ab

    .line 645
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v3

    if-eqz v3, :cond_ab

    const/4 v4, 0x1

    .line 647
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    .line 648
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setPermanent(Z)V

    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 652
    :cond_af
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_59

    return-void

    .line 654
    :goto_b3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized fetchComments(Linfo/flowersoft/theotown/backend/ResponseHandler;ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mode=comments&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&access="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&d="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&e="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchWorkers:Ljava/util/List;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_59

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 478
    :try_start_51
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_56

    .line 485
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    :goto_57
    move-object p1, v0

    goto :goto_5c

    :catchall_59
    move-exception v0

    move-object v1, p0

    goto :goto_57

    :goto_5c
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_56

    throw p1
.end method

.method public declared-synchronized fetchRatings()V
    .registers 11

    monitor-enter p0

    .line 410
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_RATINGS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mode=ratings&access="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->generateKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$5;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V

    .line 416
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v4

    iget-object v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratingWorkers:Ljava/util/List;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 412
    :try_start_44
    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4e

    :catchall_48
    move-exception v0

    goto :goto_50

    :catchall_4a
    move-exception v0

    move-object v2, p0

    goto :goto_50

    :cond_4d
    move-object v2, p0

    .line 428
    :goto_4e
    monitor-exit p0

    return-void

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_48

    throw v0
.end method

.method public declared-synchronized fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Linfo/flowersoft/theotown/store/StoreMode;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_1
    invoke-virtual {p0, p3, p5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->buildIdListArg(Lio/blueflower/stapel2d/util/IntList;Z)Ljava/lang/String;

    move-result-object p3

    .line 465
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mode="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/StoreMode;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&access="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&d="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&e="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&limit="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p2, p7

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&offset="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&tr="

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    sget-boolean p2, Linfo/flowersoft/theotown/resources/Settings;->translatePlugins:Z

    if-eqz p2, :cond_6b

    const-string p2, "true"

    goto :goto_6d

    :catchall_68
    move-exception v0

    move-object p1, v0

    goto :goto_87

    :cond_6b
    const-string p2, "false"

    :goto_6d
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchWorkers:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 465
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_68

    .line 475
    monitor-exit p0

    return-void

    :goto_87
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_68

    throw p1
.end method

.method public final generateKey()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x10

    .line 1179
    new-array v0, v0, [B

    .line 1180
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "store key"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessKey()Ljava/lang/String;
    .registers 2

    .line 390
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 391
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized getAcquiredPluginIds()Lio/blueflower/stapel2d/util/IntList;
    .registers 3

    monitor-enter p0

    .line 821
    :try_start_1
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(Lio/blueflower/stapel2d/util/IntList;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final getDefaultParameters()Ljava/lang/String;
    .registers 4

    .line 193
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 194
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&minv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&vi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONI:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 196
    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ck="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getCake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pd="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    .line 199
    invoke-static {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->toInt(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    invoke-static {v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->toInt(Z)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&compress=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDownloadError(I)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;

    if-eqz p1, :cond_10

    .line 270
    iget-object p1, p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->error:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception p1

    goto :goto_13

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit p0

    return-object p1

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    throw p1
.end method

.method public declared-synchronized getDownloadProgress(I)F
    .registers 3

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;

    if-eqz p1, :cond_10

    .line 265
    iget p1, p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->progress:F
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p1

    goto :goto_14

    :cond_10
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_12
    monitor-exit p0

    return p1

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_e

    throw p1
.end method

.method public declared-synchronized getDownloadedPlugins()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 795
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_FILE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "[B>;"
        }
    .end annotation

    .line 86
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-object v0
.end method

.method public declared-synchronized getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;
    .registers 3

    monitor-enter p0

    .line 833
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized getManagedPluginFile(Ljava/io/File;)Linfo/flowersoft/theotown/store/ManagedPluginFile;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 825
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 826
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 827
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_21

    if-eqz v2, :cond_1e

    monitor-exit p0

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_21
    move-exception p1

    goto :goto_26

    .line 829
    :cond_23
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_21

    throw p1
.end method

.method public declared-synchronized getMissingPlugins(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 222
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 223
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 224
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isLoaded(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_28

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 228
    :cond_26
    monitor-exit p0

    return-object v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    throw p1
.end method

.method public final getPluginTargetFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    if-eqz p1, :cond_1b

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    const/16 p2, 0x5b

    .line 952
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2c

    const/4 v0, 0x0

    .line 953
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 951
    :cond_1b
    :goto_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 955
    :cond_2c
    :goto_2c
    new-instance p2, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedPluginsDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    invoke-static {p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x10

    invoke-static {p1}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mpf"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public declared-synchronized getUserRating(I)I
    .registers 4

    monitor-enter p0

    .line 381
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final declared-synchronized handleDownloadedPlugin([BIIILjava/lang/String;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 960
    :try_start_1
    invoke-virtual {p0, p5, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getPluginTargetFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p5

    .line 961
    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p6

    invoke-virtual {p6}, Ljava/io/File;->mkdirs()Z

    .line 962
    invoke-static {p5, p1}, Linfo/flowersoft/theotown/util/Files;->writeBinaryFile(Ljava/io/File;[B)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a2

    if-eqz p1, :cond_bf

    .line 968
    :try_start_12
    new-instance p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-direct {p1, p5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;-><init>(Ljava/io/File;)V

    const/4 p6, 0x1

    .line 969
    invoke-virtual {p1, p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    const/4 p6, 0x0

    .line 970
    invoke-virtual {p1, p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastActive(Z)V

    .line 971
    invoke-virtual {p1, p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastVersion(I)V

    .line 972
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p6

    invoke-virtual {p6}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide p6

    invoke-virtual {p1, p6, p7}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setFirstDownloaded(J)V

    .line 973
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result p6
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_b4
    .catchall {:try_start_12 .. :try_end_31} :catchall_a2

    if-eqz p6, :cond_a8

    .line 981
    :try_start_33
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p6
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_a5
    .catchall {:try_start_33 .. :try_end_37} :catchall_a2

    if-eqz p6, :cond_7a

    .line 983
    :try_start_39
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getLastVersion()I

    move-result p7

    invoke-virtual {p1, p7}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastVersion(I)V

    .line 984
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result p7

    invoke-virtual {p1, p7}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    .line 985
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isLastActive()Z

    move-result p7

    invoke-virtual {p1, p7}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setLastActive(Z)V

    .line 986
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setFirstDownloaded(J)V

    .line 987
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result p7

    invoke-virtual {p1, p7}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setPermanent(Z)V

    .line 988
    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object p7

    invoke-virtual {p7}, Ljava/io/File;->delete()Z

    .line 989
    iget-object p7, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {p7, p6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 990
    iget-object p7, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p6}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p6

    invoke-virtual {p7, p6}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_71} :catch_76
    .catchall {:try_start_39 .. :try_end_71} :catchall_72

    goto :goto_7a

    :catchall_72
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_c8

    :catch_76
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_bb

    .line 993
    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object p6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->deletedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p6, p2}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    .line 994
    iget-object p6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object p6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result p7

    invoke-virtual {p6, p7, p1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8d} :catch_a5
    .catchall {:try_start_7a .. :try_end_8d} :catchall_a2

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    .line 996
    :try_start_94
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->setUpdateProgress(IIIFLjava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9a} :catch_9f
    .catchall {:try_start_94 .. :try_end_9a} :catchall_9c

    .line 1002
    monitor-exit p0

    return-void

    :catchall_9c
    move-exception v0

    :goto_9d
    move-object p1, v0

    goto :goto_c8

    :catch_9f
    move-exception v0

    :goto_a0
    move-object p1, v0

    goto :goto_bb

    :catchall_a2
    move-exception v0

    move-object v1, p0

    goto :goto_9d

    :catch_a5
    move-exception v0

    move-object v1, p0

    goto :goto_a0

    :cond_a8
    move-object v1, p0

    .line 974
    :try_start_a9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b1} :catch_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_9c

    :catch_b1
    move-exception v0

    :goto_b2
    move-object p1, v0

    goto :goto_b7

    :catch_b4
    move-exception v0

    move-object v1, p0

    goto :goto_b2

    .line 977
    :goto_b7
    :try_start_b7
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    .line 978
    throw p1
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bb} :catch_9f
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_9c

    .line 999
    :goto_bb
    :try_start_bb
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    .line 1000
    throw p1

    :cond_bf
    move-object v1, p0

    .line 963
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t save file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1000
    :goto_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_9c

    throw p1
.end method

.method public final declared-synchronized handleRatingsResult(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    monitor-enter p0

    .line 849
    :try_start_1
    const-string v0, "plugins"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    .line 850
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    const/4 v0, 0x0

    .line 851
    :goto_d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 852
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 854
    const-string v2, "plugin_id"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 855
    const-string v3, "rating"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 856
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_35

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 859
    :cond_30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_2b

    .line 860
    monitor-exit p0

    return-void

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2b

    throw p1
.end method

.method public init(Lcom/badlogic/gdx/Application;)V
    .registers 3

    .line 176
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->application:Lcom/badlogic/gdx/Application;

    .line 178
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->loadState()V

    .line 179
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractInternalPlugins()V

    .line 180
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->loadLocalPlugins()V

    .line 181
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->checkForUpdates()V

    .line 182
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchRatings()V

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public declared-synchronized isAcquired(I)Z
    .registers 3

    monitor-enter p0

    .line 232
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized isCommentReported(I)Z
    .registers 3

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized isDownloaded(I)Z
    .registers 2

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized isDownloading(I)Z
    .registers 3

    monitor-enter p0

    .line 259
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;

    if-eqz p1, :cond_13

    .line 260
    iget-object p1, p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->error:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :catchall_11
    move-exception p1

    goto :goto_16

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0

    return p1

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_11

    throw p1
.end method

.method public declared-synchronized isInternalPlugin(I)Z
    .registers 3

    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized isLoaded(I)Z
    .registers 3

    monitor-enter p0

    .line 240
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 241
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getLastVersion()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isLastActive()Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_1a

    :cond_17
    const/4 p1, 0x0

    :goto_18
    monitor-exit p0

    return p1

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_15

    throw p1
.end method

.method public declared-synchronized isPermanent(I)Z
    .registers 4

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->internalPlugins:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 246
    monitor-exit p0

    return v1

    .line 249
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 250
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result p1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_19

    if-eqz p1, :cond_1b

    goto :goto_1c

    :catchall_19
    move-exception p1

    goto :goto_1e

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit p0

    return v1

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    throw p1
.end method

.method public declared-synchronized isPluginReported(I)Z
    .registers 3

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final declared-synchronized loadLocalPlugins()V
    .registers 6

    monitor-enter p0

    .line 659
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "add local mpf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    .line 660
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ManagedPluginController"

    const-string v2, "Skip local only plugins"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 661
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto :goto_36

    .line 663
    :cond_19
    :try_start_19
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "acquire local mpf"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 664
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "only load if acquired"

    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_31

    move v2, v3

    .line 666
    :cond_31
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->addLocalPlugins(ZZZ)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_17

    .line 667
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_17

    throw v0
.end method

.method public final loadPlugins(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 567
    filled-new-array {v0}, [Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    .line 568
    invoke-static {}, Linfo/flowersoft/theotown/util/Parallel;->autoThreadCount()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;[Linfo/flowersoft/theotown/util/json/JSONException;)V

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/util/Parallel;->computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z

    const/4 p1, 0x0

    .line 617
    aget-object p1, v0, p1

    if-nez p1, :cond_1b

    return-void

    :cond_1b
    throw p1
.end method

.method public final declared-synchronized loadState()V
    .registers 8

    monitor-enter p0

    .line 488
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 489
    const-string v1, "json"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 494
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 495
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 496
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPluginsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 497
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_4f

    .line 499
    :try_start_28
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 501
    const-string v0, "ratings"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    move v3, v2

    :goto_37
    add-int/lit8 v4, v3, 0x1

    .line 503
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_55

    .line 504
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v5

    .line 505
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    .line 506
    iget-object v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v6, v5, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_37

    :catchall_4f
    move-exception v0

    goto/16 :goto_12a

    :catch_52
    move-exception v0

    goto/16 :goto_120

    .line 510
    :cond_55
    const-string v0, "acquired"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7d

    move v3, v2

    .line 512
    :goto_5e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7d

    .line 513
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    .line 514
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 515
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 516
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 521
    :cond_7d
    const-string v0, "reported"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_98

    move v3, v2

    .line 523
    :goto_86
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_98

    .line 524
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 528
    :cond_98
    const-string v0, "reported comments"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b3

    move v3, v2

    .line 530
    :goto_a1
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b3

    .line 531
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 535
    :cond_b3
    const-string v0, "downloaded"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 537
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->loadPlugins(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 540
    :cond_be
    const-string v0, "extracted"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e1

    move v1, v2

    .line 542
    :goto_c7
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_e1

    .line 543
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v3

    .line 544
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v4

    if-nez v4, :cond_de

    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 548
    :cond_e1
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRawPurchases()Ljava/util/List;

    move-result-object v0

    .line 549
    :goto_e9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_125

    .line 550
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PLUGIN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 552
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->PLUGIN_KEY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 553
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 554
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 555
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPluginsSet:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z
    :try_end_11d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_28 .. :try_end_11d} :catch_52
    .catchall {:try_start_28 .. :try_end_11d} :catchall_4f

    :cond_11d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    .line 560
    :goto_120
    :try_start_120
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 563
    :cond_125
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V
    :try_end_128
    .catchall {:try_start_120 .. :try_end_128} :catchall_4f

    .line 564
    monitor-exit p0

    return-void

    :goto_12a
    :try_start_12a
    monitor-exit p0
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_4f

    throw v0
.end method

.method public declared-synchronized onPause()V
    .registers 1

    monitor-enter p0

    .line 838
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onResume()V
    .registers 5

    monitor-enter p0

    .line 841
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->updateWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->lastUpdateCheckMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 842
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->checkForUpdates()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception v0

    goto :goto_1f

    .line 844
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1b

    throw v0
.end method

.method public declared-synchronized ratePlugin(II)V
    .registers 13

    monitor-enter p0

    .line 395
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5c

    .line 397
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->GET_RATINGS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mode=rate&access="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->generateKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&plugin="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&rating="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Linfo/flowersoft/theotown/store/ManagedPluginsController;->EMPTY_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratingWorkers:Ljava/util/List;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_59

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 399
    :try_start_52
    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5d

    :catchall_56
    move-exception v0

    :goto_57
    move-object p1, v0

    goto :goto_5f

    :catchall_59
    move-exception v0

    move-object v2, p0

    goto :goto_57

    :cond_5c
    move-object v2, p0

    .line 407
    :goto_5d
    monitor-exit p0

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_56

    throw p1
.end method

.method public declared-synchronized reportComment(IILjava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-lez p2, :cond_8e

    .line 364
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mode=reportcomment&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->generateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&access="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&d="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&ac="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "&dl="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloaded(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance p1, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V

    .line 373
    invoke-static {p4, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getSuccessJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->notificationWorkers:Ljava/util/List;
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_8b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 365
    :try_start_84
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V

    goto :goto_92

    :catchall_88
    move-exception v0

    :goto_89
    move-object p1, v0

    goto :goto_90

    :catchall_8b
    move-exception v0

    move-object v1, p0

    goto :goto_89

    :cond_8e
    move-object v1, p0

    goto :goto_92

    .line 364
    :goto_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_88

    throw p1

    .line 378
    :goto_92
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized reportPlugin(ILjava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-lez p1, :cond_8e

    .line 347
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->STORE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mode=report&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->generateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&access="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAccessKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&d="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&ac="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "&dl="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloaded(I)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDefaultParameters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance p2, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V

    .line 356
    invoke-static {p3, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getSuccessJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->notificationWorkers:Ljava/util/List;
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_8b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 348
    :try_start_84
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V

    goto :goto_92

    :catchall_88
    move-exception v0

    :goto_89
    move-object p1, v0

    goto :goto_90

    :catchall_8b
    move-exception v0

    move-object v1, p0

    goto :goto_89

    :cond_8e
    move-object v1, p0

    goto :goto_92

    .line 347
    :goto_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_88

    throw p1

    .line 361
    :goto_92
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized requiresRestart()Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 284
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_24

    .line 285
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 286
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->requiresRestart(I)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_22

    if-eqz v1, :cond_1f

    .line 287
    monitor-exit p0

    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_22
    move-exception v0

    goto :goto_2d

    .line 291
    :cond_24
    :try_start_24
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->deletedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_22

    xor-int/2addr v0, v2

    monitor-exit p0

    return v0

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_22

    throw v0
.end method

.method public declared-synchronized requiresRestart(I)Z
    .registers 4

    monitor-enter p0

    .line 278
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 279
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getLastVersion()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v1

    if-lt v0, v1, :cond_1e

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isLastActive()Z

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    if-eq v0, p1, :cond_20

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_23

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    monitor-exit p0

    return p1

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1c

    throw p1
.end method

.method public declared-synchronized saveState()V
    .registers 11

    monitor-enter p0

    .line 726
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_34

    .line 728
    :try_start_7
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 730
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 731
    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 732
    iget v5, v4, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 733
    iget v4, v4, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    if-eqz v4, :cond_1b

    .line 735
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 736
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_1b

    :catchall_34
    move-exception v0

    goto/16 :goto_147

    :catch_37
    move-exception v1

    goto/16 :goto_13d

    .line 739
    :cond_3a
    const-string v3, "ratings"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 741
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 742
    :goto_46
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 743
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquiredPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 745
    :cond_5a
    const-string v4, "acquired"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 747
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move v4, v3

    .line 748
    :goto_65
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v4, v5, :cond_79

    .line 749
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 751
    :cond_79
    const-string v4, "reported"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 753
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move v4, v3

    .line 754
    :goto_84
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v4, v5, :cond_98

    .line 755
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportedComments:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 757
    :cond_98
    const-string v4, "reported comments"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 759
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    move v4, v3

    .line 760
    :goto_a3
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_110

    .line 761
    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadedPlugins:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 762
    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 763
    new-instance v6, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v6}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 764
    const-string v7, "file"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 765
    const-string v7, "plugin id"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 766
    const-string v7, "revision id"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 767
    const-string v7, "version"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 768
    const-string v7, "hash"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 769
    const-string v7, "size"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 770
    const-string v7, "active"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 771
    const-string v7, "first downloaded"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 772
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_10d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 775
    :cond_110
    const-string v4, "downloaded"

    invoke-virtual {v1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 777
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 778
    :goto_11a
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_12e

    .line 779
    iget-object v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->extractedPlugins:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11a

    .line 781
    :cond_12e
    const-string v3, "extracted"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 783
    const-string v2, "json"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_7 .. :try_end_13c} :catch_37
    .catchall {:try_start_7 .. :try_end_13c} :catchall_34

    goto :goto_142

    .line 785
    :goto_13d
    :try_start_13d
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v2, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 787
    :goto_142
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_34

    .line 788
    monitor-exit p0

    return-void

    :goto_147
    :try_start_147
    monitor-exit p0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_34

    throw v0
.end method

.method public final declared-synchronized setUpdateProgress(IIIFLjava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 1039
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;

    if-nez v0, :cond_1a

    .line 1041
    new-instance v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;

    invoke-direct {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;-><init>()V

    .line 1042
    iput p1, v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->pluginId:I

    .line 1043
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_36

    :cond_1a
    :goto_1a
    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_25

    .line 1046
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController;->pendingDownloads:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 1048
    :cond_25
    iput p2, v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->revisionId:I

    .line 1049
    iput p3, v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->version:I

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1051
    invoke-static {p4, p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->progress:F

    .line 1052
    iput-object p5, v0, Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;->error:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_18

    .line 1053
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_18

    throw p1
.end method

.method public supportsRatings()Z
    .registers 3

    .line 385
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isSocialConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getPermissions()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized updateWorkers(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1166
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_1c

    .line 1167
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_1a
    move-exception p1

    goto :goto_43

    .line 1171
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 1172
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_3e

    .line 1173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_1a

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1176
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_1a

    throw p1
.end method

.method public final urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 213
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass1 (info.flowersoft.theotown.store.ManagedPluginsController$1)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$1;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 82
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

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

    .line 76
    check-cast p1, [B

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$1;->handle([B)V

    return-void
.end method

.method public handle([B)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass2 (info.flowersoft.theotown.store.ManagedPluginsController$2)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$2;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->getJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V

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

    .line 86
    check-cast p1, [B

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->handle([B)V

    return-void
.end method

.method public handle([B)V
    .registers 7

    .line 90
    const-string v0, "plugin url"

    const-string v1, "file url"

    :try_start_4
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 93
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$000(Linfo/flowersoft/theotown/store/ManagedPluginsController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$002(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_26

    :catch_24
    move-exception p1

    goto :goto_60

    .line 95
    :cond_26
    :goto_26
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 96
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$100(Linfo/flowersoft/theotown/store/ManagedPluginsController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$102(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    :cond_39
    const-string p1, "status"

    const-string v0, ""

    invoke-virtual {v2, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 100
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hint"

    const-string v1, "Unknown"

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->error(Ljava/lang/Exception;)V

    return-void

    .line 102
    :cond_5a
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {p1, v2}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V
    :try_end_5f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4 .. :try_end_5f} :catch_24

    return-void

    .line 105
    :goto_60
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$2;->error(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass3 (info.flowersoft.theotown.store.ManagedPluginsController$3)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$3;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->getSuccessJSONHandler(Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V

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

    .line 117
    check-cast p1, [B

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->handle([B)V

    return-void
.end method

.method public handle([B)V
    .registers 6

    .line 121
    const-string v0, "status"

    :try_start_2
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string p1, "success"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 123
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 124
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {p1, v1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V

    return-void

    :catch_25
    move-exception p1

    goto :goto_36

    .line 126
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "none"

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->error(Ljava/lang/Exception;)V
    :try_end_35
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2 .. :try_end_35} :catch_25

    return-void

    .line 129
    :goto_36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$3;->error(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass4 (info.flowersoft.theotown.store.ManagedPluginsController$4)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$4;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$4;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public pause()V
    .registers 2

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$4;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->onPause()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$4;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->onResume()V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass5 (info.flowersoft.theotown.store.ManagedPluginsController$5)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$5;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchRatings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 416
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$5;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 2

    .line 424
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 419
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$5;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$200(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONObject;)V

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

    .line 416
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$5;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass6 (info.flowersoft.theotown.store.ManagedPluginsController$6)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$6;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->checkForUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 876
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 889
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

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

    .line 876
    check-cast p1, [B

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;->handle([B)V

    return-void
.end method

.method public handle([B)V
    .registers 5

    .line 880
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 881
    iget-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$300(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;)V
    :try_end_11
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 883
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$6;->error(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass7 (info.flowersoft.theotown.store.ManagedPluginsController$7)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$7;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadPlugin(IIILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic val$pluginId:I

.field public final synthetic val$revisionId:I

.field public final synthetic val$size:J

.field public final synthetic val$title:Ljava/lang/String;

.field public final synthetic val$version:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIILjava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 932
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$pluginId:I

    iput p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$revisionId:I

    iput p4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$version:I

    iput-object p5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$title:Ljava/lang/String;

    iput-wide p6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$size:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 8

    .line 944
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$pluginId:I

    iget v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$revisionId:I

    iget v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$version:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$500(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIFLjava/lang/String;)V

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

    .line 932
    check-cast p1, [B

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->handle([B)V

    return-void
.end method

.method public handle([B)V
    .registers 10

    .line 936
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$pluginId:I

    iget v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$revisionId:I

    iget v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$version:I

    iget-object v5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$title:Ljava/lang/String;

    iget-wide v6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->val$size:J

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$400(Linfo/flowersoft/theotown/store/ManagedPluginsController;[BIIILjava/lang/String;J)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    move-object p1, v0

    .line 938
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController$7;->error(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass8 (info.flowersoft.theotown.store.ManagedPluginsController$8)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$8;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->disableRecentPlugins()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$8;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I
    .registers 5

    .line 1022
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1019
    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    check-cast p2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController$8;->compare(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.AnonymousClass9 (info.flowersoft.theotown.store.ManagedPluginsController$9)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$9;
.super Ljava/lang/Thread;
.source "ManagedPluginsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;->download(Ljava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic val$compressed:Z

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

.field public final synthetic val$keepOnInterrupt:Z

.field public final synthetic val$path:Ljava/lang/String;

.field public final synthetic val$progress:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$workers:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/lang/String;ZZLio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/backend/ResponseHandler;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1086
    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$path:Ljava/lang/String;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$compressed:Z

    iput-boolean p4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$keepOnInterrupt:Z

    iput-object p5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$progress:Lio/blueflower/stapel2d/util/Setter;

    iput-object p6, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iput-object p7, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$workers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    move-object v2, v1

    :goto_3
    if-lez v0, :cond_85

    add-int/lit8 v0, v0, -0x1

    .line 1096
    :try_start_7
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1099
    invoke-static {v2}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    const/16 v3, 0x4e20

    .line 1100
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1101
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1103
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1104
    iget-boolean v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$compressed:Z

    if-eqz v4, :cond_35

    .line 1105
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_39

    :catch_30
    move-exception v2

    goto :goto_80

    :catch_32
    move-exception v0

    move-object v1, v0

    goto :goto_86

    .line 1106
    :cond_35
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_39} :catch_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_30

    .line 1107
    :goto_39
    :try_start_39
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object v2

    const/4 v5, 0x0

    move v6, v5

    .line 1112
    :cond_3f
    :goto_3f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_52

    iget-boolean v7, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$keepOnInterrupt:Z

    if-eqz v7, :cond_4a

    goto :goto_52

    .line 1113
    :cond_4a
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catchall_50
    move-exception v2

    goto :goto_75

    .line 1116
    :cond_52
    :goto_52
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_50

    if-gez v7, :cond_65

    .line 1125
    :try_start_58
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1127
    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Linfo/flowersoft/theotown/backend/ResponseHandler;->handle(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_64} :catch_32
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_64} :catch_30

    goto :goto_86

    .line 1118
    :cond_65
    :try_start_65
    invoke-virtual {v3, v2, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v6, v7

    .line 1121
    iget-object v7, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$progress:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v7, :cond_3f

    .line 1122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_50

    goto :goto_3f

    :goto_75
    if-eqz v4, :cond_7f

    .line 1104
    :try_start_77
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v3

    :try_start_7c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    throw v2
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_80} :catch_32
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_80} :catch_30

    .line 1138
    :goto_80
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_85
    move-object v1, v2

    :goto_86
    if-eqz v1, :cond_8d

    .line 1143
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$handler:Linfo/flowersoft/theotown/backend/ResponseHandler;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/backend/ResponseHandler;->error(Ljava/lang/Exception;)V

    .line 1146
    :cond_8d
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    monitor-enter v0

    .line 1147
    :try_start_90
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$workers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1148
    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->this$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$9;->val$workers:Ljava/util/List;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->access$600(Linfo/flowersoft/theotown/store/ManagedPluginsController;Ljava/util/List;)V

    .line 1149
    monitor-exit v0

    return-void

    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_90 .. :try_end_a0} :catchall_9e

    throw v1
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController.PendingDownload (info.flowersoft.theotown.store.ManagedPluginsController$PendingDownload)
.class public Linfo/flowersoft/theotown/store/ManagedPluginsController$PendingDownload;
.super Ljava/lang/Object;
.source "ManagedPluginsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/ManagedPluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingDownload"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public pluginId:I

.field public progress:F

.field public revisionId:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda0 (info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$3:I

    iput-wide p5, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$4:J

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$3:I

    iget-wide v4, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda0;->f$4:J

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->$r8$lambda$feycE7lf1pBpGpgHN1UXWtDTGDk(Linfo/flowersoft/theotown/store/ManagedPluginsController;IIIJLjava/lang/Integer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda1 (info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->$r8$lambda$VBl7VKyWf9jJ4oOjUN9u5UC-vh8(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda2 (info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

.field public final synthetic f$2:[Linfo/flowersoft/theotown/util/json/JSONException;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;[Linfo/flowersoft/theotown/util/json/JSONException;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$2:[Linfo/flowersoft/theotown/util/json/JSONException;

    return-void
.end method


# virtual methods
.method public final work(III)V
    .registers 10

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda2;->f$2:[Linfo/flowersoft/theotown/util/json/JSONException;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->$r8$lambda$ojhmaxr99_QLGZWpI6op3bIr7vA(Linfo/flowersoft/theotown/store/ManagedPluginsController;Linfo/flowersoft/theotown/util/json/JSONArray;[Linfo/flowersoft/theotown/util/json/JSONException;III)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda3 (info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iput p2, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget v1, p0, Linfo/flowersoft/theotown/store/ManagedPluginsController$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->$r8$lambda$H9MchlbXEkPLGLyY0oc9cmcAbBI(Linfo/flowersoft/theotown/store/ManagedPluginsController;I)V

    return-void
.end method
