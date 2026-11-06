###### Class io.bidmachine.rendering.internal.x (io.bidmachine.rendering.internal.x)
.class public final Lio/bidmachine/rendering/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 4

    .line 32
    invoke-static {p1}, Lio/bidmachine/util/Utils;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object p1

    if-nez p1, :cond_9

    const-wide/16 p1, -0x1

    return-wide p1

    .line 33
    :cond_9
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object p2

    const-string v0, "Request(uri)\n           \u2026VISIBLE_NOTIFY_COMPLETED)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 4
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/x;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception p2

    .line 6
    invoke-static {p2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    move-wide v2, v0

    :goto_1f
    cmp-long p2, v2, v0

    if-nez p2, :cond_2f

    .line 9
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 10
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 18
    :cond_2f
    new-instance p2, Lio/bidmachine/rendering/internal/x$a;

    invoke-direct {p2, p3}, Lio/bidmachine/rendering/internal/x$a;-><init>(Lio/bidmachine/util/Executable;)V

    .line 30
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p2, p1, p3}, Lio/bidmachine/util/Utils;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.x.a (io.bidmachine.rendering.internal.x$a)
.class public final Lio/bidmachine/rendering/internal/x$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/x;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/util/Executable;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/Executable;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/rendering/internal/x$a;->a:Lio/bidmachine/util/Executable;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 3
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getSUCCESS()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/x$a;->a:Lio/bidmachine/util/Executable;

    .line 5
    invoke-virtual {p1, p2, v0}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method
