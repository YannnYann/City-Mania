###### Class info.flowersoft.theotown.online.OnlineNotificationManager (info.flowersoft.theotown.online.OnlineNotificationManager)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationManager;
.super Ljava/lang/Object;
.source "OnlineNotificationManager.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/online/OnlineNotificationManager;


# instance fields
.field public lastQueryTime:J

.field public lastResultTime:J

.field public newDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;"
        }
    .end annotation
.end field

.field public unseenNotificationsCtr:I

.field public uploader:Linfo/flowersoft/theotown/online/RegionUploader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/RegionUploader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->notifications:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->newDataListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/online/OnlineNotificationManager;I)I
    .registers 2

    .line 14
    iput p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->unseenNotificationsCtr:I

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->notifications:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/online/OnlineNotificationManager;J)J
    .registers 3

    .line 14
    iput-wide p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->lastResultTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)Ljava/util/List;
    .registers 1

    .line 14
    iget-object p0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->newDataListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Linfo/flowersoft/theotown/util/json/JSONArray;)Ljava/util/List;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->buildNotifications(Linfo/flowersoft/theotown/util/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;
    .registers 2

    .line 162
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->instance:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    if-nez v0, :cond_19

    .line 163
    const-class v0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    monitor-enter v0

    .line 164
    :try_start_7
    sget-object v1, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->instance:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    if-nez v1, :cond_15

    .line 165
    new-instance v1, Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-direct {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;-><init>()V

    sput-object v1, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->instance:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 167
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 169
    :cond_19
    :goto_19
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->instance:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    return-object v0
.end method


# virtual methods
.method public final buildNotifications(Linfo/flowersoft/theotown/util/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 102
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_30

    .line 104
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    :goto_13
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 107
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 110
    :try_start_1f
    new-instance v3, Linfo/flowersoft/theotown/online/VirtualNotification;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/online/VirtualNotification;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 111
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2f
    return-object v1

    .line 102
    :cond_30
    :goto_30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public fetch(Z)V
    .registers 8

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez p1, :cond_24

    iget-wide v2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->lastQueryTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_24

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long p1, v2, v4

    if-lez p1, :cond_34

    iget-wide v2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->lastResultTime:J

    sub-long v2, v0, v2

    cmp-long p1, v2, v4

    if-lez p1, :cond_34

    .line 54
    :cond_24
    iput-wide v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->lastQueryTime:J

    .line 56
    new-instance p1, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V

    new-instance v0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$3;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetchDirect(ZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_34
    return-void
.end method

.method public fetchDirect(ZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;>;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    new-instance v1, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;

    invoke-direct {v1, p0, p2, p3}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/online/RegionUploader;->listNotifications(Linfo/flowersoft/theotown/backend/Service$Handler;Z)V

    return-void

    .line 97
    :cond_11
    const-string p1, "Not logged in"

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getNotifications()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public getUnseenNotificationsCount()I
    .registers 2

    .line 150
    iget v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->unseenNotificationsCtr:I

    return v0
.end method

.method public isAvailable()Z
    .registers 3

    .line 27
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public markAsRead()V
    .registers 3

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    new-instance v1, Linfo/flowersoft/theotown/online/OnlineNotificationManager$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$1;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/RegionUploader;->markNotificationsAsSeen(Linfo/flowersoft/theotown/backend/Service$Handler;)V

    :cond_10
    return-void
.end method

.method public resetUnseenCounter()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->unseenNotificationsCtr:I

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationManager.AnonymousClass1 (info.flowersoft.theotown.online.OnlineNotificationManager$1)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationManager$1;
.super Ljava/lang/Object;
.source "OnlineNotificationManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationManager;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationManager.AnonymousClass2 (info.flowersoft.theotown.online.OnlineNotificationManager$2)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;
.super Ljava/lang/Object;
.source "OnlineNotificationManager.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

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

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->set(Ljava/util/List;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 60
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/online/VirtualNotification;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualNotification;->getSeenTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    :cond_1e
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$002(Linfo/flowersoft/theotown/online/OnlineNotificationManager;I)I

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$102(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Ljava/util/List;)Ljava/util/List;

    .line 68
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$202(Linfo/flowersoft/theotown/online/OnlineNotificationManager;J)J

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    monitor-enter p1

    .line 70
    :goto_34
    :try_start_34
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$300(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$300(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :catchall_52
    move-exception v0

    goto :goto_56

    .line 73
    :cond_54
    monitor-exit p1

    return-void

    :goto_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_52

    throw v0
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationManager.AnonymousClass3 (info.flowersoft.theotown.online.OnlineNotificationManager$3)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationManager$3;
.super Ljava/lang/Object;
.source "OnlineNotificationManager.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$3;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

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

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager$3;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationManager.AnonymousClass4 (info.flowersoft.theotown.online.OnlineNotificationManager$4)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;
.super Ljava/lang/Object;
.source "OnlineNotificationManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetchDirect(ZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "status"

    const-string v2, "Error"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationManager$4;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    const-string v2, "notifications"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->access$400(Linfo/flowersoft/theotown/online/OnlineNotificationManager;Linfo/flowersoft/theotown/util/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method
