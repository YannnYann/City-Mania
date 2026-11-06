###### Class com.ironsource.AbstractC3572e (com.ironsource.e)
.class abstract Lcom/ironsource/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field f:Lorg/json/JSONObject;

.field g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "eventId"

    iput-object v0, p0, Lcom/ironsource/e;->a:Ljava/lang/String;

    .line 3
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/ironsource/e;->b:Ljava/lang/String;

    .line 5
    const-string v0, "InterstitialEvents"

    iput-object v0, p0, Lcom/ironsource/e;->c:Ljava/lang/String;

    .line 6
    const-string v0, "events"

    iput-object v0, p0, Lcom/ironsource/e;->d:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ironsource/e;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    .line 1
    const-string p1, "events"

    return-object p1

    .line 2
    :cond_6
    const-string p1, "InterstitialEvents"

    return-object p1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/e;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_2e

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/e;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->e()J

    move-result-wide v1

    .line 23
    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    iget v1, p0, Lcom/ironsource/e;->g:I

    invoke-direct {p0, v1}, Lcom/ironsource/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    .line 29
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_2e
    const-string p1, ""

    return-object p1
.end method

.method public a(Lcom/ironsource/C5;)Lorg/json/JSONObject;
    .registers 6

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/C5;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :catch_10
    move-exception p1

    goto :goto_2a

    .line 7
    :cond_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :goto_17
    const-string v0, "eventId"

    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v0, "timestamp"

    invoke-virtual {p1}, Lcom/ironsource/C5;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_10

    return-object v1

    .line 13
    :goto_2a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 14
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ironsource/e;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ironsource/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/ironsource/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method
