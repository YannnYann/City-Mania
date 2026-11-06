###### Class com.ironsource.adqualitysdk.sdk.i.C3498n0 (com.ironsource.adqualitysdk.sdk.i.n0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ґ;


# static fields
.field public static final ﻛ:Ljava/util/WeakHashMap;


# instance fields
.field public final ｋ:Ljava/util/HashSet;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

.field public final ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "V1Jyv1il2tVpRGSMX6Xf\n"

    const-string v1, "ADcQ6THArZk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﻛ:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    .line 18
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ:Ljava/lang/String;

    .line 19
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/g0;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/g0;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

    .line 21
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾒ()V

    .line 23
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/m0;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m0;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/n0;)V

    .line 24
    iget-object p1, p2, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾒ:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_38

    .line 26
    :try_start_25
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 36
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﻛ:Ljava/lang/String;

    const-string v0, "P10+vPqwDFQOWyW977A8VBhsJKHn/Q5yFkYpvfw=\n"

    const-string v1, "ei9M04iQazE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_38
    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/l0;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/l0;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/n0;)V

    .line 3
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾒ:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 5
    :try_start_12
    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/e0;

    invoke-direct {v5, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/e0;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾇ:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ｋ:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v1

    .line 12
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﻛ:Ljava/lang/String;

    const-string v4, "2s99AZF0iEvryWYAhHS4S/3rZguUF4NH+tN7\n"

    const-string v5, "n70PbuNU7y4=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 15
    :cond_37
    iput-boolean v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ｋ:Z

    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;)V
    .registers 4

    .line 16
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;

    if-eqz v1, :cond_b

    .line 19
    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;->ﾒ(Landroid/webkit/WebView;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 28
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;

    if-eqz v1, :cond_b

    .line 31
    invoke-interface {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 20
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;

    if-eqz v1, :cond_b

    .line 23
    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 6

    .line 24
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ｋ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;

    if-eqz v1, :cond_b

    .line 27
    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/Ґ;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1d
    return-void
.end method
