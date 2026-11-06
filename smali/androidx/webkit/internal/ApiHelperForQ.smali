###### Class androidx.webkit.internal.ApiHelperForQ (androidx.webkit.internal.ApiHelperForQ)
.class public Landroidx/webkit/internal/ApiHelperForQ;
.super Ljava/lang/Object;
.source "ApiHelperForQ.java"


# direct methods
.method public static getWebViewRenderProcess(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcess;
    .registers 1

    .line 64
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcess;

    move-result-object p0

    return-object p0
.end method

.method public static getWebViewRenderProcessClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcessClient;
    .registers 1

    .line 101
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p0

    return-object p0
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 2

    const/4 p1, 0x0

    .line 93
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline2;->m(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcessClient;)V

    return-void
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 3

    const/4 p2, 0x0

    .line 83
    invoke-static {p0, p1, p2}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline3;->m(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    return-void
.end method
