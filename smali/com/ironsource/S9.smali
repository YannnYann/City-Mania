###### Class com.ironsource.S9 (com.ironsource.S9)
.class public Lcom/ironsource/S9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/i8;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/ironsource/Oc;

.field private h:Z

.field protected i:Z

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/Oc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/S9;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/S9;->c:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/ironsource/S9;->d:Lcom/ironsource/i8;

    .line 9
    iput-boolean v0, p0, Lcom/ironsource/S9;->i:Z

    .line 10
    iput-object v1, p0, Lcom/ironsource/S9;->j:Ljava/lang/String;

    .line 23
    const-string v0, "Instance name can\'t be null"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->requireNonEmptyOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/S9;->a:Ljava/lang/String;

    .line 24
    const-string p1, "AdListener name can\'t be null"

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/SDKUtils;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Oc;

    iput-object p1, p0, Lcom/ironsource/S9;->g:Lcom/ironsource/Oc;

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/R9;
    .registers 12

    .line 5
    new-instance v0, Lcom/ironsource/R9;

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/S9;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/S9;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ironsource/S9;->b:Z

    iget-boolean v4, p0, Lcom/ironsource/S9;->c:Z

    iget-boolean v5, p0, Lcom/ironsource/S9;->h:Z

    iget-boolean v6, p0, Lcom/ironsource/S9;->i:Z

    iget-object v7, p0, Lcom/ironsource/S9;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/ironsource/S9;->f:Ljava/util/Map;

    iget-object v9, p0, Lcom/ironsource/S9;->g:Lcom/ironsource/Oc;

    iget-object v10, p0, Lcom/ironsource/S9;->d:Lcom/ironsource/i8;

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/R9;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;Lcom/ironsource/i8;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/i8;)Lcom/ironsource/S9;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/S9;->d:Lcom/ironsource/i8;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/S9;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/ironsource/S9;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/ironsource/S9;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/S9;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/ironsource/S9;->f:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/S9;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/S9;->c:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ironsource/S9;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/S9;->j:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/S9;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/S9;->i:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/ironsource/S9;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_a
    const-string v1, "name"

    iget-object v2, p0, Lcom/ironsource/S9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "rewarded"

    iget-boolean v2, p0, Lcom/ironsource/S9;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_2a

    :catch_19
    move-exception v1

    .line 12
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 13
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 15
    :goto_2a
    iget-boolean v1, p0, Lcom/ironsource/S9;->c:Z

    if-nez v1, :cond_38

    iget-boolean v1, p0, Lcom/ironsource/S9;->h:Z

    if-eqz v1, :cond_33

    goto :goto_38

    :cond_33
    invoke-static {v0}, Lcom/ironsource/da;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_38
    :goto_38
    invoke-static {}, Lcom/ironsource/da;->a()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    return-object v0
.end method

.method public c()Lcom/ironsource/S9;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/S9;->b:Z

    return-object p0
.end method

.method public c(Z)Lcom/ironsource/S9;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/S9;->h:Z

    return-object p0
.end method
