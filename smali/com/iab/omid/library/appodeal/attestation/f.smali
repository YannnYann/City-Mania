###### Class com.iab.omid.library.appodeal.attestation.f (com.iab.omid.library.appodeal.attestation.f)
.class public Lcom/iab/omid/library/appodeal/attestation/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/appodeal/messagelistener/b;


# instance fields
.field private final a:Lcom/iab/omid/library/appodeal/messagelistener/a;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/appodeal/messagelistener/a;

    invoke-direct {v0, p1, p0}, Lcom/iab/omid/library/appodeal/messagelistener/a;-><init>(Landroid/webkit/WebView;Lcom/iab/omid/library/appodeal/messagelistener/b;)V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/f;->a:Lcom/iab/omid/library/appodeal/messagelistener/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/messagelistener/a;->a()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)Lcom/iab/omid/library/appodeal/attestation/f;
    .registers 2

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/attestation/f;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/appodeal/attestation/f;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    .line 0
    const-string v0, "version"

    :try_start_2
    const-string v1, "mechanism"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attestationArgs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/utils/c;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/g;->b()Lcom/iab/omid/library/appodeal/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/iab/omid/library/appodeal/attestation/a;

    invoke-direct {v2, p1}, Lcom/iab/omid/library/appodeal/attestation/a;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/appodeal/attestation/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iab/omid/library/appodeal/attestation/a;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    const-string v0, "Error processing attestation request"

    invoke-static {v0, p1}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "omidJsAttestationListener"

    return-object v0
.end method

.method public onMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 0
    const-string v0, "attest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2}, Lcom/iab/omid/library/appodeal/attestation/f;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected method in AttestationMessageListener: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onWebMessageListenerUnsupported()V
    .registers 2

    .line 0
    const-string v0, "The Attestation Webview Listener cannot be supported in this WebView version."

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    return-void
.end method
