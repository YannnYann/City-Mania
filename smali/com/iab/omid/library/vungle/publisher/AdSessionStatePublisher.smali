###### Class com.iab.omid.library.vungle.publisher.AdSessionStatePublisher (com.iab.omid.library.vungle.publisher.AdSessionStatePublisher)
.class public abstract Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iab/omid/library/vungle/weakreference/b;

.field private c:Lcom/iab/omid/library/vungle/adsession/AdEvents;

.field private d:Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;

.field private e:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a()V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    new-instance p1, Lcom/iab/omid/library/vungle/weakreference/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/iab/omid/library/vungle/weakreference/b;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/vungle/weakreference/b;

    return-void
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/vungle/attestation/b;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/vungle/attestation/b;

    invoke-interface {v1}, Lcom/iab/omid/library/vungle/attestation/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/vungle/attestation/b;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method private a(Lcom/iab/omid/library/vungle/attestation/b;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Lcom/iab/omid/library/vungle/attestation/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mechanism"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/iab/omid/library/vungle/attestation/b;->a()Lcom/iab/omid/library/vungle/attestation/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/attestation/h;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "executionEnvironment"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 4

    .line 0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "supportedAttestationMechanisms"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/vungle/internal/h;->b(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/utils/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->f:J

    sget-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    return-void
.end method

.method public a(F)V
    .registers 5

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;F)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    new-instance v0, Lcom/iab/omid/library/vungle/weakreference/b;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/vungle/weakreference/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/vungle/weakreference/b;

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/AdEvents;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/vungle/adsession/AdEvents;

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;)V
    .registers 5

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/ErrorType;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/iab/omid/library/vungle/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/a;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/vungle/adsession/a;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/a;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;Lorg/json/JSONObject;)V
    .registers 10

    .line 0
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getAdSessionContextType()Lcom/iab/omid/library/vungle/adsession/AdSessionContextType;

    move-result-object p1

    const-string v1, "adSessionType"

    invoke-static {v3, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/vungle/utils/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/vungle/utils/a;->a()Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/DeviceCategory;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceCategory"

    invoke-static {v3, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/vungle/adsession/Partner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/Partner;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {p1, v4, v1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/vungle/adsession/Partner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/Partner;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {p1, v4, v1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.6.9-Vungle"

    invoke-static {p1, v1, v4}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/g;->b()Lcom/iab/omid/library/vungle/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {p1, v4, v1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getContentUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getContentUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9a
    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a9

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a9
    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getUniversalAdId()Lcom/iab/omid/library/vungle/adsession/UniversalAdId;

    move-result-object p1

    if-eqz p1, :cond_b8

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getUniversalAdId()Lcom/iab/omid/library/vungle/adsession/UniversalAdId;

    move-result-object p1

    const-string v0, "universalAdId"

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->getVerificationScriptResources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/vungle/adsession/VerificationScriptResource;

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/VerificationScriptResource;->getVendorKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iab/omid/library/vungle/adsession/VerificationScriptResource;->getVerificationParameters()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c5

    :cond_dd
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    .line 0
    iget-wide v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->f:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_1b

    iget-object p2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    sget-object p3, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    if-eq p2, p3, :cond_1b

    iput-object p3, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/vungle/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 5

    .line 0
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/vungle/utils/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_b

    const-string p1, "foregrounded"

    goto :goto_d

    :cond_b
    const-string p1, "backgrounded"

    :goto_d
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/internal/h;->c(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public b()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/vungle/weakreference/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 6

    .line 0
    iget-wide v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->f:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_17

    sget-object p2, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/vungle/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/vungle/attestation/b;",
            ">;)V"
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Error creating JSON object publishSupportedAttestationMechanisms"

    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 5

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_b

    const-string p1, "locked"

    goto :goto_d

    :cond_b
    const-string p1, "unlocked"

    :goto_d
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public c()Lcom/iab/omid/library/vungle/adsession/AdEvents;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/vungle/adsession/AdEvents;

    return-object v0
.end method

.method public d()Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/vungle/adsession/media/MediaEvents;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/vungle/weakreference/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .registers 4

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/vungle/internal/h;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 4

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/h;->a()Lcom/iab/omid/library/vungle/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/vungle/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/vungle/weakreference/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public h()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public i()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.iab.omid.library.vungle.publisher.AdSessionStatePublisher.a (com.iab.omid.library.vungle.publisher.AdSessionStatePublisher$a)
.class final enum Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

.field public static final enum b:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

.field public static final enum c:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

.field private static final synthetic d:[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    const-string v1, "AD_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    new-instance v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    const-string v1, "AD_STATE_VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    new-instance v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    const-string v1, "AD_STATE_NOTVISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->a()[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    sget-object v1, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    sget-object v2, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    filled-new-array {v0, v1, v2}, [Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;
    .registers 2

    .line 0
    const-class v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    invoke-virtual {v0}, [Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher$a;

    return-object v0
.end method
