###### Class com.ironsource.C3528ba (com.ironsource.ba)
.class public Lcom/ironsource/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ironsource/V6;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/V6;

    invoke-direct {v0}, Lcom/ironsource/V6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "cnst"

    invoke-virtual {v0, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 34
    const-string v1, "asel"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-virtual {v0, p1}, Lcom/ironsource/V6;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/ironsource/U7;)V
    .registers 5

    .line 16
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v1, "omv"

    invoke-virtual {p1}, Lcom/ironsource/U7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "ompv"

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/U7;->b()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "sdkv"

    invoke-virtual {p1}, Lcom/ironsource/U7;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-virtual {p1, v0}, Lcom/ironsource/V6;->a(Ljava/util/Map;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    .line 29
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/ironsource/ye;)V
    .registers 4

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ironsource/ba$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ba$a;-><init>(Lcom/ironsource/ba;Lcom/ironsource/ye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "fs"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "abt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 3
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "gdprcnsts"

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "md"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "cnst"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "gdprcnsts"

    invoke-virtual {v0, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .registers 4

    if-ltz p1, :cond_d

    .line 3
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "cmpid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 6

    .line 6
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/ironsource/B7;->o(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    .line 9
    invoke-interface {v0, p1}, Lcom/ironsource/B7;->c(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v2

    .line 10
    const-string v3, "availMem"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->b(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lowM"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "adq_init_blob"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "tkgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "itp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "apky"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "audt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "google_water_mark"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "mt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "medv"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    const-string v1, "usid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

###### Class com.ironsource.C3528ba.a (com.ironsource.ba$a)
.class Lcom/ironsource/ba$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ba;->a(Lcom/ironsource/ye;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/ye;

.field final synthetic c:Lcom/ironsource/ba;


# direct methods
.method public constructor <init>(Lcom/ironsource/ba;Lcom/ironsource/ye;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/ba$a;->c:Lcom/ironsource/ba;

    iput-object p2, p0, Lcom/ironsource/ba$a;->b:Lcom/ironsource/ye;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ba$a;->c:Lcom/ironsource/ba;

    iget-object v0, v0, Lcom/ironsource/ba;->a:Lcom/ironsource/V6;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/ironsource/ba$a;->b:Lcom/ironsource/ye;

    .line 2
    invoke-virtual {v2}, Lcom/ironsource/ye;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    const-string v2, "inm"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method
