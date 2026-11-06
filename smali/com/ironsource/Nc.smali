###### Class com.ironsource.Nc (com.ironsource.Nc)
.class public Lcom/ironsource/Nc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Nc$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "Ironsrc"

.field public static final e:Ljava/lang/String; = "7"

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String; = "omidVersion"

.field public static final h:Ljava/lang/String; = "omidPartnerName"

.field public static final i:Ljava/lang/String; = "omidPartnerVersion"

.field public static final j:Ljava/lang/String; = "omidActiveAdSessions"

.field private static final k:Ljava/lang/String; = "Invalid OMID impressionOwner"

.field private static final l:Ljava/lang/String; = "Invalid OMID videoEventsOwner"

.field private static final m:Ljava/lang/String; = "Missing OMID impressionOwner"

.field private static final n:Ljava/lang/String; = "Missing OMID videoEventsOwner"

.field private static final o:Ljava/lang/String; = "OMID has not been activated"

.field private static final p:Ljava/lang/String; = "Missing OMID creativeType"

.field private static final q:Ljava/lang/String; = "Missing adview id in OMID params"

.field private static final r:Ljava/lang/String; = "No adview found with the provided adViewId"

.field private static final s:Ljava/lang/String; = "OMID Session has already started"

.field private static final t:Ljava/lang/String; = "OMID Session has not started"


