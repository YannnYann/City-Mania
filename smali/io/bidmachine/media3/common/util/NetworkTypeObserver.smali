###### Class io.bidmachine.media3.common.util.NetworkTypeObserver (io.bidmachine.media3.common.util.NetworkTypeObserver)
.class public final Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;,
        Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;,
        Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;,
        Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31;
    }
.end annotation


# static fields
.field public static staticInstance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public isInitialized:Z

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final lock:Ljava/lang/Object;

.field public networkType:I


# direct methods
.method public static synthetic $r8$lambda$jReEOHtp3h889CaNbfKjxVhDXv8(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lio/bidmachine/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 98
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->networkType:I

    .line 101
    new-instance v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 53
    iget-object p0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->handleConnectivityActionBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/common/util/NetworkTypeObserver;I)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lio/bidmachine/media3/common/util/NetworkTypeObserver;
    .registers 3

    const-class v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->staticInstance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    if-nez v1, :cond_11

    .line 85
    new-instance v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->staticInstance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 87
    :cond_11
    :goto_11
    sget-object p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->staticInstance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method

.method public static getMobileNetworkType(Landroid/net/NetworkInfo;)I
    .registers 2

    .line 221
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_1c

    :pswitch_7
    const/4 p0, 0x6

    return p0

    .line 242
    :pswitch_9
    sget p0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_12

    const/16 p0, 0x9

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_16
    const/4 p0, 0x5

    return p0

    :pswitch_18
    const/4 p0, 0x4

    return p0

    :pswitch_1a
    const/4 p0, 0x3

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_7
        :pswitch_18
        :pswitch_14
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    .registers 3

    .line 190
    const-string v0, "connectivity"

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 196
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_10} :catch_3c

    const/4 v0, 0x1

    if-eqz p0, :cond_3c

    .line 201
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3c

    .line 204
    :cond_1a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_37

    if-eq v1, v0, :cond_35

    const/4 v0, 0x4

    if-eq v1, v0, :cond_37

    const/4 v0, 0x5

    if-eq v1, v0, :cond_37

    const/4 p0, 0x6

    if-eq v1, p0, :cond_34

    const/16 p0, 0x9

    if-eq v1, p0, :cond_32

    const/16 p0, 0x8

    return p0

    :cond_32
    const/4 p0, 0x7

    return p0

    :cond_34
    return v0

    :cond_35
    const/4 p0, 0x2

    return p0

    .line 212
    :cond_37
    invoke-static {p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->getMobileNetworkType(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0

    :catch_3c
    :cond_3c
    :goto_3c
    return v0
.end method


# virtual methods
.method public getNetworkType()I
    .registers 3

    .line 140
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final handleConnectivityActionBroadcast(Landroid/content/Context;)V
    .registers 5

    .line 161
    invoke-static {p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I

    move-result v0

    .line 162
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_11

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 164
    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31;->disambiguate4gAnd5gNsa(Landroid/content/Context;Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V

    return-void

    .line 166
    :cond_11
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Lio/bidmachine/media3/common/util/NetworkTypeObserver$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public register(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 124
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->removeClearedReferences()V

    .line 126
    new-instance v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V

    .line 127
    iget-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 128
    :try_start_b
    iget-object p2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-boolean p2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    .line 130
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    if-eqz p2, :cond_18

    .line 134
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->callOnNetworkTypeChanged()V

    :cond_18
    return-void

    :catchall_19
    move-exception p2

    .line 130
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p2
.end method

.method public final removeClearedReferences()V
    .registers 4

    .line 153
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 154
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->canBeRemoved()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    iget-object v2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public final updateNetworkType(I)V
    .registers 4

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->removeClearedReferences()V

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_6
    iget-boolean v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    if-eqz v1, :cond_12

    iget v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p1, :cond_12

    .line 175
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_2f

    :cond_12
    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    .line 178
    iput p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->networkType:I

    .line 179
    iget-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 180
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_10

    .line 181
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->callOnNetworkTypeChanged()V

    goto :goto_1e

    :cond_2e
    return-void

    .line 180
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_10

    throw p1
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.AnonymousClass1 (io.bidmachine.media3.common.util.NetworkTypeObserver$1)
.class public synthetic Lio/bidmachine/media3/common/util/NetworkTypeObserver$1;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.Api31 (io.bidmachine.media3.common.util.NetworkTypeObserver$Api31)
.class public final Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    }
.end annotation


# direct methods
.method public static disambiguate4gAnd5gNsa(Landroid/content/Context;Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V
    .registers 4

    .line 265
    :try_start_0
    const-string v0, "phone"

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 267
    new-instance v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V

    .line 268
    invoke-static {p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->access$100(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 271
    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$$ExternalSyntheticApiModelOutline1;->m(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    const/4 p0, 0x5

    .line 274
    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->access$300(Lio/bidmachine/media3/common/util/NetworkTypeObserver;I)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.Api31.DisplayInfoCallback (io.bidmachine.media3.common.util.NetworkTypeObserver$Api31$DisplayInfoCallback)
.class public final Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkTypeObserver.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfoCallback"
.end annotation


# instance fields
.field public final instance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V
    .registers 2

    .line 283
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 284
    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    .line 289
    invoke-static {p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyDisplayInfo;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eq p1, v0, :cond_10

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    .line 294
    :goto_11
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    if-eqz p1, :cond_17

    const/16 v1, 0xa

    :cond_17
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->access$300(Lio/bidmachine/media3/common/util/NetworkTypeObserver;I)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.Listener (io.bidmachine.media3.common.util.NetworkTypeObserver$Listener)
.class public interface abstract Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNetworkTypeChanged(I)V
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.ListenerHolder (io.bidmachine.media3.common.util.NetworkTypeObserver$ListenerHolder)
.class public final Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;


# direct methods
.method public static synthetic $r8$lambda$0tDJWYQjM7L_cfmlMsv2SGQpzTc(Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .registers 2

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    .line 317
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;

    if-eqz v0, :cond_13

    .line 319
    iget-object p0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result p0

    invoke-interface {v0, p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 305
    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    .line 307
    iput-object p3, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public callOnNetworkTypeChanged()V
    .registers 3

    .line 315
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canBeRemoved()Z
    .registers 2

    .line 311
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.util.NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;->$r8$lambda$0tDJWYQjM7L_cfmlMsv2SGQpzTc(Lio/bidmachine/media3/common/util/NetworkTypeObserver$ListenerHolder;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver.Receiver (io.bidmachine.media3.common.util.NetworkTypeObserver$Receiver)
.class public final Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;


# direct methods
.method public static synthetic $r8$lambda$o_1Af7EHfIzXZlUmVj_wLRA2sCs(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;Landroid/content/Context;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    .line 256
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->access$200(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Lio/bidmachine/media3/common/util/NetworkTypeObserver$1;)V
    .registers 3

    .line 252
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 256
    iget-object p2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;->this$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->access$100(Lio/bidmachine/media3/common/util/NetworkTypeObserver;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.util.NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;

    iput-object p2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;->$r8$lambda$o_1Af7EHfIzXZlUmVj_wLRA2sCs(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Receiver;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.NetworkTypeObserver$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.util.NetworkTypeObserver$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    iput-object p2, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->$r8$lambda$jReEOHtp3h889CaNbfKjxVhDXv8(Lio/bidmachine/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    return-void
.end method
