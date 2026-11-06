###### Class com.ironsource.C3689k9 (com.ironsource.k9)
.class public final Lcom/ironsource/k9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/t4;

.field private final b:Lcom/ironsource/Rb$a;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Lcom/ironsource/Rb;

.field private f:Lcom/ironsource/j9;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ironsource/k9;-><init>(Lcom/ironsource/t4;Lcom/ironsource/Rb$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t4;Lcom/ironsource/Rb$a;)V
    .registers 4

    const-string v0, "currentTimeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryInfoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/k9;->a:Lcom/ironsource/t4;

    .line 4
    iput-object p2, p0, Lcom/ironsource/k9;->b:Lcom/ironsource/Rb$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/t4;Lcom/ironsource/Rb$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_9

    .line 5
    new-instance p1, Lcom/ironsource/t4$a;

    invoke-direct {p1}, Lcom/ironsource/t4$a;-><init>()V

    :cond_9
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_12

    .line 6
    new-instance p2, Lcom/ironsource/Rb$a$a;

    invoke-direct {p2}, Lcom/ironsource/Rb$a$a;-><init>()V

    .line 7
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/ironsource/k9;-><init>(Lcom/ironsource/t4;Lcom/ironsource/Rb$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/j9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k9;->f:Lcom/ironsource/j9;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "serverResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/k9;->c:Ljava/lang/Long;

    .line 3
    iget-object p1, p0, Lcom/ironsource/k9;->b:Lcom/ironsource/Rb$a;

    invoke-interface {p1}, Lcom/ironsource/Rb$a;->get()Lcom/ironsource/Rb;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/k9;->e:Lcom/ironsource/Rb;

    .line 4
    iget-object p1, p0, Lcom/ironsource/k9;->a:Lcom/ironsource/t4;

    invoke-interface {p1}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/k9;->d:Ljava/lang/Long;

    return-void
.end method

.method public final b()Lcom/ironsource/j9;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/ironsource/k9;->d:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2
    iget-object v1, v0, Lcom/ironsource/k9;->c:Ljava/lang/Long;

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3
    iget-object v1, v0, Lcom/ironsource/k9;->e:Lcom/ironsource/Rb;

    if-nez v1, :cond_18

    return-object v2

    .line 5
    :cond_18
    iget-object v2, v0, Lcom/ironsource/k9;->a:Lcom/ironsource/t4;

    invoke-interface {v2}, Lcom/ironsource/t4;->a()J

    move-result-wide v7

    .line 6
    iget-object v2, v0, Lcom/ironsource/k9;->b:Lcom/ironsource/Rb$a;

    invoke-interface {v2}, Lcom/ironsource/Rb$a;->get()Lcom/ironsource/Rb;

    move-result-object v2

    sub-long v10, v7, v3

    .line 10
    invoke-virtual {v2}, Lcom/ironsource/Rb;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/ironsource/Rb;->d()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 11
    invoke-virtual {v2}, Lcom/ironsource/Rb;->e()I

    move-result v3

    invoke-virtual {v1}, Lcom/ironsource/Rb;->e()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 12
    invoke-virtual {v2}, Lcom/ironsource/Rb;->f()I

    move-result v2

    invoke-virtual {v1}, Lcom/ironsource/Rb;->f()I

    move-result v1

    sub-int/2addr v2, v1

    int-to-long v1, v2

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    const/16 v1, 0x400

    int-to-long v1, v1

    .line 14
    div-long/2addr v5, v1

    .line 17
    new-instance v9, Lcom/ironsource/j9;

    .line 20
    new-instance v12, Lcom/ironsource/j9$a;

    invoke-direct/range {v12 .. v18}, Lcom/ironsource/j9$a;-><init>(JJJ)V

    move-wide v13, v5

    .line 21
    invoke-direct/range {v9 .. v14}, Lcom/ironsource/j9;-><init>(JLcom/ironsource/j9$a;J)V

    .line 30
    iput-object v9, v0, Lcom/ironsource/k9;->f:Lcom/ironsource/j9;

    return-object v9

    :cond_64
    return-object v2
.end method
