###### Class com.ironsource.C3960z5 (com.ironsource.z5)
.class public final Lcom/ironsource/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/z5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/z5;

    invoke-direct {v0}, Lcom/ironsource/z5;-><init>()V

    sput-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 6

    if-eqz p2, :cond_30

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/e8;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Underlying network error: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_34

    .line 4
    :cond_30
    invoke-virtual {p1}, Lcom/ironsource/e8;->d()Ljava/lang/String;

    move-result-object p2

    .line 7
    :goto_34
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Lcom/ironsource/e8;->c()I

    move-result p1

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private final a(Lcom/ironsource/e8;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    if-eqz p2, :cond_8

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 9
    :cond_8
    invoke-virtual {p1}, Lcom/ironsource/e8;->d()Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_c
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Lcom/ironsource/e8;->c()I

    move-result p1

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ironsource/z5;Ljava/lang/String;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 17
    const-string p1, ""

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/z5;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ironsource/z5;Ljava/lang/String;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    const-string p1, ""

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/z5;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/ironsource/z5;Ljava/lang/String;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 4
    const-string p1, ""

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/z5;->d(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 16
    sget-object v0, Lcom/ironsource/e8;->d:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    const-string v0, "networkError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/ironsource/e8;->c:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    .line 18
    sget-object v0, Lcom/ironsource/e8;->A:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->e:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/e8;->g:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    .line 4
    sget-object v0, Lcom/ironsource/e8;->z:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->f:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    const-string v0, "networkError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/e8;->x:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/e8;->g:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->h:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    .line 2
    sget-object v0, Lcom/ironsource/e8;->B:Lcom/ironsource/e8;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/z5;->a(Lcom/ironsource/e8;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->i:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->j:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->n:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->k:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->l:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->m:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->u:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->w:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->v:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->o:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->q:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->r:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->p:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->t:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->s:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/e8;->y:Lcom/ironsource/e8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ironsource/z5;->a(Lcom/ironsource/z5;Lcom/ironsource/e8;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method
