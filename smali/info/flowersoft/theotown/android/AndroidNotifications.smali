###### Class info.flowersoft.theotown.android.AndroidNotifications (info.flowersoft.theotown.android.AndroidNotifications)
.class public Linfo/flowersoft/theotown/android/AndroidNotifications;
.super Ljava/lang/Object;
.source "AndroidNotifications.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/Notifications;


# instance fields
.field public notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

.field public runningRightNow:Z

.field public subscribed:Z

.field public subscribedOnline:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .registers 7

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribed:Z

    .line 18
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribedOnline:Z

    .line 22
    new-instance v1, Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/theotown/R$string;->channel_city_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Linfo/flowersoft/theotown/theotown/R$string;->channel_city_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    const-string v4, "city"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/notification/NotificationHandler;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/theotown/R$string;->channel_onlinemode_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Linfo/flowersoft/theotown/theotown/R$string;->channel_onlinemode_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    const-string v4, "onlinemode"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/notification/NotificationHandler;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->runningRightNow:Z

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->cancelAll()V

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidNotifications$1;-><init>(Linfo/flowersoft/theotown/android/AndroidNotifications;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/android/AndroidNotifications;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->runningRightNow:Z

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribed:Z

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribedOnline:Z

    return p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;
    .registers 1

    .line 11
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 21

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v7, v0, p4

    .line 80
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    const-string v3, "city"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Linfo/flowersoft/theotown/notification/NotificationHandler;->addNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->removeNotification(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setSubscription(ZZ)V
    .registers 4

    .line 67
    iput-boolean p1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribed:Z

    .line 68
    iput-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->subscribedOnline:Z

    .line 70
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->runningRightNow:Z

    if-eqz v0, :cond_f

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    return-void

    .line 73
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications;->notificationHandler:Linfo/flowersoft/theotown/notification/NotificationHandler;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidNotifications.AnonymousClass1 (info.flowersoft.theotown.android.AndroidNotifications$1)
.class public Linfo/flowersoft/theotown/android/AndroidNotifications$1;
.super Ljava/lang/Object;
.source "AndroidNotifications.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidNotifications;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidNotifications;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 6

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v1}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$100(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v2}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$200(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setLastShownOnlineNotificationTime(J)V

    return-void
.end method

.method public pause()V
    .registers 6

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$002(Linfo/flowersoft/theotown/android/AndroidNotifications;Z)Z

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v1}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$100(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v2}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$200(Linfo/flowersoft/theotown/android/AndroidNotifications;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setLastShownOnlineNotificationTime(J)V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$002(Linfo/flowersoft/theotown/android/AndroidNotifications;Z)Z

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/notification/NotificationHandler;->setEnabled(ZZ)V

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidNotifications$1;->this$0:Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidNotifications;->access$300(Linfo/flowersoft/theotown/android/AndroidNotifications;)Linfo/flowersoft/theotown/notification/NotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/notification/NotificationHandler;->cancelAll()V

    return-void
.end method
