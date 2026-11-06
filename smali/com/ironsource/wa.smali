###### Class com.ironsource.C3911wa (com.ironsource.wa)
.class public Lcom/ironsource/wa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/ua;


# direct methods
.method public constructor <init>(Lcom/ironsource/ua;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/wa;->a:Lcom/ironsource/ua;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/va;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/wa;->a:Lcom/ironsource/ua;

    invoke-virtual {p1}, Lcom/ironsource/va;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lcom/ironsource/va;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/wa;->a:Lcom/ironsource/ua;

    invoke-virtual {p1}, Lcom/ironsource/va;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
