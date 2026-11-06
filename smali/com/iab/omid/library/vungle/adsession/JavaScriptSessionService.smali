###### Class com.iab.omid.library.vungle.adsession.JavaScriptSessionService (com.iab.omid.library.vungle.adsession.JavaScriptSessionService)
.class public Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/vungle/messagelistener/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;
    }
.end annotation


# static fields
.field private static JS_MESSAGE_DATA_AD_SESSION_ID:Ljava/lang/String; = "adSessionId"

.field private static JS_MESSAGE_LISTENER_JS_SESSION_SERVICE:Ljava/lang/String; = "omidJsSessionService"

.field private static JS_MESSAGE_METHOD_FINISH_SESSION:Ljava/lang/String; = "finishSession"

.field private static JS_MESSAGE_METHOD_START_SESSION:Ljava/lang/String; = "startSession"


# instance fields
.field private final adSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/vungle/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field private final friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

.field private final isHtmlAdView:Z

.field private final messageListener:Lcom/iab/omid/library/vungle/messagelistener/a;

.field private final partner:Lcom/iab/omid/library/vungle/adsession/Partner;

.field private weakAdView:Lcom/iab/omid/library/vungle/weakreference/a;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    new-instance v0, Lcom/iab/omid/library/vungle/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/vungle/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

    invoke-static {}, Lcom/iab/omid/library/vungle/utils/g;->a()V

    const-string v0, "Partner is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/vungle/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/vungle/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->partner:Lcom/iab/omid/library/vungle/adsession/Partner;

    iput-object p2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->webView:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->isHtmlAdView:Z

    if-eqz p3, :cond_29

    invoke-virtual {p0, p2}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->setAdView(Landroid/view/View;)V

    :cond_29
    new-instance p1, Lcom/iab/omid/library/vungle/messagelistener/a;

    invoke-direct {p1, p2, p0}, Lcom/iab/omid/library/vungle/messagelistener/a;-><init>(Landroid/webkit/WebView;Lcom/iab/omid/library/vungle/messagelistener/b;)V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->messageListener:Lcom/iab/omid/library/vungle/messagelistener/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/messagelistener/a;->a()V

    return-void
.end method

.method public static synthetic access$000(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;)Lcom/iab/omid/library/vungle/messagelistener/a;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->messageListener:Lcom/iab/omid/library/vungle/messagelistener/a;

    return-object p0
.end method

.method public static create(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Z)Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;
    .registers 4

    .line 0
    new-instance v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;-><init>(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Z)V

    return-object v0
.end method

.method private createAdSessionConfiguration()Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
    .registers 5

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    sget-object v1, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    sget-object v2, Lcom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/Owner;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private createAdSessionContext()Lcom/iab/omid/library/vungle/adsession/AdSessionContext;
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->isHtmlAdView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->partner:Lcom/iab/omid/library/vungle/adsession/Partner;

    iget-object v2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->webView:Landroid/webkit/WebView;

    invoke-static {v0, v2, v1, v1}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->partner:Lcom/iab/omid/library/vungle/adsession/Partner;

    iget-object v2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->webView:Landroid/webkit/WebView;

    invoke-static {v0, v2, v1, v1}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->createJavascriptAdSessionContext(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private finishSession(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method private startSession(Ljava/lang/String;)V
    .registers 6

    .line 0
    new-instance v0, Lcom/iab/omid/library/vungle/adsession/a;

    invoke-direct {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->createAdSessionConfiguration()Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    move-result-object v1

    invoke-direct {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->createAdSessionContext()Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/adsession/a;-><init>(Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->getAdView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/a;->registerAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/f;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/internal/e;

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->c()Lcom/iab/omid/library/vungle/weakreference/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->b()Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/iab/omid/library/vungle/adsession/a;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_23

    :cond_45
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/a;->start()V

    return-void
.end method


# virtual methods
.method public addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iab/omid/library/vungle/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/vungle/internal/f;->a(Landroid/view/View;Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->weakAdView:Lcom/iab/omid/library/vungle/weakreference/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 2

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->JS_MESSAGE_LISTENER_JS_SESSION_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method public onMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 0
    :try_start_0
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->JS_MESSAGE_DATA_AD_SESSION_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->JS_MESSAGE_METHOD_START_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->startSession(Ljava/lang/String;)V

    return-void

    :catch_12
    move-exception p1

    goto :goto_35

    :cond_14
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->JS_MESSAGE_METHOD_FINISH_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p2}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->finishSession(Ljava/lang/String;)V

    return-void

    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected method in JavaScriptSessionService: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iab/omid/library/vungle/utils/d;->d(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_12

    return-void

    :goto_35
    const-string p2, "Error parsing JS message in JavaScriptSessionService."

    invoke-static {p2, p1}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onWebMessageListenerUnsupported()V
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The JavaScriptSessionService cannot be supported in this WebView version."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllFriendlyObstructions()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->removeAllFriendlyObstructions()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/f;->b()V

    return-void
.end method

.method public removeFriendlyObstruction(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->friendlyObstructions:Lcom/iab/omid/library/vungle/internal/f;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/internal/f;->c(Landroid/view/View;)V

    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->getAdView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    goto :goto_11

    :cond_21
    new-instance v0, Lcom/iab/omid/library/vungle/weakreference/a;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/vungle/weakreference/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->weakAdView:Lcom/iab/omid/library/vungle/weakreference/a;

    return-void
.end method

.method public tearDown(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->adSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;-><init>(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;Ljava/util/Timer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

###### Class com.iab.omid.library.vungle.adsession.JavaScriptSessionService.AnonymousClass1 (com.iab.omid.library.vungle.adsession.JavaScriptSessionService$1)
.class Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->tearDown(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;

.field public final synthetic val$tearDownHandler:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;

.field public final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;Ljava/util/Timer;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->this$0:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;

    iput-object p2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->val$tearDownHandler:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;

    iput-object p3, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->this$0:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;

    invoke-static {v0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->access$000(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;)Lcom/iab/omid/library/vungle/messagelistener/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/messagelistener/a;->b()V

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->val$tearDownHandler:Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;->onTearDown(Z)V

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

###### Class com.iab.omid.library.vungle.adsession.JavaScriptSessionService.TearDownHandler (com.iab.omid.library.vungle.adsession.JavaScriptSessionService$TearDownHandler)
.class public interface abstract Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TearDownHandler"
.end annotation


# virtual methods
.method public abstract onTearDown(Z)V
.end method
