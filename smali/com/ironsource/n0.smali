###### Class com.ironsource.C3734n0 (com.ironsource.n0)
.class public Lcom/ironsource/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/mediationsdk/IronSource$a;

.field private b:Ljava/lang/String;

.field private c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private d:I

.field private e:I

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/n0;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 3
    iput-object p2, p0, Lcom/ironsource/n0;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/ironsource/n0;->e:I

    .line 5
    iput-object p4, p0, Lcom/ironsource/n0;->f:Lorg/json/JSONObject;

    .line 6
    iput-object p5, p0, Lcom/ironsource/n0;->g:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/ironsource/n0;->h:I

    .line 8
    iput-object p7, p0, Lcom/ironsource/n0;->i:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/ironsource/n0;->c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 10
    iput p9, p0, Lcom/ironsource/n0;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/n0;->h:I

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/n0;->d:I

    return v0
.end method

.method public g()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/n0;->e:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n0;->b:Ljava/lang/String;

    return-object v0
.end method
