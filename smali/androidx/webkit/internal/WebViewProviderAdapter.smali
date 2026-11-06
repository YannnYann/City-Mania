###### Class androidx.webkit.internal.WebViewProviderAdapter (androidx.webkit.internal.WebViewProviderAdapter)
.class public Landroidx/webkit/internal/WebViewProviderAdapter;
.super Ljava/lang/Object;
.source "WebViewProviderAdapter.java"


# instance fields
.field public final mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;


# direct methods
.method public static synthetic $r8$lambda$6g6zPN7zROVAKg6vSfVij1s6edE(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 247
    new-instance v0, Landroidx/webkit/PrerenderException;

    const-string v1, "Prerender operation failed"

    invoke-direct {v0, v1, p1}, Landroidx/webkit/PrerenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroidx/webkit/PrerenderOperationCallback;->onError(Landroidx/webkit/PrerenderException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mfk2sZ2AzKdqLuZC_IrbbdLYjFs(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .registers 2

    .line 213
    invoke-interface {p0}, Landroidx/webkit/PrerenderOperationCallback;->onPrerenderActivated()V

    return-void
.end method

.method public static synthetic $r8$lambda$O-QaiYTPYol708jRlsn2F-uVBpM(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V
    .registers 2

    .line 244
    invoke-interface {p0}, Landroidx/webkit/PrerenderOperationCallback;->onPrerenderActivated()V

    return-void
.end method

.method public static synthetic $r8$lambda$qRWZu2tyEho2Ia5U58_kJZX5gbQ(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 216
    new-instance v0, Landroidx/webkit/PrerenderException;

    const-string v1, "Prerender operation failed"

    invoke-direct {v0, v1, p1}, Landroidx/webkit/PrerenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroidx/webkit/PrerenderOperationCallback;->onError(Landroidx/webkit/PrerenderException;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-void
.end method


# virtual methods
.method public addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/ScriptHandlerImpl;
    .registers 4

    .line 112
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 113
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroidx/webkit/internal/ScriptHandlerImpl;->toScriptHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptHandlerImpl;

    move-result-object p1

    return-object p1
.end method

.method public addNavigationListener(Ljava/util/concurrent/Executor;Landroidx/webkit/NavigationListener;)V
    .registers 4

    .line 304
    new-instance v0, Landroidx/webkit/internal/NavigationListenerAdapter;

    invoke-direct {v0, p2}, Landroidx/webkit/internal/NavigationListenerAdapter;-><init>(Landroidx/webkit/NavigationListener;)V

    .line 305
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    .line 307
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebViewNavigationListener(Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .registers 6

    .line 101
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v1, Landroidx/webkit/internal/WebMessageListenerAdapter;

    invoke-direct {v1, p3}, Landroidx/webkit/internal/WebMessageListenerAdapter;-><init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 102
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p3

    .line 101
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public getProfile()Landroidx/webkit/Profile;
    .registers 3

    .line 180
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 181
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getProfile()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 180
    const-class v1, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-static {v1, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 183
    new-instance v1, Landroidx/webkit/internal/ProfileImpl;

    invoke-direct {v1, v0}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    return-object v1
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .line 134
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebNavigationClient()Landroidx/webkit/WebNavigationClient;
    .registers 3

    .line 289
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewNavigationClient()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 292
    :cond_a
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->getDelegateFromInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/webkit/internal/WebNavigationClientAdapter;

    .line 293
    invoke-virtual {v0}, Landroidx/webkit/internal/WebNavigationClientAdapter;->getWebNavigationClient()Landroidx/webkit/WebNavigationClient;

    return-object v1
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 127
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewRenderProcess()Landroidx/webkit/WebViewRenderProcess;
    .registers 2

    .line 141
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRenderer()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-static {v0}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .registers 3

    .line 148
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRendererClient()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 151
    :cond_a
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->getDelegateFromInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;

    .line 152
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    return-object v1
.end method

.method public isAudioMuted()Z
    .registers 2

    .line 190
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->isAudioMuted()Z

    move-result v0

    return v0
.end method

.method public postWebMessage(Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V
    .registers 5

    .line 89
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v1, Landroidx/webkit/internal/WebMessageAdapter;

    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessageAdapter;-><init>(Landroidx/webkit/WebMessageCompat;)V

    .line 90
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 89
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->postMessageToMainFrame(Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;)V

    return-void
.end method

.method public prerenderUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 11

    .line 211
    new-instance v4, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p4}, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda2;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 215
    new-instance v5, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p4}, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda3;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 218
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->prerenderUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public prerenderUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/SpeculativeLoadingParameters;Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 14

    .line 239
    new-instance v0, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;

    invoke-direct {v0, p4}, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;-><init>(Landroidx/webkit/SpeculativeLoadingParameters;)V

    .line 240
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v5

    .line 242
    new-instance v6, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, p5}, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 246
    new-instance v7, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v7, p5}, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/webkit/PrerenderOperationCallback;)V

    .line 249
    iget-object v1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->prerenderUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public removeNavigationListener(Landroidx/webkit/NavigationListener;)V
    .registers 3

    .line 317
    new-instance v0, Landroidx/webkit/internal/NavigationListenerAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/NavigationListenerAdapter;-><init>(Landroidx/webkit/NavigationListener;)V

    .line 318
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 320
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebViewNavigationListener(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public removeWebMessageListener(Ljava/lang/String;)V
    .registers 3

    .line 120
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;IZ)V
    .registers 5

    .line 266
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->saveState(Landroid/os/Bundle;IZ)V

    return-void
.end method

.method public setAudioMuted(Z)V
    .registers 3

    .line 197
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setAudioMuted(Z)V

    return-void
.end method

.method public setProfileWithName(Ljava/lang/String;)V
    .registers 3

    .line 173
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setProfile(Ljava/lang/String;)V

    return-void
.end method

.method public setWebNavigationClient(Landroidx/webkit/WebNavigationClient;)V
    .registers 3

    .line 277
    new-instance v0, Landroidx/webkit/internal/WebNavigationClientAdapter;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebNavigationClientAdapter;-><init>(Landroidx/webkit/WebNavigationClient;)V

    .line 278
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 280
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewNavigationClient(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewRendererClient(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda0 (androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->$r8$lambda$O-QaiYTPYol708jRlsn2F-uVBpM(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda1 (androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->$r8$lambda$6g6zPN7zROVAKg6vSfVij1s6edE(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda2 (androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda2)
.class public final synthetic Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->$r8$lambda$Mfk2sZ2AzKdqLuZC_IrbbdLYjFs(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Void;)V

    return-void
.end method

###### Class androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda3 (androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda3)
.class public final synthetic Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/PrerenderOperationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda3;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter$$ExternalSyntheticLambda3;->f$0:Landroidx/webkit/PrerenderOperationCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->$r8$lambda$qRWZu2tyEho2Ia5U58_kJZX5gbQ(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V

    return-void
.end method
