###### Class com.ironsource.C3579e6 (com.ironsource.e6)
.class public final Lcom/ironsource/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qa;


# instance fields
.field private final a:Lcom/ironsource/Xe;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/ironsource/o7;Lcom/ironsource/Xe;)V
    .registers 4

    const-string v0, "applicationLifecycleService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/ironsource/e6;->a:Lcom/ironsource/Xe;

    .line 9
    invoke-interface {p1, p0}, Lcom/ironsource/X1;->a(Lcom/ironsource/qa;)V

    .line 11
    invoke-direct {p0}, Lcom/ironsource/e6;->f()V

    return-void
.end method

.method private final e()J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/e6;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final f()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/e6;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/e6;->a:Lcom/ironsource/Xe;

    invoke-direct {p0}, Lcom/ironsource/e6;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/Xe;->a(Ljava/lang/Long;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/e6;->a:Lcom/ironsource/Xe;

    invoke-virtual {v0}, Lcom/ironsource/Xe;->run()V

    return-void
.end method

.method public b()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/e6;->f()V

    return-void
.end method

.method public c()V
    .registers 1

    .line 0
    return-void
.end method

.method public d()V
    .registers 1

    .line 0
    return-void
.end method
