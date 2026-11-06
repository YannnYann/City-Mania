###### Class ads_mobile_sdk.v61 (ads_mobile_sdk.v61)
.class public final Lads_mobile_sdk/v61;
.super Lads_mobile_sdk/r9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p2}, Lads_mobile_sdk/r9;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 5
    invoke-static {p1}, Lads_mobile_sdk/bz3;->a(Landroid/webkit/WebView;)V

    :cond_8
    if-eqz p1, :cond_1c

    .line 8
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    :cond_1c
    invoke-virtual {p0, p1}, Lads_mobile_sdk/r9;->a(Landroid/webkit/WebView;)V

    return-void
.end method
