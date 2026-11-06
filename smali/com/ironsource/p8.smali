###### Class com.ironsource.C3778p8 (com.ironsource.p8)
.class public Lcom/ironsource/p8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/L8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/p8$d;,
        Lcom/ironsource/p8$e;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "loadWithUrl | webView is not null"

.field private static final h:Ljava/lang/String; = "p8"

.field private static final i:Ljava/lang/String; = "file://"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/ironsource/n8;

.field private e:Lcom/ironsource/i8;

.field private f:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputd(Lcom/ironsource/p8;Lcom/ironsource/n8;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputf(Lcom/ironsource/p8;Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/p8;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/p8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/p8;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$md(Lcom/ironsource/p8;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/p8;->d()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgeth()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/l8;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/i8;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    .line 3
    new-instance p2, Lcom/ironsource/n8;

    invoke-direct {p2}, Lcom/ironsource/n8;-><init>()V

    iput-object p2, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    .line 4
    invoke-virtual {p2, p3}, Lcom/ironsource/n8;->g(Ljava/lang/String;)V

    .line 5
    iput-object p3, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p2, p1}, Lcom/ironsource/n8;->a(Lcom/ironsource/l8;)V

    .line 7
    iput-object p4, p0, Lcom/ironsource/p8;->e:Lcom/ironsource/i8;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/p8;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/p8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ironsource/p8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_20
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    const-string v1, "ISNAdViewWebPresenter | createWebView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    .line 5
    new-instance v1, Lcom/ironsource/m8;

    invoke-direct {v1, p0}, Lcom/ironsource/m8;-><init>(Lcom/ironsource/p8;)V

    const-string v2, "containerMsgHandler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/o8;

    new-instance v2, Lcom/ironsource/p8$c;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/p8$c;-><init>(Lcom/ironsource/p8;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ironsource/o8;-><init>(Lcom/ironsource/L8$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/ironsource/p8$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 33
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/ironsource/eh;->a(Landroid/webkit/WebView;)V

    .line 34
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/ironsource/n8;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    .line 10
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/p8;->f:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 9
    :cond_7
    :try_start_7
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    const-string v1, "performCleanup"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/p8$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/p8$b;-><init>(Lcom/ironsource/p8;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13
    const-string p1, "action parameter empty"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_c
    sget-object v0, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to perform WebView Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_22
    const-string v0, "onPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 21
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 22
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->f(Ljava/lang/String;)V

    return-void

    :catch_35
    move-exception p1

    goto :goto_50

    .line 23
    :cond_37
    const-string v0, "onResume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 24
    iget-object p1, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 25
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->f(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_4a
    const-string p1, "action not supported"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4f} :catch_35

    return-void

    .line 31
    :goto_50
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 32
    const-string p1, "failed to perform action"

    invoke-virtual {p0, p3, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {p1, p2}, Lcom/ironsource/n8;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object p2, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHandleGetViewVisibility fail with reason: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/ironsource/n8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/p8$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ironsource/p8$a;-><init>(Lcom/ironsource/p8;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/ironsource/i8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->e:Lcom/ironsource/i8;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    const-string v1, "params"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/n8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object p2, Lcom/ironsource/p8;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageToAd fail message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8;->b:Ljava/lang/String;

    return-void
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessageFromAd(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8;->d:Lcom/ironsource/n8;

    invoke-virtual {v0, p1}, Lcom/ironsource/n8;->c(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3778p8.a (com.ironsource.p8$a)
.class Lcom/ironsource/p8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p8;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/p8;


# direct methods
.method public constructor <init>(Lcom/ironsource/p8;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iput-object p2, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/p8$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/p8$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "callfailreason"

    if-eqz v0, :cond_1e

    .line 2
    sget-object v0, Lcom/ironsource/le;->q:Lcom/ironsource/le$a;

    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 5
    const-string v3, "loadWithUrl | webView is not null"

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 7
    invoke-static {v0, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 15
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/p8;->-$$Nest$mb(Lcom/ironsource/p8;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$a;->b:Lorg/json/JSONObject;

    const-string v3, "urlForWebView"

    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/p8;->-$$Nest$ma(Lcom/ironsource/p8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    const-string v2, "adViewId"

    iget-object v3, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v3}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/p8$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception v0

    .line 25
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 26
    iget-object v2, p0, Lcom/ironsource/p8$a;->d:Lcom/ironsource/p8;

    iget-object v3, p0, Lcom/ironsource/p8$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/ironsource/le;->q:Lcom/ironsource/le$a;

    new-instance v3, Lcom/ironsource/v8;

    invoke-direct {v3}, Lcom/ironsource/v8;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    return-void
.end method

###### Class com.ironsource.C3778p8.b (com.ironsource.p8$b)
.class Lcom/ironsource/p8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/p8;


# direct methods
.method public constructor <init>(Lcom/ironsource/p8;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    iput-object p2, p0, Lcom/ironsource/p8$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/p8$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_3e

    .line 5
    :cond_e
    :goto_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "adViewId"

    iget-object v2, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v2}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v1}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 8
    iget-object v2, p0, Lcom/ironsource/p8$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetd(Lcom/ironsource/p8;)Lcom/ironsource/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/n8;->b()V

    .line 11
    :cond_34
    iget-object v0, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/p8;->-$$Nest$fputd(Lcom/ironsource/p8;Lcom/ironsource/n8;)V

    .line 12
    invoke-static {v0, v1}, Lcom/ironsource/p8;->-$$Nest$fputf(Lcom/ironsource/p8;Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_c

    return-void

    .line 15
    :goto_3e
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/ironsource/p8;->-$$Nest$sfgeth()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performCleanup | could not destroy ISNAdView webView ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    invoke-static {v3}, Lcom/ironsource/p8;->-$$Nest$fgeta(Lcom/ironsource/p8;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/ironsource/le;->r:Lcom/ironsource/le$a;

    new-instance v2, Lcom/ironsource/v8;

    invoke-direct {v2}, Lcom/ironsource/v8;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callfailreason"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 32
    iget-object v1, p0, Lcom/ironsource/p8$b;->c:Lcom/ironsource/p8;

    iget-object v2, p0, Lcom/ironsource/p8$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3778p8.c (com.ironsource.p8$c)
.class Lcom/ironsource/p8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/L8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p8;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/p8;


# direct methods
.method public constructor <init>(Lcom/ironsource/p8;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$c;->b:Lcom/ironsource/p8;

    iput-object p2, p0, Lcom/ironsource/p8$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/ironsource/p8;->-$$Nest$sfgeth()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISNAdViewWebPresenter | WebViewClient | reportOnError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/p8$c;->b:Lcom/ironsource/p8;

    iget-object v1, p0, Lcom/ironsource/p8$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/p8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/ironsource/p8;->-$$Nest$sfgeth()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_18
    iget-object p1, p0, Lcom/ironsource/p8$c;->b:Lcom/ironsource/p8;

    invoke-static {p1}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    iget-object v0, p0, Lcom/ironsource/p8$c;->b:Lcom/ironsource/p8;

    invoke-static {v0}, Lcom/ironsource/p8;->-$$Nest$fgetc(Lcom/ironsource/p8;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    goto :goto_3f

    :catch_2e
    move-exception p1

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 12
    :goto_3f
    iget-object p1, p0, Lcom/ironsource/p8$c;->b:Lcom/ironsource/p8;

    invoke-static {p1}, Lcom/ironsource/p8;->-$$Nest$md(Lcom/ironsource/p8;)V

    return-void
.end method

###### Class com.ironsource.C3778p8.d (com.ironsource.p8$d)
.class Lcom/ironsource/p8$d;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/p8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/p8;


# direct methods
.method private constructor <init>(Lcom/ironsource/p8;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 1
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/ironsource/p8$d;

    iget-object p3, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    invoke-direct {p1, p3}, Lcom/ironsource/p8$d;-><init>(Lcom/ironsource/p8;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3
    new-instance p1, Lcom/ironsource/p8$e;

    iget-object p3, p0, Lcom/ironsource/p8$d;->a:Lcom/ironsource/p8;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Lcom/ironsource/p8$e;-><init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 6
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 8
    const-string p1, "onCreateWindow"

    invoke-static {p1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.ironsource.C3778p8.e (com.ironsource.p8$e)
.class Lcom/ironsource/p8$e;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/p8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/p8;


# direct methods
.method private constructor <init>(Lcom/ironsource/p8;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/p8$e;->a:Lcom/ironsource/p8;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/p8;Lcom/ironsource/p8-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/p8$e;-><init>(Lcom/ironsource/p8;)V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-static {}, Lcom/ironsource/p8;->-$$Nest$sfgeth()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chromium process crashed - detail.didCrash(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    new-instance v1, Lcom/ironsource/sdk/controller/k$c;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/k$c;-><init>()V

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;-><init>(Lcom/ironsource/h;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
