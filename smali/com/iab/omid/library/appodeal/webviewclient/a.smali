###### Class com.iab.omid.library.appodeal.webviewclient.a (com.iab.omid.library.appodeal.webviewclient.a)
.class public Lcom/iab/omid/library/appodeal/webviewclient/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/g;->b()Lcom/iab/omid/library/appodeal/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/attestation/c;->a(Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/attestation/c;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lads_mobile_sdk/bz3$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    new-instance v1, Lcom/iab/omid/library/appodeal/webviewclient/b;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/appodeal/webviewclient/b;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_24
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    const-string v1, "omid-native"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1f

    :cond_c
    :try_start_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p0}, Lcom/iab/omid/library/appodeal/internal/j;->b(Landroid/net/Uri;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    :cond_1f
    :goto_1f
    return v0
.end method
