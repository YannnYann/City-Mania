###### Class ads_mobile_sdk.f04 (ads_mobile_sdk.f04)
.class public final Lads_mobile_sdk/f04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/g04;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g04;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lads_mobile_sdk/f04;->a:Lads_mobile_sdk/g04;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .registers 6

    .line 76
    iget-object p1, p0, Lads_mobile_sdk/f04;->a:Lads_mobile_sdk/g04;

    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :try_start_9
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    const-string p2, "method"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    const-string p4, "data"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 80
    iget-object p1, p1, Lads_mobile_sdk/g04;->b:Lads_mobile_sdk/h04;

    invoke-interface {p1, p2, p3}, Lads_mobile_sdk/h04;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 82
    const-string p2, "Error parsing JS message"

    invoke-static {p2, p1}, Lads_mobile_sdk/bf2;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
