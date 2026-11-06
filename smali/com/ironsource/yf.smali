###### Class com.ironsource.C3952yf (com.ironsource.yf)
.class public Lcom/ironsource/yf;
.super Lcom/ironsource/Sg;
.source "SourceFile"


# instance fields
.field private final d:Lcom/ironsource/cd;

.field private final e:Lcom/ironsource/Mg;

.field private final f:Lcom/ironsource/G;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/cd;Lcom/ironsource/Mg;Lcom/ironsource/G;)V
    .registers 6

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallInstances"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstanceLoadStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Sg;-><init>(Lcom/ironsource/p0;Lcom/ironsource/cd;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/yf;->d:Lcom/ironsource/cd;

    .line 3
    iput-object p3, p0, Lcom/ironsource/yf;->e:Lcom/ironsource/Mg;

    .line 4
    iput-object p4, p0, Lcom/ironsource/yf;->f:Lcom/ironsource/G;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/ironsource/yf;->f:Lcom/ironsource/G;

    invoke-virtual {v0}, Lcom/ironsource/G;->c()Lcom/ironsource/G$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/G$c;->a()Lcom/ironsource/A;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 9
    iget-object v1, p0, Lcom/ironsource/yf;->d:Lcom/ironsource/cd;

    iget-object v2, p0, Lcom/ironsource/yf;->e:Lcom/ironsource/Mg;

    invoke-virtual {v2}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ironsource/cd;->a(Ljava/util/List;Lcom/ironsource/A;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/yf;->f:Lcom/ironsource/G;

    invoke-virtual {v0, p1}, Lcom/ironsource/G;->a(Lcom/ironsource/A;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/ironsource/yf;->d:Lcom/ironsource/cd;

    iget-object v1, p0, Lcom/ironsource/yf;->e:Lcom/ironsource/Mg;

    invoke-virtual {v1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/cd;->a(Ljava/util/List;Lcom/ironsource/A;)V

    return-void

    .line 3
    :cond_19
    iget-object p1, p0, Lcom/ironsource/yf;->f:Lcom/ironsource/G;

    invoke-virtual {p1}, Lcom/ironsource/G;->a()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 4
    iget-object p1, p0, Lcom/ironsource/yf;->f:Lcom/ironsource/G;

    invoke-virtual {p1}, Lcom/ironsource/G;->c()Lcom/ironsource/G$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/G$c;->a()Lcom/ironsource/A;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 6
    iget-object v0, p0, Lcom/ironsource/yf;->d:Lcom/ironsource/cd;

    iget-object v1, p0, Lcom/ironsource/yf;->e:Lcom/ironsource/Mg;

    invoke-virtual {v1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/cd;->a(Ljava/util/List;Lcom/ironsource/A;)V

    :cond_38
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .registers 3

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/ironsource/A;)V
    .registers 4

    const-string v0, "instanceToShow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/yf;->d:Lcom/ironsource/cd;

    iget-object v1, p0, Lcom/ironsource/yf;->e:Lcom/ironsource/Mg;

    invoke-virtual {v1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/cd;->a(Ljava/util/List;Lcom/ironsource/A;)V

    return-void
.end method
