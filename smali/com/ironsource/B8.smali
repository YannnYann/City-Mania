###### Class com.ironsource.B8 (com.ironsource.B8)
.class public Lcom/ironsource/B8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ironsource/I5;
    .registers 3

    .line 14
    new-instance v0, Lcom/ironsource/I5$a;

    const-string v1, "endpoint"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I5$a;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/ironsource/I5$a;->b()Lcom/ironsource/I5$a;

    move-result-object v0

    .line 16
    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ironsource/I5$a;->b(Z)Lcom/ironsource/I5$a;

    move-result-object p0

    new-instance v0, Lcom/ironsource/z8;

    invoke-direct {v0}, Lcom/ironsource/z8;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/ironsource/I5$a;->a(Lcom/ironsource/J7;)Lcom/ironsource/I5$a;

    move-result-object p0

    .line 18
    invoke-static {}, Lcom/ironsource/B8;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/I5$a;->a(Ljava/util/List;)Lcom/ironsource/I5$a;

    move-result-object p0

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/ironsource/I5$a;->a(Z)Lcom/ironsource/I5$a;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/ironsource/I5$a;->a()Lcom/ironsource/I5;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ironsource/X4;Lcom/ironsource/t8$e;)Lcom/ironsource/t8$e;
    .registers 4

    if-nez p0, :cond_3

    goto :goto_16

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_16

    .line 35
    :cond_a
    invoke-virtual {p0}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_16
    return-object p1

    .line 39
    :cond_17
    invoke-virtual {p0}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 40
    sget-object p0, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    return-object p0

    .line 41
    :cond_2a
    sget-object p0, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/y8;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/y8;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/y8$a;

    invoke-direct {v0}, Lcom/ironsource/y8$a;-><init>()V

    if-eqz p4, :cond_18

    .line 5
    const-string v1, "sessionid"

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lcom/ironsource/y8$a;->d(Ljava/lang/String;)Lcom/ironsource/y8$a;

    .line 10
    :cond_18
    invoke-virtual {v0, p0}, Lcom/ironsource/y8$a;->a(Landroid/content/Context;)Lcom/ironsource/y8$a;

    .line 11
    invoke-virtual {v0, p3}, Lcom/ironsource/y8$a;->b(Ljava/lang/String;)Lcom/ironsource/y8$a;

    .line 13
    invoke-virtual {v0, p1}, Lcom/ironsource/y8$a;->e(Ljava/lang/String;)Lcom/ironsource/y8$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/y8$a;->a(Ljava/lang/String;)Lcom/ironsource/y8$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/y8$a;->a()Lcom/ironsource/y8;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Landroid/util/Pair;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Landroid/util/Pair;

    const-string v2, "charset"

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Lcom/ironsource/X4;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "inAppBidding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    return v0

    .line 28
    :cond_11
    invoke-virtual {p0}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
