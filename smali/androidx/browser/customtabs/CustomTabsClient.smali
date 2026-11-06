###### Class androidx.browser.customtabs.CustomTabsClient (androidx.browser.customtabs.CustomTabsClient)
.class public Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field public final mApplicationContext:Landroid/content/Context;

.field public final mService:Landroid/support/customtabs/ICustomTabsService;

.field public final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;Landroid/content/Context;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 66
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 67
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .registers 5

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;->setApplicationContext(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x21

    .line 90
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    .line 87
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Service Intents must be explicit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p1, :cond_c

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :cond_c
    move-object v0, p1

    .line 160
    :goto_d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "http://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    if-nez p2, :cond_3b

    .line 163
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 165
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3a

    .line 168
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    move-object v0, v1

    .line 172
    :cond_3b
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_46

    return-object v0

    .line 178
    :cond_5c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_69

    .line 179
    const-string p0, "CustomTabsClient"

    const-string p1, "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final createCallbackWrapper(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/ICustomTabsCallback$Stub;
    .registers 3

    .line 508
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V

    return-object v0
.end method

.method public newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .registers 3

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSessionInternal(Landroidx/browser/customtabs/CustomTabsCallback;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    return-object p1
.end method

.method public final newSessionInternal(Landroidx/browser/customtabs/CustomTabsCallback;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsSession;
    .registers 6

    .line 473
    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/CustomTabsClient;->createCallbackWrapper(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/ICustomTabsCallback$Stub;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    .line 479
    :try_start_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 481
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v2, p1, v1}, Landroid/support/customtabs/ICustomTabsService;->newSessionWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_1e

    .line 483
    :cond_18
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v1, p1}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_2a

    :goto_1e
    if-nez v1, :cond_21

    return-object v0

    .line 490
    :cond_21
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSession;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    :catch_2a
    return-object v0
.end method

.method public warmup(J)Z
    .registers 4

    .line 236
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3 (androidx.browser.customtabs.CustomTabsClient$3)
.class public Landroidx/browser/customtabs/CustomTabsClient$3;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->createCallbackWrapper(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Landroidx/browser/customtabs/CustomTabsClient;

.field public final synthetic val$callback:Landroidx/browser/customtabs/CustomTabsCallback;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V
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

    .line 508
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->this$0:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 509
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 526
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 540
    :cond_6
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onActivityLayout(IIIIILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 612
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$8;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroidx/browser/customtabs/CustomTabsClient$3$8;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IIIIILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResized(IILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 586
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsClient$3$6;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 547
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$3;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMinimized(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 623
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$9;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$9;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 5

    .line 513
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 514
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$1;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 559
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$4;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 572
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$5;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/CustomTabsClient$3$5;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnminimized(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 635
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$10;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$10;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 598
    :cond_5
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$7;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$7;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass1 (androidx.browser.customtabs.CustomTabsClient$3$1)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$1;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onNavigationEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$navigationEvent:I


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/os/Bundle;)V
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

    .line 514
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->val$navigationEvent:I

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 517
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->val$navigationEvent:I

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass10 (androidx.browser.customtabs.CustomTabsClient$3$10)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$10;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onUnminimized(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V
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

    .line 635
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$10;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$10;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 638
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$10;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$10;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onUnminimized(Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass2 (androidx.browser.customtabs.CustomTabsClient$3$2)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$2;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$args:Landroid/os/Bundle;

.field public final synthetic val$callbackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V
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

    .line 526
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->val$callbackName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 529
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->val$callbackName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.RunnableC00013 (androidx.browser.customtabs.CustomTabsClient$3$3)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$3;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V
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

    .line 547
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 550
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass4 (androidx.browser.customtabs.CustomTabsClient$3$4)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$4;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V
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

    .line 559
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 562
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass5 (androidx.browser.customtabs.CustomTabsClient$3$5)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$5;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$relation:I

.field public final synthetic val$requestedOrigin:Landroid/net/Uri;

.field public final synthetic val$result:Z


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$relation:I

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$requestedOrigin:Landroid/net/Uri;

    iput-boolean p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$result:Z

    iput-object p5, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 575
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$relation:I

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$requestedOrigin:Landroid/net/Uri;

    iget-boolean v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$result:Z

    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/browser/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass6 (androidx.browser.customtabs.CustomTabsClient$3$6)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$6;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onActivityResized(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 586
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$height:I

    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$width:I

    iput-object p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 590
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$height:I

    iget v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$width:I

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityResized(IILandroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass7 (androidx.browser.customtabs.CustomTabsClient$3$7)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$7;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onWarmupCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V
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

    .line 598
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$7;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 601
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$7;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$7;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onWarmupCompleted(Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass8 (androidx.browser.customtabs.CustomTabsClient$3$8)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$8;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onActivityLayout(IIIIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$bottom:I

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$left:I

.field public final synthetic val$right:I

.field public final synthetic val$state:I

.field public final synthetic val$top:I


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;IIIIILandroid/os/Bundle;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$left:I

    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$top:I

    iput p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$right:I

    iput p5, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$bottom:I

    iput p6, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$state:I

    iput-object p7, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 615
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$left:I

    iget v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$top:I

    iget v4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$right:I

    iget v5, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$bottom:I

    iget v6, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$state:I

    iget-object v7, p0, Landroidx/browser/customtabs/CustomTabsClient$3$8;->val$extras:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v7}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.browser.customtabs.CustomTabsClient.AnonymousClass3.AnonymousClass9 (androidx.browser.customtabs.CustomTabsClient$3$9)
.class public Landroidx/browser/customtabs/CustomTabsClient$3$9;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onMinimized(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V
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

    .line 623
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 626
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onMinimized(Landroid/os/Bundle;)V

    return-void
.end method
