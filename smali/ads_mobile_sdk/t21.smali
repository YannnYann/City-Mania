###### Class ads_mobile_sdk.t21 (ads_mobile_sdk.t21)
.class public final Lads_mobile_sdk/t21;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/u21;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u21;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/t21;->a:Lads_mobile_sdk/u21;

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lads_mobile_sdk/t21;->a:Lads_mobile_sdk/u21;

    .line 41
    iget-object p1, p1, Lads_mobile_sdk/u21;->a:Lads_mobile_sdk/g41;

    .line 42
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    const-string v0, "getUrl(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lads_mobile_sdk/g41;->a(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method
