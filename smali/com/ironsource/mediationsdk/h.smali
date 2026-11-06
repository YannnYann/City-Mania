###### Class com.ironsource.mediationsdk.h (com.ironsource.mediationsdk.h)
.class public final Lcom/ironsource/mediationsdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/IronSource$a;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/r2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/ironsource/j2;

.field private j:Lcom/ironsource/ia;

.field private k:Ljava/lang/String;

.field private l:Lcom/ironsource/mediationsdk/ISBannerSize;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Double;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->b:Ljava/util/ArrayList;

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->d:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/h;->f:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/h;->g:Ljava/util/List;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ironsource/mediationsdk/h;->h:I

    .line 15
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/mediationsdk/h;Lcom/ironsource/mediationsdk/IronSource$a;ILjava/lang/Object;)Lcom/ironsource/mediationsdk/h;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic m()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public final a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/h;
    .registers 3

    .line 2
    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/h;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/h;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .line 7
    iput p1, p0, Lcom/ironsource/mediationsdk/h;->h:I

    return-void
.end method

.method public final a(Lcom/ironsource/ia;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->j:Lcom/ironsource/ia;

    return-void
.end method

.method public final a(Lcom/ironsource/j2;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->i:Lcom/ironsource/j2;

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->l:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method public final a(Lcom/ironsource/r2;)V
    .registers 3

    const-string v0, "instanceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/Double;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->s:Ljava/lang/Double;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->q:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->g:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->f:Ljava/util/Map;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/h;->m:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->p:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/h;->e:Z

    return-void
.end method

.method public final c()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->d:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/h;->c:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->t:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/h;->n:Z

    return-void
.end method

.method public final e()Lcom/ironsource/j2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->i:Lcom/ironsource/j2;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/h;->k:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/h;->o:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ironsource/mediationsdk/h;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->l:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public final g()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->s:Ljava/lang/Double;

    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->f:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/r2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/ironsource/ia;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->j:Lcom/ironsource/ia;

    return-object v0
.end method

.method public final p()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/h;->h:I

    return v0
.end method

.method public final q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/h;->n:Z

    return v0
.end method

.method public final r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/h;->o:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/h;->m:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuctionRequestParams(adUnit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/h;->e:Z

    return v0
.end method

.method public final v()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/h;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final w()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/h;->c:Z

    return v0
.end method
