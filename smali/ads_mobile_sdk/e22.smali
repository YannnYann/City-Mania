###### Class ads_mobile_sdk.e22 (ads_mobile_sdk.e22)
.class public final Lads_mobile_sdk/e22;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/h22;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h22;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lads_mobile_sdk/e22;->a:Lads_mobile_sdk/h22;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 101
    iget-object v0, p0, Lads_mobile_sdk/e22;->a:Lads_mobile_sdk/h22;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/h22;->a(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    .line 91
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/bz3;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 187
    invoke-static {p2}, Lads_mobile_sdk/bz3;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
