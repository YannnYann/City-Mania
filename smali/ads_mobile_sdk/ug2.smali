###### Class ads_mobile_sdk.ug2 (ads_mobile_sdk.ug2)
.class public final Lads_mobile_sdk/ug2;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ah2;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ah2;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ug2;->a:Lads_mobile_sdk/ah2;

    iput-object p2, p0, Lads_mobile_sdk/ug2;->b:Landroid/app/Activity;

    iput-object p3, p0, Lads_mobile_sdk/ug2;->c:Landroid/net/Uri;

    iput-object p4, p0, Lads_mobile_sdk/ug2;->d:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/ug2;->e:Ljava/util/Map;

    .line 684
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .registers 16

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    .line 691
    :try_start_d
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 692
    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_16

    :goto_14
    move-object v8, p1

    goto :goto_3f

    :catch_16
    move-exception v0

    move-object p2, v0

    .line 695
    iget-object v0, p0, Lads_mobile_sdk/ug2;->a:Lads_mobile_sdk/ah2;

    .line 696
    iget-object v1, v0, Lads_mobile_sdk/ah2;->t:Lkotlinx/coroutines/CoroutineScope;

    .line 697
    new-instance v2, Lads_mobile_sdk/tg2;

    invoke-direct {v2, v0, p2, p1}, Lads_mobile_sdk/tg2;-><init>(Lads_mobile_sdk/ah2;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    move-object p2, v2

    .line 698
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 699
    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p2, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_14

    .line 958
    :goto_3f
    :try_start_3f
    iget-object v7, p0, Lads_mobile_sdk/ug2;->a:Lads_mobile_sdk/ah2;

    iget-object v9, p0, Lads_mobile_sdk/ug2;->b:Landroid/app/Activity;

    iget-object v10, p0, Lads_mobile_sdk/ug2;->c:Landroid/net/Uri;

    iget-object v11, p0, Lads_mobile_sdk/ug2;->d:Ljava/lang/String;

    iget-object v12, p0, Lads_mobile_sdk/ug2;->e:Ljava/util/Map;

    .line 959
    invoke-virtual/range {v7 .. v12}, Lads_mobile_sdk/ah2;->a(Landroidx/browser/customtabs/CustomTabsSession;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_52

    .line 960
    iget-object p1, p0, Lads_mobile_sdk/ug2;->b:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catchall_52
    move-exception v0

    move-object p1, v0

    .line 961
    iget-object p2, p0, Lads_mobile_sdk/ug2;->b:Landroid/app/Activity;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
