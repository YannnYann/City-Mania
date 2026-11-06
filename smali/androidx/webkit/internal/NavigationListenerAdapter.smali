###### Class androidx.webkit.internal.NavigationListenerAdapter (androidx.webkit.internal.NavigationListenerAdapter)
.class public Landroidx/webkit/internal/NavigationListenerAdapter;
.super Ljava/lang/Object;
.source "NavigationListenerAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewNavigationListenerBoundaryInterface;


# static fields
.field public static final SUPPORTED_FEATURES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "WEB_VIEW_NAVIGATION_LISTENER_V1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/internal/NavigationListenerAdapter;->SUPPORTED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/NavigationListener;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, Landroidx/webkit/internal/NavigationListenerAdapter;

    if-nez v1, :cond_9

    return v0

    .line 93
    :cond_9
    check-cast p1, Landroidx/webkit/internal/NavigationListenerAdapter;

    const/4 p1, 0x0

    .line 94
    throw p1
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .registers 2

    .line 79
    sget-object v0, Landroidx/webkit/internal/NavigationListenerAdapter;->SUPPORTED_FEATURES:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    .line 84
    throw v0
.end method

.method public onFirstContentfulPaint(Ljava/lang/reflect/InvocationHandler;J)V
    .registers 4

    .line 72
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onNavigationCompleted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 52
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    throw p1
.end method

.method public onNavigationRedirected(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 47
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    throw p1
.end method

.method public onNavigationStarted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 42
    invoke-static {p1}, Landroidx/webkit/internal/NavigationImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;

    const/4 p1, 0x0

    throw p1
.end method

.method public onPageDOMContentLoadedEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 67
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onPageDeleted(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 57
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method

.method public onPageLoadEventFired(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2

    .line 62
    invoke-static {p1}, Landroidx/webkit/internal/PageImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    const/4 p1, 0x0

    throw p1
.end method
