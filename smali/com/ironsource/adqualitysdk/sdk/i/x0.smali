###### Class com.ironsource.adqualitysdk.sdk.i.x0 (com.ironsource.adqualitysdk.sdk.i.x0)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

.field public static ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

.field public static ﻏ:Z

.field public static ﻐ:Z

.field public static ﻛ:Z

.field public static ｋ:Z

.field public static ﾇ:Z

.field public static final ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "yVFWu2tewVDqXVie\n"

    const-string v1, "njQ07QI7tgU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾇ:Z

    .line 2
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ｋ:Z

    .line 3
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻛ:Z

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻐ:Z

    .line 5
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻏ:Z

    .line 6
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/w0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w0;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

    .line 7
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/w0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w0;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

    return-void
.end method

.method public static ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_60

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_b
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_5d

    monitor-exit v0

    .line 4
    const-string v0, "zg7Wiw==\n"

    const-string v2, "qXmg6ILDRtI=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ｋ:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x0

    .line 8
    :try_start_26
    sput-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ｋ:Z

    .line 9
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/r0;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/r0;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/e0;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    .line 11
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    invoke-static {v3}, Lads_mobile_sdk/bz3$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v3

    if-ne v0, v3, :cond_42

    goto :goto_43

    :cond_42
    move v2, v1

    .line 13
    :goto_43
    sput-boolean v2, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻐ:Z
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_46

    goto :goto_54

    :catchall_46
    move-exception v0

    .line 15
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ:Ljava/lang/String;

    const-string v3, "B4vJIphY9LknmtAkhB+3uCTZyCyHHbeGJ5vtJI8P1L0rnNU5\n"

    const-string v4, "Qvm7Tep4l9E=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 18
    :cond_54
    :goto_54
    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻐ:Z

    if-eqz v0, :cond_60

    .line 19
    invoke-static {p0}, Lads_mobile_sdk/bz3$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object p0

    goto :goto_7c

    :catchall_5d
    move-exception p0

    .line 20
    monitor-exit v0

    throw p0

    .line 21
    :cond_60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/u0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u0;-><init>()V

    .line 23
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Lcom/ironsource/adqualitysdk/sdk/i/w0;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    if-eqz p0, :cond_7d

    .line 24
    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewClient;

    :goto_7c
    return-object p0

    .line 25
    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "qvsgjhUjXWPJ8jyMFW0tcovCPIcGDhZ+jPohwhckH3uN\n"

    const-string v1, "6ZRV4nFNehc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﾒ(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .registers 6

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_50

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v0

    .line 4
    monitor-enter v0

    .line 5
    :try_start_b
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_4d

    monitor-exit v0

    .line 6
    const-string v0, "W3uwpw==\n"

    const-string v2, "PAzTxAOaMI4=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    sget-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻛ:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    .line 9
    sput-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻛ:Z

    .line 10
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/W;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/s0;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/s0;-><init>()V

    invoke-direct {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/W;-><init>(Landroid/webkit/WebChromeClient;)V

    .line 12
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 13
    invoke-static {v3}, Landroidx/webkit/internal/ApiHelperForO$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object v3

    if-ne v0, v3, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    .line 14
    :goto_42
    sput-boolean v2, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻏ:Z

    .line 16
    :cond_44
    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﻏ:Z

    if-eqz v0, :cond_50

    .line 17
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForO$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0

    :catchall_4d
    move-exception p0

    .line 18
    monitor-exit v0

    throw p0

    .line 19
    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/v0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/v0;-><init>()V

    .line 21
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Lcom/ironsource/adqualitysdk/sdk/i/w0;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 22
    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebChromeClient;

    return-object p0

    .line 23
    :cond_6d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "b7SYa52l/xgMvYRpneuPCU6YhXWWpr0vQLKIaY3rvgVJt4k=\n"

    const-string v1, "LNvtB/nL2Gw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ⅽ:Lcom/ironsource/adqualitysdk/sdk/i/o0;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ใ;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;)Lcom/ironsource/adqualitysdk/sdk/i/w0;
    .registers 9

    .line 40
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/w0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w0;-><init>()V

    .line 43
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 45
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 46
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ｋ:Ljava/lang/String;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾒ:Ljava/util/List;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_1e

    .line 51
    :cond_1a
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 52
    :goto_1e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v2

    .line 53
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 54
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 55
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻛ:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 56
    invoke-static {p0, p2, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 57
    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_3f

    .line 58
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/w0;->ﾒ:Z

    return-object v0

    .line 59
    :cond_3f
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v2

    .line 60
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 61
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 62
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻐ:Ljava/lang/String;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾇ:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_52

    goto :goto_56

    .line 67
    :cond_52
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 68
    :goto_56
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v3

    .line 69
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 70
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 71
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻏ:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 72
    invoke-static {p0, p2, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 73
    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_75

    .line 74
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/w0;->ﾇ:Z

    :cond_75
    return-object v0
.end method

.method public static ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Lcom/ironsource/adqualitysdk/sdk/i/w0;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .registers 7

    .line 92
    :try_start_0
    iget-boolean v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/w0;->ﾒ:Z

    if-nez v0, :cond_8

    .line 93
    iget-boolean v0, p2, Lcom/ironsource/adqualitysdk/sdk/i/w0;->ﾇ:Z

    if-eqz v0, :cond_91

    .line 94
    :cond_8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v0

    .line 95
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 96
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 97
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ｋ:Ljava/lang/String;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾒ:Ljava/util/List;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ:Ljava/lang/String;

    .line 98
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_21

    .line 102
    :cond_1d
    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_21
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v1

    .line 104
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 105
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 106
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻛ:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 107
    invoke-static {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    .line 108
    iget-boolean p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/w0;->ﾇ:Z

    if-eqz p2, :cond_81

    if-eqz p0, :cond_81

    .line 109
    move-object p2, p0

    check-cast p2, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_81

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    .line 111
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ:Ljava/lang/reflect/Field;

    .line 112
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_81

    .line 117
    :cond_57
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object p0

    .line 118
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 119
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 120
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻐ:Ljava/lang/String;

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾇ:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_6a

    goto :goto_6e

    .line 125
    :cond_6a
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    .line 126
    :goto_6e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/o0;

    move-result-object v0

    .line 127
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 128
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 129
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻏ:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 130
    invoke-static {p2, p1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0
    :try_end_81
    .catchall {:try_start_0 .. :try_end_81} :catchall_82

    :cond_81
    :goto_81
    return-object p0

    :catchall_82
    move-exception p0

    .line 131
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ:Ljava/lang/String;

    const-string p2, "Py27fdQdeeQOK6B8wR197RM6p2aGW3fkFjs=\n"

    const-string v0, "el/JEqY9HoE=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_91
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;
    .registers 9

    .line 75
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;

    .line 77
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/t0;

    invoke-direct {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/t0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;-><init>()V

    .line 79
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    const/4 v4, -0x1

    .line 80
    iput v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    .line 81
    iput-object p1, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

    .line 82
    iput-object v1, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/t0;

    .line 84
    iput-object p2, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    .line 85
    iput p3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 87
    iput-object p1, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    .line 88
    iget-object p1, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 89
    const-class p2, Lcom/ironsource/adqualitysdk/sdk/i/t0;

    .line 90
    iput-object p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    .line 91
    invoke-virtual {v0, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    move-result-object p0

    return-object p0
.end method

.method public static ﾒ(Landroid/content/Context;)V
    .registers 5

    .line 24
    sget-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾇ:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾇ:Z

    .line 27
    :try_start_7
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/p0;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/p0;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/e0;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    .line 30
    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/W;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/q0;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/q0;-><init>()V

    invoke-direct {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/W;-><init>(Landroid/webkit/WebChromeClient;)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 34
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/u0;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/u0;-><init>()V

    .line 35
    invoke-static {v1, p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ใ;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;)Lcom/ironsource/adqualitysdk/sdk/i/w0;

    move-result-object p0

    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/w0;

    .line 36
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/v0;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/v0;-><init>()V

    .line 37
    invoke-static {v1, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/webkit/WebView;Lcom/ironsource/adqualitysdk/sdk/i/ใ;Lcom/ironsource/adqualitysdk/sdk/i/ḷ;)Lcom/ironsource/adqualitysdk/sdk/i/w0;

    move-result-object p0

    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/w0;
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception p0

    .line 39
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ:Ljava/lang/String;

    const-string v2, "dtgBHVGpkWFWyRgbTe7Sb1zYUxtN55d7E8kfG0bnhno=\n"

    const-string v3, "M6pzciOJ8gk=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_4c
    return-void
.end method
