###### Class io.bidmachine.iab.vast.activity.VastActivity (io.bidmachine.iab.vast.activity.VastActivity)
.class public Lio/bidmachine/iab/vast/activity/VastActivity;
.super Lio/bidmachine/rendering/internal/AdActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/activity/VastActivity$b;,
        Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;

.field public static final i:Ljava/util/Map;

.field public static j:Ljava/lang/ref/WeakReference;

.field public static k:Ljava/lang/ref/WeakReference;

.field public static l:Ljava/lang/ref/WeakReference;


# instance fields
.field public final a:Lio/bidmachine/iab/vast/VastViewListener;

.field public b:Lio/bidmachine/iab/vast/VastRequest;

.field public c:Lio/bidmachine/iab/vast/activity/VastView;

.field public d:Lio/bidmachine/iab/vast/VastActivityListener;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/AdActivity;-><init>()V

    .line 27
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/vast/activity/VastActivity$b;-><init>(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/activity/VastActivity$a;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->a:Lio/bidmachine/iab/vast/VastViewListener;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;
    .registers 1

    .line 8
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Lio/bidmachine/iab/vast/VastActivityListener;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 5
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 1

    .line 6
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/VastRequest;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 4
    invoke-static {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastActivity;I)V
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Z)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 1

    .line 2
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(Lio/bidmachine/iab/vast/VastRequest;)V

    return-void
.end method

.method public static b(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;)V
    .registers 4

    .line 3
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 4

    .line 4
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static d(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastActivityListener;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_1c

    .line 6
    :cond_15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/vast/VastActivityListener;

    return-object p0

    .line 7
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/VastRequest;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/activity/VastView;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_1c

    .line 6
    :cond_15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/vast/activity/VastView;

    return-object p0

    .line 7
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(Lio/bidmachine/iab/vast/VastRequest;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->handleBackPress()V

    :cond_7
    return-void
.end method

.method public final a(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x7

    goto :goto_b

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    const/4 p1, 0x6

    goto :goto_b

    :cond_a
    const/4 p1, 0x4

    .line 16
    :goto_b
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 17
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Lio/bidmachine/iab/vast/VastActivityListener;

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0, p1, p2}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastShowFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    :cond_7
    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequest;Z)V
    .registers 5

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Lio/bidmachine/iab/vast/VastActivityListener;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    if-nez v1, :cond_b

    .line 20
    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastDismiss(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Z)V

    :cond_b
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    .line 24
    :try_start_e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VastActivity"

    invoke-static {v1, p2, v0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    if-eqz p1, :cond_2e

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getRequestedOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(I)V

    .line 31
    :cond_2e
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/activity/VastView;)V
    .registers 2

    .line 9
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->prepareFullscreen(Landroid/app/Activity;)V

    .line 10
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 12
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->applyFullscreen(Landroid/app/Activity;)V

    .line 13
    invoke-static {p0}, Lio/bidmachine/iab/utils/Utils;->applyWindowInsets(Landroid/app/Activity;)V

    return-void
.end method

.method public final c(Lio/bidmachine/iab/vast/VastRequest;)Ljava/lang/Integer;
    .registers 4

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getForceOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result p1

    if-eqz p1, :cond_23

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_23

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/AdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vast_request_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequestManager;->get(Ljava/lang/String;)Lio/bidmachine/iab/vast/VastRequest;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz p1, :cond_21

    .line 6
    const-string v0, "isFinishedPerformed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 10
    :cond_21
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    if-nez v0, :cond_34

    .line 11
    const-string p1, "VastRequest is null"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Z)V

    return-void

    :cond_34
    if-nez p1, :cond_59

    .line 16
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->c(Lio/bidmachine/iab/vast/VastRequest;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(I)V

    .line 20
    :try_start_43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_53} :catch_59

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_59

    goto/16 :goto_d2

    .line 31
    :catch_59
    :cond_59
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->d(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Lio/bidmachine/iab/vast/VastActivityListener;

    .line 32
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->e(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/activity/VastView;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    const/4 v1, 0x1

    if-nez v0, :cond_75

    .line 34
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    .line 35
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 37
    :cond_75
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 38
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->a:Lio/bidmachine/iab/vast/VastViewListener;

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->setListener(Lio/bidmachine/iab/vast/VastViewListener;)V

    .line 39
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_90

    .line 40
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/VastPlaybackListener;

    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setPlaybackListener(Lio/bidmachine/iab/vast/VastPlaybackListener;)V

    .line 42
    :cond_90
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9f

    .line 43
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/measurer/VastAdMeasurer;

    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)V

    .line 45
    :cond_9f
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_ae

    .line 46
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setPostBannerAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V

    :cond_ae
    if-eqz p1, :cond_bf

    .line 50
    const-string v0, "isLoadPerformed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b9

    goto :goto_bf

    .line 56
    :cond_b9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastView;)V

    goto :goto_d2

    .line 57
    :cond_bf
    :goto_bf
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->f:Z

    .line 58
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->display(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 59
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastView;)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_39

    .line 4
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/activity/VastView;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Z)V

    .line 5
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    if-eqz v0, :cond_28

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->destroy()V

    .line 8
    :cond_28
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(Lio/bidmachine/iab/vast/VastRequest;)V

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    .line 11
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    .line 12
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    :cond_39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->f:Z

    const-string v1, "isLoadPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    const-string v1, "isFinishedPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.activity.VastActivity.Builder (io.bidmachine.iab.vast.activity.VastActivity$Builder)
