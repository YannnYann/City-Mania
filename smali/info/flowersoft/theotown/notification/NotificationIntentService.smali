###### Class info.flowersoft.theotown.notification.NotificationIntentService (info.flowersoft.theotown.notification.NotificationIntentService)
.class public Linfo/flowersoft/theotown/notification/NotificationIntentService;
.super Landroid/app/IntentService;
.source "NotificationIntentService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    const-class v0, Linfo/flowersoft/theotown/notification/NotificationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createIntentStartNotificationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Linfo/flowersoft/theotown/notification/NotificationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "action start"

    .line 28
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "json data"

    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    if-eqz p1, :cond_6b

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 51
    const-string v0, "json data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    :try_start_f
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    :goto_1a
    if-eqz v2, :cond_22

    .line 58
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2c

    .line 59
    :cond_22
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 60
    const-string v0, ""

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_2c
    const/4 v0, 0x0

    .line 63
    :goto_2d
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6b

    .line 66
    :try_start_33
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    move-exception v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    :goto_42
    if-nez v3, :cond_49

    .line 70
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 72
    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "action start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "action delete"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto :goto_68

    .line 77
    :cond_61
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/notification/NotificationIntentService;->processDeleteNotification(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    goto :goto_68

    .line 74
    :cond_65
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/notification/NotificationIntentService;->processStartNotification(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_6b
    return-void
.end method

.method public final processDeleteNotification(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final processStartNotification(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 9

    .line 85
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-class v2, Linfo/flowersoft/theotown/theotown/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v2, "info.flowersoft.theotown.theotown.SOURCE"

    const-string v3, "notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "info.flowersoft.theotown.theotown.DATA"

    .line 91
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    const/4 v4, 0x0

    .line 87
    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    const-string v2, "action"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 109
    const-string v2, "."

    const-string v4, "No amazing news here. Yet, please consider to visit us again."

    goto :goto_59

    .line 102
    :cond_48
    const-string v2, "Test notification"

    const-string v4, "Hi, this notification is for pure test purposes"

    goto :goto_59

    .line 104
    :cond_4d
    const-string v2, "title"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v4, "text"

    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    :goto_59
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    const-string v6, "channel id"

    invoke-virtual {p1, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v5, 0x1

    .line 123
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 124
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Color;->toARGB()I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 126
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->createDeleteIntent(Landroid/content/Context;Linfo/flowersoft/theotown/util/json/JSONObject;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v1, Linfo/flowersoft/theotown/theotown/R$drawable;->ic_notification:I

    .line 127
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 128
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 129
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 132
    :try_start_9f
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 133
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 134
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 135
    const-string p1, "INTENTService"

    const-string v0, "Notified"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ba} :catch_bb

    return-void

    :catch_bb
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
