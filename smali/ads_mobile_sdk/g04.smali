###### Class ads_mobile_sdk.g04 (ads_mobile_sdk.g04)
.class public final Lads_mobile_sdk/g04;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/webkit/WebView;

.field public final b:Lads_mobile_sdk/h04;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lads_mobile_sdk/h04;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lads_mobile_sdk/ig2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lads_mobile_sdk/g04;->a:Landroid/webkit/WebView;

    .line 52
    iput-object p2, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v0}, Lads_mobile_sdk/h04;->b()V
    :try_end_d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_d} :catch_47

    return-void

    .line 3
    :cond_e
    :try_start_e
    iget-object v0, p0, Lads_mobile_sdk/g04;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v1}, Lads_mobile_sdk/h04;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lads_mobile_sdk/f04;

    invoke-direct {v0, p0}, Lads_mobile_sdk/f04;-><init>(Lads_mobile_sdk/g04;)V

    .line 13
    iget-object v1, p0, Lads_mobile_sdk/g04;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v2}, Lads_mobile_sdk/h04;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {v1, v2, v3, v0}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    .line 16
    const-string v1, "Error adding WebView listener"

    .line 17
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    iget-object v0, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v0}, Lads_mobile_sdk/h04;->b()V

    return-void

    .line 19
    :catch_47
    iget-object v0, p0, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {v0}, Lads_mobile_sdk/h04;->b()V

    return-void
.end method
