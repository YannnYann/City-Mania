###### Class info.flowersoft.theotown.notification.NotificationHandler (info.flowersoft.theotown.notification.NotificationHandler)
.class public Linfo/flowersoft/theotown/notification/NotificationHandler;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHandler.java"


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    return-void
.end method

.method public static createDeleteIntent(Landroid/content/Context;Linfo/flowersoft/theotown/util/json/JSONObject;)Landroid/app/PendingIntent;
    .registers 4

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const-string v1, "action delete notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "json data"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x4000000

    .line 227
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createStartIntent(Landroid/content/Context;Linfo/flowersoft/theotown/util/json/JSONObject;)Landroid/app/PendingIntent;
    .registers 4

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v1, "action start notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "json data"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x4000000

    .line 220
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 93
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_22

    .line 95
    invoke-static {}, Linfo/flowersoft/theotown/notification/NotificationHandler$$ExternalSyntheticApiModelOutline1;->m()V

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 96
    invoke-static {p1, p3}, Linfo/flowersoft/theotown/notification/NotificationHandler$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-class p3, Landroid/app/NotificationManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 101
    invoke-static {p2, p1}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 103
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public declared-synchronized addNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 23

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    .line 75
    :try_start_10
    invoke-virtual/range {v1 .. v12}, Linfo/flowersoft/theotown/notification/NotificationHandler;->buildNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->removeNotificationRaw(Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->addNotificationRaw(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->scheduleNextWakeup()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1f

    .line 81
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    move-object p1, v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1f

    throw p1
.end method

.method public final addNotificationRaw(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 135
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getScheduledNotifications()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 137
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setScheduledNotifications(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    return-void
.end method

.method public final buildNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 14

    .line 187
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 189
    :try_start_5
    const-string v1, "channel id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 190
    const-string p1, "id"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 191
    const-string p1, "title"

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 192
    const-string p1, "text"

    invoke-virtual {v0, p1, p4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 193
    const-string p1, "time"

    invoke-virtual {v0, p1, p7, p8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 194
    const-string p1, "repeat time"

    invoke-virtual {v0, p1, p9, p10}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 195
    const-string p1, "repeat num"

    invoke-virtual {v0, p1, p11}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 196
    const-string p1, "action"

    const-string p2, "custom"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 197
    const-string p1, "region_id"

    invoke-virtual {v0, p1, p5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 198
    const-string p1, "city_id"

    invoke-virtual {v0, p1, p6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_39
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public declared-synchronized cancelAll()V
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 108
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final collectOnlineModeNotifications(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 304
    new-instance v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;

    invoke-direct {v13, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;-><init>(Linfo/flowersoft/theotown/notification/NotificationHandler;)V

    .line 305
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    if-nez v2, :cond_f

    goto/16 :goto_b4

    :cond_f
    const/4 v3, 0x1

    .line 326
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/backend/Backend;->setRunTemporary(Z)V

    .line 327
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v0

    new-instance v4, Linfo/flowersoft/theotown/notification/NotificationHandler$1;

    invoke-direct {v4, v1, v13}, Linfo/flowersoft/theotown/notification/NotificationHandler$1;-><init>(Linfo/flowersoft/theotown/notification/NotificationHandler;Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;)V

    new-instance v5, Linfo/flowersoft/theotown/notification/NotificationHandler$2;

    invoke-direct {v5, v1, v13}, Linfo/flowersoft/theotown/notification/NotificationHandler$2;-><init>(Linfo/flowersoft/theotown/notification/NotificationHandler;Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;)V

    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetchDirect(ZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_26
    const/16 v0, 0xa

    const-wide/16 v14, 0x3e8

    if-ge v5, v0, :cond_3f

    .line 339
    iget-object v0, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    if-nez v0, :cond_3f

    iget-boolean v0, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->failed:Z

    if-nez v0, :cond_3f

    .line 341
    :try_start_34
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 346
    :cond_3f
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/backend/Backend;->setRunTemporary(Z)V

    .line 348
    iget-object v0, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    if-eqz v0, :cond_b4

    .line 349
    invoke-virtual {v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getLastShownOnlineNotificationTime()J

    move-result-wide v4

    .line 351
    iget-object v0, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_51
    if-ltz v0, :cond_b1

    .line 352
    iget-object v2, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/online/VirtualNotification;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualNotification;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_ac

    .line 353
    iget-object v2, v13, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Linfo/flowersoft/theotown/online/VirtualNotification;

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getText()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getRegionId()I

    move-result v6

    .line 359
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getCityId()I

    move-result v7

    .line 360
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getTime()J

    move-result-wide v8

    mul-long/2addr v8, v14

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 354
    const-string v2, "onlinemode"

    const-string v4, "Online Mode"

    invoke-virtual/range {v1 .. v12}, Linfo/flowersoft/theotown/notification/NotificationHandler;->buildNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    .line 354
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/online/VirtualNotification;->getTime()J

    move-result-wide v4

    goto :goto_ae

    :cond_ac
    move-object/from16 v3, p1

    :goto_ae
    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 367
    :cond_b1
    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setLastShownOnlineNotificationTime(J)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public final declared-synchronized getLastShownOnlineNotificationTime()J
    .registers 5

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    const-string v1, "omnotiftime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-wide v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final getNextScheduledNotification(J)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 13

    .line 170
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getScheduledNotifications()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 173
    :goto_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_32

    .line 174
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 175
    invoke-virtual {p0, v5, p1, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getTimeOfNotification(Linfo/flowersoft/theotown/util/json/JSONObject;J)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-lez v8, :cond_24

    cmp-long v9, v6, v1

    if-gez v9, :cond_24

    move-object v3, v5

    move-wide v1, v6

    goto :goto_2f

    :cond_24
    if-gtz v8, :cond_2f

    .line 180
    const-string v6, "id"

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/notification/NotificationHandler;->removeNotificationRaw(Ljava/lang/String;)Z

    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_32
    return-object v3
.end method

.method public final getScheduledNotifications()Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v1, "scheduled"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_11
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public final getTimeOfNotification(Linfo/flowersoft/theotown/util/json/JSONObject;J)J
    .registers 12

    .line 154
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 155
    const-string v2, "repeat time"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 156
    const-string v4, "repeat num"

    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-lez p1, :cond_2e

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1d

    goto :goto_2e

    :cond_1d
    cmp-long p1, p2, v0

    if-gez p1, :cond_22

    goto :goto_2e

    :cond_22
    sub-long/2addr p2, v0

    add-long/2addr p2, v2

    const-wide/16 v6, 0x1

    sub-long/2addr p2, v6

    .line 163
    div-long/2addr p2, v2

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_2e
    :goto_2e
    return-wide v0
.end method

.method public declared-synchronized isEnabled()Z
    .registers 4

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized isOnlineModeEnabled()Z
    .registers 4

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    const-string v1, "online enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 253
    iput-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    if-eqz p2, :cond_80

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 257
    :try_start_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x53c689ed

    if-eq v1, v2, :cond_25

    const p1, -0x2ae24baa

    if-eq v1, p1, :cond_1d

    goto :goto_80

    :cond_1d
    const-string p1, "action delete notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    :catch_23
    move-exception p1

    goto :goto_7d

    :cond_25
    const-string v1, "action start notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 259
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->scheduleNextWakeup()V

    .line 261
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_80

    .line 262
    :cond_37
    const-string v0, "json data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4c

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_4c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->isOnlineModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 267
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->collectOnlineModeNotifications(Ljava/util/List;)V

    .line 270
    :cond_55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_80

    .line 271
    new-instance p2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {p2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 272
    :goto_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_71

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 277
    :cond_71
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/notification/NotificationIntentService;->createIntentStartNotificationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 276
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->startIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_7c} :catch_23

    return-void

    .line 285
    :goto_7d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_80
    :goto_80
    return-void
.end method

.method public declared-synchronized removeNotification(Ljava/lang/String;)Z
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->removeNotificationRaw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 85
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->scheduleNextWakeup()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 86
    :cond_d
    :goto_d
    monitor-exit p0

    return p1

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public final removeNotificationRaw(Ljava/lang/String;)Z
    .registers 8

    .line 141
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getScheduledNotifications()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 142
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 143
    :goto_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 144
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 145
    const-string v5, "id"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 146
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 149
    :cond_27
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setScheduledNotifications(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 150
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v2
.end method

.method public final scheduleNextWakeup()V
    .registers 8

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 237
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getNextScheduledNotification(J)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    add-long/2addr v3, v0

    if-eqz v2, :cond_23

    const-wide/16 v5, 0x3e8

    add-long/2addr v0, v5

    .line 241
    invoke-virtual {p0, v2, v0, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->getTimeOfNotification(Linfo/flowersoft/theotown/util/json/JSONObject;J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_23

    .line 243
    iget-object v3, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->createStartIntent(Landroid/content/Context;Linfo/flowersoft/theotown/util/json/JSONObject;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setupIntent(Landroid/app/PendingIntent;J)V

    return-void

    .line 248
    :cond_23
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->createStartIntent(Landroid/content/Context;Linfo/flowersoft/theotown/util/json/JSONObject;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setupIntent(Landroid/app/PendingIntent;J)V

    return-void
.end method

.method public declared-synchronized setEnabled(ZZ)V
    .registers 6

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string p1, "online enabled"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->scheduleNextWakeup()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 60
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized setLastShownOnlineNotificationTime(J)V
    .registers 6

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v1, "omnotiftime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 72
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final setScheduledNotifications(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 5

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "info.flowersoft.theotown.theotown.reminder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    const-string v1, "scheduled"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setupIntent(Landroid/app/PendingIntent;J)V
    .registers 6

    .line 209
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final startIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 292
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 294
    :cond_a
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

###### Class info.flowersoft.theotown.notification.NotificationHandler.AnonymousClass1 (info.flowersoft.theotown.notification.NotificationHandler$1)
.class public Linfo/flowersoft/theotown/notification/NotificationHandler$1;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/notification/NotificationHandler;->collectOnlineModeNotifications(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/util/List<",
        "Linfo/flowersoft/theotown/online/VirtualNotification;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;

.field public final synthetic val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/notification/NotificationHandler;Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;)V
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

    .line 327
    iput-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$1;->this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$1;->val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 327
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler$1;->set(Ljava/util/List;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$1;->val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;

    iput-object p1, v0, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->list:Ljava/util/List;

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.notification.NotificationHandler.C1ResultHolder (info.flowersoft.theotown.notification.NotificationHandler$1ResultHolder)
.class public Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;
.super Ljava/lang/Object;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/notification/NotificationHandler;->collectOnlineModeNotifications(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultHolder"
.end annotation


# instance fields
.field public failed:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/notification/NotificationHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.notification.NotificationHandler.AnonymousClass2 (info.flowersoft.theotown.notification.NotificationHandler$2)
.class public Linfo/flowersoft/theotown/notification/NotificationHandler$2;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/notification/NotificationHandler;->collectOnlineModeNotifications(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;

.field public final synthetic val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/notification/NotificationHandler;Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;)V
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

    .line 332
    iput-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$2;->this$0:Linfo/flowersoft/theotown/notification/NotificationHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$2;->val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 332
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3

    .line 335
    iget-object p1, p0, Linfo/flowersoft/theotown/notification/NotificationHandler$2;->val$resultHolder:Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Linfo/flowersoft/theotown/notification/NotificationHandler$1ResultHolder;->failed:Z

    return-void
.end method
