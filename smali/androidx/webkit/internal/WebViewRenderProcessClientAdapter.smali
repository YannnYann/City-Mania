###### Class androidx.webkit.internal.WebViewRenderProcessClientAdapter (androidx.webkit.internal.WebViewRenderProcessClientAdapter)
.class public Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;
.super Ljava/lang/Object;
.source "WebViewRenderProcessClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewRendererClientBoundaryInterface;


# static fields
.field public static final sSupportedFeatures:[Ljava/lang/String;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$w98n_4UT5o8VQO1T2imMYR7JUSc(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .registers 3

    const/4 p0, 0x0

    .line 81
    throw p0
.end method

.method public static synthetic $r8$lambda$x3VM5dA6hVO6zLS4DrJneJlIE28(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .registers 3

    const/4 p0, 0x0

    .line 99
    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->sSupportedFeatures:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .registers 2

    .line 64
    sget-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->sSupportedFeatures:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .registers 6

    .line 94
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object p2

    .line 96
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRendererUnresponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .registers 6

    .line 76
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object p2

    .line 78
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0 (androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Landroidx/webkit/WebViewRenderProcess;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/webkit/WebViewRenderProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/webkit/WebViewRenderProcess;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->$r8$lambda$x3VM5dA6hVO6zLS4DrJneJlIE28(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1 (androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Landroidx/webkit/WebViewRenderProcess;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;->f$2:Landroidx/webkit/WebViewRenderProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1;->f$2:Landroidx/webkit/WebViewRenderProcess;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->$r8$lambda$w98n_4UT5o8VQO1T2imMYR7JUSc(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    return-void
.end method
