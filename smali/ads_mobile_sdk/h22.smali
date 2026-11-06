###### Class ads_mobile_sdk.h22 (ads_mobile_sdk.h22)
.class public final Lads_mobile_sdk/h22;
.super Lads_mobile_sdk/r9;
.source "SourceFile"


# instance fields
.field public e:Landroid/webkit/WebView;

.field public f:Ljava/lang/Long;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Lads_mobile_sdk/r9;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/h22;->f:Ljava/lang/Long;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/h22;->g:Ljava/util/Map;

    .line 10
    iput-object p2, p0, Lads_mobile_sdk/h22;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/p9;Lads_mobile_sdk/n9;)V
    .registers 7

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    iget-object v1, p2, Lads_mobile_sdk/n9;->d:Ljava/util/HashMap;

    .line 141
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lads_mobile_sdk/r9;->a(Lads_mobile_sdk/p9;Lads_mobile_sdk/n9;Lorg/json/JSONObject;)V

    return-void

    .line 148
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final a(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .registers 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView renderer gone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for WebView: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NativeBridge"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    if-ne p2, p1, :cond_36

    .line 4
    const-string p2, "Deallocating the Native bridge as it is unusable. No further events will be generated for this session."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Lads_mobile_sdk/uy3;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lads_mobile_sdk/uy3;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    :cond_36
    if-eqz p1, :cond_3b

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_3b
    return-void
.end method

.method public final b()V
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/h22;->f:Ljava/lang/Long;

    const-wide/16 v1, 0xfa0

    if-nez v0, :cond_d

    move-wide v3, v1

    goto :goto_20

    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 5
    iget-object v5, p0, Lads_mobile_sdk/h22;->f:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    :goto_20
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 7
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 8
    new-instance v3, Lads_mobile_sdk/g22;

    invoke-direct {v3, p0}, Lads_mobile_sdk/g22;-><init>(Lads_mobile_sdk/h22;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    return-void
.end method

.method public final c()V
    .registers 5

    .line 2
    sget-object v0, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 3
    iget-object v1, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 4
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    .line 5
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    iget-object v2, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 9
    iget-object v2, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 11
    iget-object v2, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    .line 12
    :try_start_28
    const-string v3, "WEB_MESSAGE_LISTENER"

    invoke-static {v3}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 13
    iget-object v0, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Lads_mobile_sdk/do;->a(Landroid/content/Context;)Lads_mobile_sdk/do;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lads_mobile_sdk/do;->a()Ljava/util/List;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 17
    new-instance v0, Lads_mobile_sdk/go;

    invoke-direct {v0, v2}, Lads_mobile_sdk/go;-><init>(Landroid/webkit/WebView;)V
    :try_end_47
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_28 .. :try_end_47} :catch_50
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_66

    :catch_48
    move-exception v0

    .line 18
    const-string v2, "Error during initialization of AttestationMessageListener"

    .line 19
    const-string v3, "OMIDLIB"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :catch_50
    :cond_50
    invoke-static {v1}, Lads_mobile_sdk/do;->a(Landroid/content/Context;)Lads_mobile_sdk/do;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lads_mobile_sdk/do;->a()Ljava/util/List;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 23
    new-instance v0, Lads_mobile_sdk/e22;

    invoke-direct {v0, p0}, Lads_mobile_sdk/e22;-><init>(Lads_mobile_sdk/h22;)V

    goto :goto_6b

    .line 24
    :cond_66
    :goto_66
    new-instance v0, Lads_mobile_sdk/f22;

    invoke-direct {v0, p0}, Lads_mobile_sdk/f22;-><init>(Lads_mobile_sdk/h22;)V

    .line 25
    :goto_6b
    iget-object v1, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    iget-object v0, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    .line 28
    new-instance v1, Lads_mobile_sdk/uy3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/uy3;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lads_mobile_sdk/h22;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/h22;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h22;->f:Ljava/lang/Long;

    return-void

    .line 34
    :cond_9b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lads_mobile_sdk/h22;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
