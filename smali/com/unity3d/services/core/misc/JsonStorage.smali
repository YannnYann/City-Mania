###### Class com.unity3d.services.core.misc.JsonStorage (com.unity3d.services.core.misc.JsonStorage)
.class public Lcom/unity3d/services/core/misc/JsonStorage;
.super Ljava/lang/Object;
.source "JsonStorage.java"

# interfaces
.implements Lcom/unity3d/services/core/misc/IJsonStorageReader;


# instance fields
.field private _data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized createObjectTree(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 183
    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2f

    if-nez p1, :cond_11

    .line 187
    monitor-exit p0

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 190
    :goto_12
    :try_start_12
    array-length v2, v0

    if-ge p1, v2, :cond_48

    .line 191
    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_2f

    if-nez v2, :cond_38

    .line 193
    :try_start_1d
    aget-object v2, v0, p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 194
    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_31
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2f

    goto :goto_45

    :catchall_2f
    move-exception p1

    goto :goto_4a

    :catch_31
    move-exception v2

    .line 197
    :try_start_32
    const-string v3, "Couldn\'t create new JSONObject"

    invoke-static {v3, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    goto :goto_45

    .line 202
    :cond_38
    :try_start_38
    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_3f
    .catchall {:try_start_38 .. :try_end_3e} :catchall_2f

    goto :goto_45

    :catch_3f
    move-exception v2

    .line 205
    :try_start_40
    const-string v3, "Couldn\'t get existing JSONObject"

    invoke-static {v3, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_2f

    :goto_45
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 209
    :cond_48
    monitor-exit p0

    return-void

    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_2f

    throw p1
.end method

.method private declared-synchronized findObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    monitor-enter p0

    .line 157
    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    if-nez p1, :cond_11

    .line 161
    monitor-exit p0

    return-object v1

    :cond_11
    const/4 p1, 0x0

    .line 164
    :goto_12
    :try_start_12
    array-length v2, v0

    if-ge p1, v2, :cond_44

    .line 165
    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_27

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    .line 167
    :try_start_1e
    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_29
    .catchall {:try_start_1e .. :try_end_24} :catchall_27

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :catchall_27
    move-exception p1

    goto :goto_46

    :catch_29
    move-exception v1

    .line 170
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read JSONObject: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_27

    .line 171
    monitor-exit p0

    return-object v3

    .line 175
    :cond_42
    monitor-exit p0

    return-object v3

    .line 179
    :cond_44
    monitor-exit p0

    return-object v1

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_27

    throw p1
.end method

.method private declared-synchronized getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 213
    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 217
    const-string v0, "."

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 219
    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 44
    :try_start_2
    iput-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 45
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 141
    const-string p1, "Data is NULL, readStorage probably not called"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 142
    monitor-exit p0

    return v1

    :catchall_d
    move-exception p1

    goto :goto_3c

    .line 145
    :cond_f
    :try_start_f
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_3a

    .line 147
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_3a

    .line 149
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_d

    if-eqz p1, :cond_3a

    .line 150
    monitor-exit p0

    return v3

    .line 153
    :cond_3a
    monitor-exit p0

    return v1

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_d

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 79
    const-string p1, "Data is NULL, readStorage probably not called"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 80
    monitor-exit p0

    return-object v1

    :catchall_d
    move-exception p1

    goto :goto_4c

    .line 83
    :cond_f
    :try_start_f
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4a

    .line 85
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_d

    if-eqz p1, :cond_4a

    .line 90
    :try_start_2d
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 91
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_d

    goto :goto_48

    :catch_42
    move-exception p1

    .line 95
    :try_start_43
    const-string v0, "Error getting data"

    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_d

    .line 98
    :cond_48
    :goto_48
    monitor-exit p0

    return-object v1

    .line 102
    :cond_4a
    monitor-exit p0

    return-object v1

    :goto_4c
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_d

    throw p1
.end method

.method public declared-synchronized getData()Lorg/json/JSONObject;
    .registers 2

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getKeys(Ljava/lang/String;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 107
    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_72

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_44

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/unity3d/services/core/misc/JsonStorage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_45

    :catchall_42
    move-exception p1

    goto :goto_76

    :cond_44
    move-object v4, v1

    .line 123
    :goto_45
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_1b

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_42

    goto :goto_4e

    .line 133
    :cond_72
    monitor-exit p0

    return-object v2

    .line 136
    :cond_74
    monitor-exit p0

    return-object v1

    :goto_76
    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_42

    throw p1
.end method

.method public declared-synchronized hasData()Z
    .registers 2

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    if-lez v0, :cond_10

    .line 38
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v0

    goto :goto_13

    .line 40
    :cond_10
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    throw v0
.end method

.method public declared-synchronized initData()Z
    .registers 2

    monitor-enter p0

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_11

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    .line 21
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_f
    move-exception v0

    goto :goto_14

    .line 24
    :cond_11
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_f

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_52

    if-nez p2, :cond_11

    goto :goto_52

    .line 53
    :cond_11
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/misc/JsonStorage;->createObjectTree(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4b

    .line 56
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 57
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3f

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 61
    :try_start_37
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object p1, p1, v3

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3e} :catch_41
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_49

    :catchall_3f
    move-exception p1

    goto :goto_7a

    :catch_41
    move-exception p1

    .line 63
    :try_start_42
    const-string p2, "Couldn\'t set value"

    invoke-static {p2, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 64
    monitor-exit p0

    return v1

    .line 73
    :cond_49
    :goto_49
    monitor-exit p0

    return v2

    .line 69
    :cond_4b
    :try_start_4b
    const-string p1, "Cannot set subvalue to an object that is not JSONObject"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_3f

    .line 70
    monitor-exit p0

    return v1

    .line 49
    :cond_52
    :goto_52
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage not properly initialized or incorrect parameters:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_52 .. :try_end_78} :catchall_3f

    .line 50
    monitor-exit p0

    return v1

    :goto_7a
    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_3f

    throw p1
.end method

.method public declared-synchronized setData(Lorg/json/JSONObject;)V
    .registers 2

    monitor-enter p0

    .line 28
    :try_start_1
    iput-object p1, p0, Lcom/unity3d/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 29
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