# instance fields
.field private final a:Lcom/iab/omid/library/ironsrc/adsession/Partner;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/ironsrc/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/ironsrc/Omid;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Nc;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Ironsrc"

    const-string v1, "7"

    invoke-static {v0, v1}, Lcom/iab/omid/library/ironsrc/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Partner;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Nc;->a:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ironsource/Nc;->c:Z

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/ironsource/Nc$a;Lcom/ironsource/L8;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    iget-object v0, p1, Lcom/ironsource/Nc$a;->f:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    iget-object v1, p1, Lcom/ironsource/Nc$a;->e:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    iget-object v2, p1, Lcom/ironsource/Nc$a;->b:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v3, p1, Lcom/ironsource/Nc$a;->c:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-boolean v4, p1, Lcom/ironsource/Nc$a;->a:Z

    .line 39
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/ironsource/Nc;->a:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    .line 48
    invoke-interface {p2}, Lcom/ironsource/L8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p1, p1, Lcom/ironsource/Nc$a;->d:Ljava/lang/String;

    const/4 v3, 0x0

    .line 49
    invoke-static {v1, v2, v3, p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/ironsrc/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;

    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p1

    .line 53
    invoke-interface {p2}, Lcom/ironsource/L8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/ironsource/Nc;->c:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    return-void

    .line 59
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID has not been activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/ironsource/me;
    .registers 4

    .line 4
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 6
    sget-object v1, Lcom/ironsource/Nc;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omidVersion"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v1, "Ironsrc"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omidPartnerName"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v1, "7"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omidPartnerVersion"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "omidActiveAdSessions"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Nc;->c:Z

    if-nez v0, :cond_a

    .line 2
    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/Omid;->activate(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/Nc;->c:Z

    :cond_a
    return-void
.end method

.method public a(Lcom/ironsource/Nc$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    iget-boolean v0, p0, Lcom/ironsource/Nc;->c:Z

    if-eqz v0, :cond_45

    .line 17
    iget-object v0, p1, Lcom/ironsource/Nc$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 21
    iget-object v0, p1, Lcom/ironsource/Nc$a;->g:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 26
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/q8;->a(Ljava/lang/String;)Lcom/ironsource/L8;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/ironsource/Nc;->a(Lcom/ironsource/Nc$a;Lcom/ironsource/L8;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->start()V

    .line 33
    iget-object v1, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No adview found with the provided adViewId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing adview id in OMID params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID has not been activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Nc;->a(Lorg/json/JSONObject;)V

    .line 2
    const-string v0, "adViewId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-eqz v0, :cond_1c

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->finish()V

    .line 9
    iget-object v0, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Nc;->a(Lorg/json/JSONObject;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Nc;->b:Ljava/util/HashMap;

    const-string v1, "adViewId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-eqz v0, :cond_26

    .line 7
    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/ironsrc/adsession/AdSession;)Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    move-result-object v0

    .line 8
    const-string v1, "signalLoaded"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 9
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->loaded()V

    .line 12
    :cond_22
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->impressionOccurred()V

    return-void

    .line 13
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ironsource/Nc$a;->a(Lorg/json/JSONObject;)Lcom/ironsource/Nc$a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ironsource/Nc;->a(Lcom/ironsource/Nc$a;)V

    return-void
.end method

###### Class com.ironsource.Nc.a (com.ironsource.Nc$a)
.class Lcom/ironsource/Nc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "isolateVerificationScripts"

.field private static final j:Ljava/lang/String; = "impressionOwner"

.field private static final k:Ljava/lang/String; = "videoEventsOwner"

.field private static final l:Ljava/lang/String; = "customReferenceData"

.field private static final m:Ljava/lang/String; = "creativeType"

.field private static final n:Ljava/lang/String; = "impressionType"

.field public static final o:Ljava/lang/String; = "adViewId"


# instance fields
.field public a:Z

.field public b:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field public c:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field public d:Ljava/lang/String;

.field public e:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public f:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

.field public g:Ljava/lang/String;

.field public h:Lcom/iab/omid/library/ironsrc/adsession/Owner;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ironsource/Nc$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/Nc$a;

    invoke-direct {v0}, Lcom/ironsource/Nc$a;-><init>()V

    .line 3
    const-string v1, "isolateVerificationScripts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ironsource/Nc$a;->a:Z

    .line 5
    const-string v1, "impressionOwner"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 12
    :try_start_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iab/omid/library/ironsrc/adsession/Owner;->valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Owner;

    move-result-object v3

    iput-object v3, v0, Lcom/ironsource/Nc$a;->b:Lcom/iab/omid/library/ironsrc/adsession/Owner;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_8c

    .line 19
    const-string v3, "videoEventsOwner"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 26
    :try_start_36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iab/omid/library/ironsrc/adsession/Owner;->valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Owner;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/Nc$a;->c:Lcom/iab/omid/library/ironsrc/adsession/Owner;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_44} :catch_65

    .line 33
    const-string v1, "customReferenceData"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/Nc$a;->d:Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/ironsource/Nc$a;->b(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/Nc$a;->f:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    .line 35
    invoke-static {p0}, Lcom/ironsource/Nc$a;->c(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/Nc$a;->e:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    .line 36
    invoke-static {p0}, Lcom/ironsource/Nc$a;->e(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/Nc$a;->g:Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/ironsource/Nc$a;->d(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/Owner;

    move-result-object p0

    iput-object p0, v0, Lcom/ironsource/Nc$a;->h:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    return-object v0

    :catch_65
    move-exception p0

    .line 38
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid OMID videoEventsOwner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing OMID videoEventsOwner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_8c
    move-exception p0

    .line 41
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OMID impressionOwner "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing OMID impressionOwner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/CreativeType;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "creativeType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Missing OMID creativeType"

    if-nez v0, :cond_3d

    .line 6
    invoke-static {}, Lcom/iab/omid/library/ironsrc/adsession/CreativeType;->values()[Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    move-result-object v0

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_28

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {v4}, Lcom/iab/omid/library/ironsrc/adsession/CreativeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    return-object v4

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 12
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "impressionType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Missing OMID creativeType"

    if-nez v0, :cond_3d

    .line 6
    invoke-static {}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->values()[Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    move-result-object v0

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_28

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {v4}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    return-object v4

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 12
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/iab/omid/library/ironsrc/adsession/Owner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "videoEventsOwner"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    .line 4
    :try_start_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iab/omid/library/ironsrc/adsession/Owner;->valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Owner;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 6
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static e(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "adViewId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing adview id in OMID params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
