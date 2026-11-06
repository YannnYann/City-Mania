###### Class com.ironsource.C3631h4 (com.ironsource.h4)
.class public Lcom/ironsource/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/h4;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ironsource/h4;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/ironsource/h4;->c:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/ironsource/h4;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/ironsource/h4;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/ironsource/h4;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ironsource/h4;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/ironsource/h4;->b:Lorg/json/JSONObject;

    .line 13
    iput-object p3, p0, Lcom/ironsource/h4;->c:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/ironsource/h4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/h4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/h4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/h4;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/h4;->c:Ljava/lang/String;

    return-object v0
.end method
