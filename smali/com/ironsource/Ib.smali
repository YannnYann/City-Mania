###### Class com.ironsource.Ib (com.ironsource.Ib)
.class public final Lcom/ironsource/Ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/W5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/W5<",
        "Lcom/ironsource/Hb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/Jd;

.field private final c:Lcom/ironsource/e1;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/Jd;Lcom/ironsource/e1;Z)V
    .registers 6

    const-string v0, "adm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterConfigs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ib;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Ib;->b:Lcom/ironsource/Jd;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Ib;->c:Lcom/ironsource/e1;

    .line 5
    iput-boolean p4, p0, Lcom/ironsource/Ib;->d:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ib;->b()Lcom/ironsource/Hb;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ironsource/Hb;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/ve;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ib;->c:Lcom/ironsource/e1;

    iget-object v1, p0, Lcom/ironsource/Ib;->b:Lcom/ironsource/Jd;

    invoke-interface {v0, v1}, Lcom/ironsource/e1;->a(Lcom/ironsource/Jd;)Lcom/ironsource/v9;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/T;

    iget-object v2, p0, Lcom/ironsource/Ib;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ironsource/Ib;->d:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/ironsource/T;-><init>(Ljava/lang/String;Lcom/ironsource/v9;Z)V

    invoke-virtual {v1}, Lcom/ironsource/T;->a()V

    if-eqz v0, :cond_30

    .line 4
    new-instance v4, Lcom/ironsource/Hb;

    .line 5
    invoke-interface {v0}, Lcom/ironsource/d1;->f()Lcom/ironsource/x9;

    move-result-object v5

    .line 6
    invoke-interface {v0}, Lcom/ironsource/d1;->e()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface {v0}, Lcom/ironsource/u;->b()J

    move-result-wide v7

    .line 8
    invoke-interface {v0}, Lcom/ironsource/d1;->d()Z

    move-result v9

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 9
    invoke-direct/range {v4 .. v12}, Lcom/ironsource/Hb;-><init>(Lcom/ironsource/x9;Ljava/lang/String;JZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method
