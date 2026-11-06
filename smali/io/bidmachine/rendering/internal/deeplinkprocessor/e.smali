###### Class io.bidmachine.rendering.internal.deeplinkprocessor.e (io.bidmachine.rendering.internal.deeplinkprocessor.e)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/deeplinkprocessor/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;
    }
.end annotation


# static fields
.field public static final c:Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;

.field public final b:Lio/bidmachine/rendering/internal/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;->c:Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;Lio/bidmachine/rendering/internal/o;)V
    .registers 4

    const-string v0, "mraidNativeFeatureUrlParser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentLauncher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;->b:Lio/bidmachine/rendering/internal/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;

    invoke-virtual {v0, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;->parseCalendarEvent(Landroid/net/Uri;)Lio/bidmachine/iab/mraid/MraidCalendarEvent;

    move-result-object p2

    if-nez p2, :cond_28

    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "MraidCalendarDeeplinkProcessor"

    const-string v0, "processUrl (mraidCalendarEvent is null)"

    invoke-static {p2, v0, p1}, Lio/bidmachine/iab/utils/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 7
    sget-object p2, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void

    .line 14
    :cond_28
    iget-object v0, p0, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;->b:Lio/bidmachine/rendering/internal/o;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/rendering/internal/o;->a(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidCalendarEvent;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "calendar"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.rendering.internal.deeplinkprocessor.e.a (io.bidmachine.rendering.internal.deeplinkprocessor.e$a)
.class public final Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/deeplinkprocessor/e;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/deeplinkprocessor/e$a;-><init>()V

    return-void
.end method
