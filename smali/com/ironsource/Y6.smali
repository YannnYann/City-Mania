###### Class com.ironsource.Y6 (com.ironsource.Y6)
.class public final Lcom/ironsource/Y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Z6;


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/c7;


# direct methods
.method public constructor <init>(JLcom/ironsource/c7;)V
    .registers 5

    const-string v0, "recoveryStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/Y6;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/Y6;->b:Lcom/ironsource/c7;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/b7;)V
    .registers 4

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/b7;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ironsource/b7;->c()Lcom/ironsource/c7;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ironsource/Y6;-><init>(JLcom/ironsource/c7;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Y6;->a:J

    return-wide v0
.end method

.method public b()Lcom/ironsource/c7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Y6;->b:Lcom/ironsource/c7;

    return-object v0
.end method
