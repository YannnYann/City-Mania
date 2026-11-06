###### Class com.ironsource.C3881ug (com.ironsource.ug)
.class public final Lcom/ironsource/ug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/t4;


# direct methods
.method public constructor <init>(Lcom/ironsource/t4;)V
    .registers 3

    const-string v0, "currentTimeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ug;->a:Lcom/ironsource/t4;

    return-void
.end method


# virtual methods
.method public final a(JJ)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/ironsource/ug;->a:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_1c

    cmp-long v2, p1, v2

    if-lez v2, :cond_1c

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1c

    sub-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-lez p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method
