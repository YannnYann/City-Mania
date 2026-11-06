###### Class com.ironsource.N4 (com.ironsource.N4)
.class public final Lcom/ironsource/N4;
.super Lcom/ironsource/Sg;
.source "SourceFile"


# instance fields
.field private final d:Lcom/ironsource/cd;

.field private final e:Lcom/ironsource/Mg;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/cd;Lcom/ironsource/Mg;)V
    .registers 5

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallInstances"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Sg;-><init>(Lcom/ironsource/p0;Lcom/ironsource/cd;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/N4;->d:Lcom/ironsource/cd;

    .line 3
    iput-object p3, p0, Lcom/ironsource/N4;->e:Lcom/ironsource/Mg;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .registers 3

    .line 1
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/N4;->d:Lcom/ironsource/cd;

    iget-object v1, p0, Lcom/ironsource/N4;->e:Lcom/ironsource/Mg;

    invoke-virtual {v1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/cd;->a(Ljava/util/List;Lcom/ironsource/A;)V

    return-void
.end method

.method public c(Lcom/ironsource/A;)V
    .registers 3

    .line 0
    const-string v0, "instanceToShow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
