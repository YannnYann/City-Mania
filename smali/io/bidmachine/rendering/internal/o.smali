###### Class io.bidmachine.rendering.internal.o (io.bidmachine.rendering.internal.o)
.class public final Lio/bidmachine/rendering/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/o$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/rendering/internal/o$a;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$Bx0zRqVxL4X9C8RjGJk4h7MZszo(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o;->a(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/o;->b:Lio/bidmachine/rendering/internal/o$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/o;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o;->c(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/iab/mraid/MraidCalendarEvent;)Landroid/content/Intent;
    .registers 8

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Intent.ACTION_INS\u2026IN_TIME, this.start.time)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 51
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    :cond_39
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getSummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 55
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_44
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 59
    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_4f
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getStatus()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_72

    .line 64
    const-string v5, "confirmed"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    move v1, v4

    goto :goto_6d

    .line 68
    :cond_62
    const-string v5, "cancelled"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v3

    goto :goto_6d

    :cond_6c
    move v1, v2

    .line 76
    :goto_6d
    const-string v5, "eventStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    :cond_72
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getTransparency()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 81
    const-string v5, "transparent"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    move v2, v4

    goto :goto_8c

    .line 85
    :cond_82
    const-string v4, "opaque"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v2, v3

    .line 93
    :goto_8c
    const-string v1, "availability"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    :cond_91
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidCalendarEvent;->getRecurrence()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 97
    const-string v1, "rrule"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9c
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IntentLauncher"

    if-nez p2, :cond_1d

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "launch - Uri is null"

    invoke-static {v0, p2, p1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 4
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 12
    :cond_1d
    invoke-static {p2}, Lio/bidmachine/util/UrlUtilsKt;->isHttp(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o;->b(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 17
    :cond_27
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 18
    sget-object v0, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 19
    invoke-static {p1, p2}, Lio/bidmachine/util/IntentUtilsKt;->openUri(Landroid/content/Context;Landroid/net/Uri;)Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 25
    :cond_37
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "launch - Invalid uri: %s"

    invoke-static {v0, p2, p1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 28
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 29
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidCalendarEvent;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidCalendarEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o;->b(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidCalendarEvent;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;Landroid/content/Context;Lio/bidmachine/util/Executable;)V
    .registers 4

    .line 32
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 34
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getSUCCESS()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    .line 40
    invoke-static {p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    .line 42
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 43
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 44
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/o;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidCalendarEvent;Lio/bidmachine/util/Executable;)V
    .registers 4

    .line 3
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/o;->a(Lio/bidmachine/iab/mraid/MraidCalendarEvent;)Landroid/content/Intent;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lio/bidmachine/util/IntentUtilsKt;->toChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2, p1, p3}, Lio/bidmachine/rendering/internal/o;->a(Landroid/content/Intent;Landroid/content/Context;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p1, p2, p3}, Lio/bidmachine/util/IntentUtilsKt;->findEndpointAndOpenUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.o.a (io.bidmachine.rendering.internal.o$a)
.class public final Lio/bidmachine/rendering/internal/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/o$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.o$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.o$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/o;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Lio/bidmachine/util/Executable;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/o;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/util/Executable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/o;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/o$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/util/Executable;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/rendering/internal/o;->$r8$lambda$Bx0zRqVxL4X9C8RjGJk4h7MZszo(Lio/bidmachine/rendering/internal/o;Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method
