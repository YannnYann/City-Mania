###### Class com.ironsource.C3779p9 (com.ironsource.p9)
.class public final Lcom/ironsource/p9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/p9;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ironsource/p9;->a:I

    .line 4
    iput p2, p0, Lcom/ironsource/p9;->b:I

    .line 5
    iput p3, p0, Lcom/ironsource/p9;->c:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/16 p1, 0x3e

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    const/16 p2, 0xc

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    const/4 p3, 0x1

    .line 6
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/p9;-><init>(III)V

    return-void
.end method

.method private final a()I
    .registers 4

    .line 4
    iget v0, p0, Lcom/ironsource/p9;->c:I

    iget v1, p0, Lcom/ironsource/p9;->d:I

    iget v2, p0, Lcom/ironsource/p9;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/p9;->f:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 3
    iput-object p1, p0, Lcom/ironsource/p9;->f:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method public final a(Lcom/ironsource/se;)Z
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result p1

    const/16 v0, 0x83e

    if-eq p1, v0, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/ironsource/se;)Lcom/ironsource/Sd;
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/se;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/p9;->a(Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/ironsource/p9;->d:I

    iget v0, p0, Lcom/ironsource/p9;->a:I

    if-lt p1, v0, :cond_15

    .line 5
    sget-object p1, Lcom/ironsource/Sd$a;->a:Lcom/ironsource/Sd$a;

    return-object p1

    .line 8
    :cond_15
    invoke-virtual {p0}, Lcom/ironsource/p9;->e()V

    .line 9
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-direct {p0}, Lcom/ironsource/p9;->a()I

    move-result p1

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 10
    iget p1, p0, Lcom/ironsource/p9;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/p9;->d:I

    .line 11
    new-instance p1, Lcom/ironsource/Sd$b;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ironsource/Sd$b;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p9;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/p9;->d:I

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/p9;->e:Z

    return v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/p9;->e:Z

    return-void
.end method