.class public Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lio/bidmachine/iab/vast/VastRequest;

.field public b:Lio/bidmachine/iab/vast/VastActivityListener;

.field public c:Lio/bidmachine/iab/vast/activity/VastView;

.field public d:Lio/bidmachine/iab/vast/VastPlaybackListener;

.field public e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

.field public f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_10

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    return-object v0
.end method

.method public display(Landroid/content/Context;)Lio/bidmachine/iab/IabError;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    const-string v1, "VastActivity"

    if-nez v0, :cond_13

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VastRequest is null"

    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 v2, 0x0

    .line 7
    :try_start_14
    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequestManager;->store(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 8
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    const-string v3, "vast_request_id"

    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-virtual {v4}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->b:Lio/bidmachine/iab/vast/VastActivityListener;

    if-eqz v3, :cond_32

    .line 12
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v4, v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;)V

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_75

    .line 14
    :cond_32
    :goto_32
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->c:Lio/bidmachine/iab/vast/activity/VastView;

    if-eqz v3, :cond_3b

    .line 15
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v4, v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 17
    :cond_3b
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    if-eqz v3, :cond_4a

    .line 18
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_4d

    .line 20
    :cond_4a
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 22
    :goto_4d
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    if-eqz v3, :cond_5c

    .line 23
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_5f

    .line 25
    :cond_5c
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 27
    :goto_5f
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v3, :cond_6e

    .line 28
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->c(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_71

    .line 30
    :cond_6e
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->c(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 32
    :goto_71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_74
    .catchall {:try_start_14 .. :try_end_74} :catchall_30

    return-object v2

    .line 35
    :goto_75
    invoke-static {v1, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 38
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 39
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 40
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 41
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->c(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 42
    const-string v0, "Exception during displaying VastActivity"

    invoke-static {v0, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    return-object p1
.end method

.method public setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastAdMeasurer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-object p0
.end method

.method public setListener(Lio/bidmachine/iab/vast/VastActivityListener;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->b:Lio/bidmachine/iab/vast/VastActivityListener;

    return-object p0
.end method

.method public setPlaybackListener(Lio/bidmachine/iab/vast/VastPlaybackListener;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastPlaybackListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    return-object p0
.end method

.method public setPostBannerAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mraidAdMeasurer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    return-object p0
.end method

.method public setRequest(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    return-object p0
.end method

.method public setVastView(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->c:Lio/bidmachine/iab/vast/activity/VastView;

    return-object p0
.end method

###### Class io.bidmachine.iab.vast.activity.VastActivity.a (io.bidmachine.iab.vast.activity.VastActivity$a)
.class public abstract synthetic Lio/bidmachine/iab/vast/activity/VastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.iab.vast.activity.VastActivity.b (io.bidmachine.iab.vast.activity.VastActivity$b)
.class public Lio/bidmachine/iab/vast/activity/VastActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/activity/VastActivity;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/activity/VastActivity$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity$b;-><init>(Lio/bidmachine/iab/vast/activity/VastActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2, p3, p4}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastClick(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onComplete(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastComplete(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V

    :cond_13
    return-void
.end method

.method public onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public onOrientationRequested(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;I)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/VastRequest;->getForceOrientation()I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_8

    move p3, p1

    .line 6
    :cond_8
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;I)V

    return-void
.end method

.method public onShowFailed(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onShown(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->a(Lio/bidmachine/iab/vast/activity/VastActivity;)Lio/bidmachine/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$b;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastShown(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V

    :cond_13
    return-void
.end method
