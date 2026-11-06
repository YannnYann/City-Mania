###### Class ads_mobile_sdk.bz3 (ads_mobile_sdk.bz3)
.class public abstract Lads_mobile_sdk/bz3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    .line 41
    sget-object v0, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 42
    iget-object v0, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 43
    invoke-static {v0}, Lads_mobile_sdk/do;->a(Landroid/content/Context;)Lads_mobile_sdk/do;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lads_mobile_sdk/do;->a()Ljava/util/List;

    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 46
    invoke-static {p0}, Lads_mobile_sdk/bz3$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 47
    new-instance v1, Lads_mobile_sdk/cz3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/cz3;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_26
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 32
    const-string v1, "omid-native"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1f

    .line 37
    :cond_c
    :try_start_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 39
    invoke-static {p0}, Lads_mobile_sdk/xf2;->a(Landroid/net/Uri;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    :cond_1f
    :goto_1f
    return v0
.end method
