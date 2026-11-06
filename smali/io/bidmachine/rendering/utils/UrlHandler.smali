###### Class io.bidmachine.rendering.utils.UrlHandler (io.bidmachine.rendering.utils.UrlHandler)
.class public final Lio/bidmachine/rendering/utils/UrlHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/rendering/utils/UrlHandler;

.field public static final a:Lio/bidmachine/rendering/internal/o;

.field public static final b:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

.field public static final c:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/bidmachine/rendering/utils/UrlHandler;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/UrlHandler;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->INSTANCE:Lio/bidmachine/rendering/utils/UrlHandler;

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/o;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/o;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->a:Lio/bidmachine/rendering/internal/o;

    .line 8
    new-instance v1, Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;

    invoke-direct {v1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;-><init>()V

    .line 9
    new-instance v2, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/rendering/internal/deeplinkprocessor/e;-><init>(Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;Lio/bidmachine/rendering/internal/o;)V

    sput-object v2, Lio/bidmachine/rendering/utils/UrlHandler;->b:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    .line 13
    new-instance v0, Lio/bidmachine/rendering/internal/deeplinkprocessor/f;

    .line 15
    new-instance v3, Lio/bidmachine/rendering/internal/x;

    invoke-direct {v3}, Lio/bidmachine/rendering/internal/x;-><init>()V

    .line 16
    invoke-direct {v0, v1, v3}, Lio/bidmachine/rendering/internal/deeplinkprocessor/f;-><init>(Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;Lio/bidmachine/rendering/internal/x;)V

    sput-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->c:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    .line 23
    new-instance v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;

    invoke-direct {v1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/a;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 24
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final openBrowser$bidmachine_android_sdk_bb_3_8_0(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->a:Lio/bidmachine/rendering/internal/o;

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/rendering/internal/o;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final openCalendar(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->b:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    .line 4
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5
    invoke-interface {v1, p0, p1, p2}, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;->a(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void

    .line 13
    :cond_26
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/utils/UrlHandler;->openBrowser$bidmachine_android_sdk_bb_3_8_0(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final openUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/util/UrlUtilsKt;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Landroid/net/Uri;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final storePicture(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UrlHandler;->c:Lio/bidmachine/rendering/internal/deeplinkprocessor/b;

    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/rendering/internal/deeplinkprocessor/b;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final track$bidmachine_android_sdk_bb_3_8_0(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lio/bidmachine/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1f

    .line 6
    :cond_d
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    sget-object v1, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V

    .line 7
    invoke-static {}, Lio/bidmachine/rendering/Rendering;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->setUserAgent(Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->send()Lio/bidmachine/rendering/utils/NetworkRequest;

    :cond_1f
    :goto_1f
    return-void
.end method
