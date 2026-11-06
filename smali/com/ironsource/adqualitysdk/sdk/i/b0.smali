###### Class com.ironsource.adqualitysdk.sdk.i.AbstractViewOnLayoutChangeListenerC3474b0 (com.ironsource.adqualitysdk.sdk.i.b0)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/b0;
.super Lcom/ironsource/adqualitysdk/sdk/i/ト;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final ﮉ:Ljava/lang/String;


# instance fields
.field public final ﮌ:Ljava/util/ArrayList;

.field public ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

.field public final ﱟ:Ljava/util/WeakHashMap;

.field public ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

.field public ﺙ:Z

.field public ﻏ:Z

.field public ﻐ:Ljava/lang/String;

.field public ﻛ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "HG9o8J5KgicvQmvIk0OQFA==\n"

    const-string v1, "SwoKpvcv9WY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮉ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ト;-><init>()V

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱟ:Ljava/util/WeakHashMap;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮌ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/b0;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_3
    const-string p0, "ztrGqRg=\n"

    const-string v0, "m46AhCABQh0=\n"

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 7
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮉ:Ljava/lang/String;

    const-string p0, "4HmP1XY9bcHRf5TUYz1uxdFq\n"

    const-string p1, "pQv9ugQdCqQ=\n"

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 9
    :cond_2e
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    :try_start_0
    instance-of p2, p1, Landroid/webkit/WebView;

    if-eqz p2, :cond_21

    .line 2
    check-cast p1, Landroid/webkit/WebView;

    .line 3
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 4
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ｋ(Landroid/webkit/WebView;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    .line 8
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮉ:Ljava/lang/String;

    const-string p3, "zjN+g9xi2aqrLmKgzzvfsf8CZI3AJdU=\n"

    const-string p4, "i0EM7K5CsMQ=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_21
    return-void
.end method

.method public final ﻛ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p2, Landroid/webkit/WebView;

    .line 2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﻏ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﻛ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final ｋ(Landroid/webkit/WebView;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 3
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻏ:Z

    if-eqz v1, :cond_4c

    .line 4
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

    .line 5
    iget-boolean v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ｋ:Z

    if-eqz v1, :cond_4c

    .line 6
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v1

    instance-of v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    if-nez v1, :cond_1d

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ()V

    .line 8
    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :try_start_22
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/j0;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/j0;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/k0;Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    .line 22
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ｋ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w89ntPvUhDXs2Hav4JqKe+zONa/m1Jo+5Ot8vv7OzQ==\n"

    const-string v3, "hr0V24n07Vs=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public final bridge synthetic ｋ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;
.end method

.method public final ﾒ(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 25
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻐ:Ljava/lang/String;

    return-object p1
.end method

.method public final ﾒ(Landroid/webkit/WebView;)V
    .registers 5

    if-eqz p1, :cond_44

    .line 10
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 11
    const-string v0, "yf+s8ON8j+aH\n"

    const-string v1, "qJvPnIEXtck=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﻛ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/n0;

    if-nez v2, :cond_24

    .line 14
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/n0;

    invoke-direct {v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/n0;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_24
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    if-nez v0, :cond_2a

    .line 17
    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    .line 19
    :cond_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/b0;)V

    .line 21
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﮌ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v2, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ｋ(Landroid/webkit/WebView;)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_44
    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_10

    .line 26
    :try_start_2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖫ:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_10} :catch_10

    .line 27
    :catch_10
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ｋ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
