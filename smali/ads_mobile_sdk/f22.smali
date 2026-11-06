###### Class ads_mobile_sdk.f22 (ads_mobile_sdk.f22)
.class public final Lads_mobile_sdk/f22;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/h22;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h22;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lads_mobile_sdk/f22;->a:Lads_mobile_sdk/h22;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 110
    iget-object v0, p0, Lads_mobile_sdk/f22;->a:Lads_mobile_sdk/h22;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/h22;->a(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    const/4 p1, 0x1

    return p1
.end method
