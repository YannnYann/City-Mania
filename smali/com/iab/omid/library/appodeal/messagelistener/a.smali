###### Class com.iab.omid.library.appodeal.messagelistener.a (com.iab.omid.library.appodeal.messagelistener.a)
.class public Lcom/iab/omid/library/appodeal/messagelistener/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/iab/omid/library/appodeal/utils/i;


# instance fields
.field private final a:Landroid/webkit/WebView;

.field private final b:Lcom/iab/omid/library/appodeal/messagelistener/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/utils/i;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/utils/i;-><init>()V

    sput-object v0, Lcom/iab/omid/library/appodeal/messagelistener/a;->c:Lcom/iab/omid/library/appodeal/utils/i;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lcom/iab/omid/library/appodeal/messagelistener/b;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    return-void
.end method

.method public static synthetic a(Lcom/iab/omid/library/appodeal/messagelistener/a;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/appodeal/messagelistener/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v1, p1, v0}, Lcom/iab/omid/library/appodeal/messagelistener/b;->onMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    const-string v0, "Error parsing JS message"

    invoke-static {v0, p1}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 0
    :try_start_0
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v0}, Lcom/iab/omid/library/appodeal/messagelistener/b;->onWebMessageListenerUnsupported()V
    :try_end_d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_d} :catch_3f

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/messagelistener/a;->b()V

    new-instance v0, Lcom/iab/omid/library/appodeal/messagelistener/a$a;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/appodeal/messagelistener/a$a;-><init>(Lcom/iab/omid/library/appodeal/messagelistener/a;)V

    sget-object v1, Lcom/iab/omid/library/appodeal/messagelistener/a;->c:Lcom/iab/omid/library/appodeal/utils/i;

    iget-object v2, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v3}, Lcom/iab/omid/library/appodeal/messagelistener/b;->getListenerName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    const-string v5, "*"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/iab/omid/library/appodeal/utils/i;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception v0

    const-string v1, "Error adding WebView listener"

    invoke-static {v1, v0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v0}, Lcom/iab/omid/library/appodeal/messagelistener/b;->onWebMessageListenerUnsupported()V

    return-void

    :catch_3f
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v0}, Lcom/iab/omid/library/appodeal/messagelistener/b;->onWebMessageListenerUnsupported()V

    return-void
.end method

.method public b()V
    .registers 4

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/messagelistener/a;->c:Lcom/iab/omid/library/appodeal/utils/i;

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/iab/omid/library/appodeal/messagelistener/a;->b:Lcom/iab/omid/library/appodeal/messagelistener/b;

    invoke-interface {v2}, Lcom/iab/omid/library/appodeal/messagelistener/b;->getListenerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/appodeal/utils/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

###### Class com.iab.omid.library.appodeal.messagelistener.a.C0009a (com.iab.omid.library.appodeal.messagelistener.a$a)
.class Lcom/iab/omid/library/appodeal/messagelistener/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/appodeal/messagelistener/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/appodeal/messagelistener/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/appodeal/messagelistener/a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/messagelistener/a$a;->a:Lcom/iab/omid/library/appodeal/messagelistener/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .registers 6

    .line 0
    iget-object p1, p0, Lcom/iab/omid/library/appodeal/messagelistener/a$a;->a:Lcom/iab/omid/library/appodeal/messagelistener/a;

    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/messagelistener/a;->a(Lcom/iab/omid/library/appodeal/messagelistener/a;Ljava/lang/String;)V

    return-void
.end method
