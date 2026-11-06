###### Class com.iab.omid.library.appodeal.publisher.a (com.iab.omid.library.appodeal.publisher.a)
.class public Lcom/iab/omid/library/appodeal/publisher/a;
.super Lcom/iab/omid/library/appodeal/publisher/AdSessionStatePublisher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/appodeal/publisher/AdSessionStatePublisher;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-static {p2}, Lcom/iab/omid/library/appodeal/webviewclient/a;->a(Landroid/webkit/WebView;)V

    :cond_8
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_1c
    invoke-virtual {p0, p2}, Lcom/iab/omid/library/appodeal/publisher/AdSessionStatePublisher;->a(Landroid/webkit/WebView;)V

    return-void
.end method
