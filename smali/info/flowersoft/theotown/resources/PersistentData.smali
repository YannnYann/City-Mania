###### Class info.flowersoft.theotown.resources.PersistentData (info.flowersoft.theotown.resources.PersistentData)
.class public Linfo/flowersoft/theotown/resources/PersistentData;
.super Ljava/lang/Object;
.source "PersistentData.java"


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/PersistentData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized read()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 4

    monitor-enter p0

    .line 16
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PersistentData;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 17
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PersistentData;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1c

    if-eqz v0, :cond_22

    .line 21
    :try_start_15
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1e
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    move-object v2, v1

    goto :goto_22

    :catchall_1c
    move-exception v0

    goto :goto_2b

    :catch_1e
    move-exception v0

    .line 23
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_22
    :goto_22
    if-nez v2, :cond_29

    .line 27
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1c

    .line 29
    :cond_29
    monitor-exit p0

    return-object v2

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1c

    throw v0
.end method

.method public declared-synchronized write(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    monitor-enter p0

    .line 33
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PersistentData;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 34
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PersistentData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 36
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method
