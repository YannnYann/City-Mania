###### Class androidx.webkit.internal.WebNavigationClientAdapter (androidx.webkit.internal.WebNavigationClientAdapter)
.class public Landroidx/webkit/internal/WebNavigationClientAdapter;
.super Ljava/lang/Object;
.source "WebNavigationClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewNavigationClientBoundaryInterface;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebNavigationClient;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebNavigationClient()Landroidx/webkit/WebNavigationClient;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstContentfulPaint(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 83
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onNavigationCompleted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 63
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    .line 62
    throw p1
.end method

.method public onNavigationRedirected(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 56
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    .line 55
    throw p1
.end method

.method public onNavigationStarted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 50
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    .line 49
    throw p1
.end method

.method public onPageDOMContentLoadedEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 78
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onPageDeleted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 68
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onPageLoadEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 73
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method
