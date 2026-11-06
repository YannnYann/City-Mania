###### Class com.ironsource.V6 (com.ironsource.V6)
.class public Lcom/ironsource/V6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "adunit_data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .line 5
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/S6;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/S6;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/R6$a;)V
    .registers 7

    const-string v0, "adunit_data"

    .line 39
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/S6;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_3a

    .line 52
    :cond_1d
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_3a

    .line 58
    :cond_24
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 60
    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p1

    .line 63
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/ironsource/R6$a;)V
    .registers 8

    const-string v0, "adunit_data"

    .line 7
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/S6;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_34

    .line 15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 17
    invoke-virtual {v1, v0, p1}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_32
    move-exception p1

    goto :goto_57

    .line 23
    :cond_34
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 25
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 26
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    invoke-virtual {v1, v0, p1}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_4b
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 35
    invoke-virtual {v1, v0, p1}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_56} :catch_32

    return-void

    .line 38
    :goto_57
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 3
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 4
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ironsource/S6;->b()Lcom/ironsource/S6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/S6;->a(Ljava/util/Map;)V

    return-void
.end method
