###### Class com.ironsource.C3768og (com.ironsource.og)
.class public Lcom/ironsource/og;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private c:Lorg/json/JSONObject;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/og;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/og;->c:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/og;->d:Z

    return-void
.end method

.method public static a()Lcom/ironsource/og;
    .registers 1

    .line 6
    new-instance v0, Lcom/ironsource/og;

    invoke-direct {v0}, Lcom/ironsource/og;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/og;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/ironsource/og;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/ironsource/og;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/ironsource/og;->d:Z

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/og;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/og;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/og;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/og;->d:Z

    return v0
.end method
