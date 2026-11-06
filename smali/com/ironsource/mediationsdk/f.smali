###### Class com.ironsource.mediationsdk.f (com.ironsource.mediationsdk.f)
.class public final Lcom/ironsource/mediationsdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/g;


# instance fields
.field private final a:Lcom/ironsource/A2;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/A2;Ljava/lang/String;)V
    .registers 4

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/f;->b:Ljava/lang/String;

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/h;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "enrichTokenOneFlow(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)Lcom/ironsource/mediationsdk/e$a;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionRequestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/f;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/h;->t()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/A2;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5
    new-instance v1, Lcom/ironsource/t2;

    .line 7
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/h;->u()Z

    move-result v5

    .line 10
    iget-object v6, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    move-object v2, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/t2;-><init>(Lcom/ironsource/c2;Ljava/net/URL;Lorg/json/JSONObject;ZLcom/ironsource/A2;)V

    return-object v1

    :cond_35
    move-object v2, p3

    .line 18
    new-instance v1, Lcom/ironsource/mediationsdk/e$a;

    .line 20
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/h;->u()Z

    move-result v5

    .line 23
    iget-object v6, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/e$a;-><init>(Lcom/ironsource/c2;Ljava/net/URL;Lorg/json/JSONObject;ZLcom/ironsource/A2;)V

    return-object v1
.end method

.method public a()Z
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    invoke-virtual {v0}, Lcom/ironsource/A2;->n()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/f;->a:Lcom/ironsource/A2;

    invoke-virtual {v0}, Lcom/ironsource/A2;->g()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
