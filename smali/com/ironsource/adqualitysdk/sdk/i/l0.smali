###### Class com.ironsource.adqualitysdk.sdk.i.C3494l0 (com.ironsource.adqualitysdk.sdk.i.l0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/l0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

.field public ｋ:Ljava/lang/String;

.field public ﾇ:Z

.field public ﾒ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/n0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾒ:Z

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾇ:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾒ:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾇ:Z

    .line 5
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    if-nez p2, :cond_15

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾒ:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/l0;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 4
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 8
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 11
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, p1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :cond_25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    if-nez v0, :cond_2f

    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    .line 16
    :cond_2f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 17
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾒ:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾇ:Z

    if-nez v2, :cond_50

    .line 18
    :cond_3a
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ｋ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    :cond_50
    move v2, v1

    goto :goto_53

    :cond_52
    move v2, v3

    .line 19
    :goto_53
    invoke-virtual {v0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 21
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾇ:Z

    .line 22
    iput-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/l0;->ﾒ:Z

    return v3
.end method
