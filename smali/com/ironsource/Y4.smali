###### Class com.ironsource.Y4 (com.ironsource.Y4)
.class public Lcom/ironsource/Y4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/X4;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/X4;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/X4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Y4;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Y4;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Y4;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/ironsource/t8$e;Ljava/lang/String;Lcom/ironsource/X4;)V
    .registers 5

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_11

    .line 11
    invoke-direct {p0, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 13
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private b(Lcom/ironsource/t8$e;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t8$e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/X4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object p1, p0, Lcom/ironsource/Y4;->a:Ljava/util/Map;

    return-object p1

    .line 3
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    iget-object p1, p0, Lcom/ironsource/Y4;->b:Ljava/util/Map;

    return-object p1

    .line 5
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 6
    iget-object p1, p0, Lcom/ironsource/Y4;->c:Ljava/util/Map;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/ironsource/t8$e;Lcom/ironsource/R9;)Lcom/ironsource/X4;
    .registers 4

    .line 14
    new-instance v0, Lcom/ironsource/X4;

    invoke-direct {v0, p2}, Lcom/ironsource/X4;-><init>(Lcom/ironsource/R9;)V

    .line 15
    invoke-virtual {p2}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;Lcom/ironsource/X4;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/t8$e;Ljava/lang/String;)Lcom/ironsource/X4;
    .registers 4

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/X4;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/t8$e;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;)Lcom/ironsource/X4;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t8$e;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/Oc;",
            ")",
            "Lcom/ironsource/X4;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/ironsource/X4;

    invoke-direct {v0, p2, p2, p3, p4}, Lcom/ironsource/X4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;)V

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;Lcom/ironsource/X4;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/t8$e;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t8$e;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/ironsource/X4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 5
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public b(Lcom/ironsource/t8$e;Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 8
    invoke-direct {p0, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 10
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/X4;

    if-eqz p1, :cond_17

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/X4;->a()V

    :cond_17
    return-void
.end method
