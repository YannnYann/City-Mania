###### Class com.ironsource.C3950yd (com.ironsource.yd)
.class public final Lcom/ironsource/yd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/zd;
.implements Lcom/ironsource/F;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreloadAdUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreloadAdUnit.kt\ncom/ironsource/services/preload/PreloadAdUnit\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1#2:156\n360#3,7:157\n*S KotlinDebug\n*F\n+ 1 PreloadAdUnit.kt\ncom/ironsource/services/preload/PreloadAdUnit\n*L\n141#1:157,7\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lcom/ironsource/Fd;

.field private final e:Lcom/ironsource/T0;

.field private f:Z

.field private g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/m6;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Ljava/lang/Integer;

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILcom/ironsource/Fd;Lcom/ironsource/T0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ironsource/Fd;",
            "Lcom/ironsource/T0;",
            ")V"
        }
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitTools"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/yd;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/yd;->b:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/ironsource/yd;->c:I

    .line 5
    iput-object p4, p0, Lcom/ironsource/yd;->d:Lcom/ironsource/Fd;

    .line 6
    iput-object p5, p0, Lcom/ironsource/yd;->e:Lcom/ironsource/T0;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/ironsource/yd;->f:Z

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    return-void
.end method

.method private final a(Lcom/ironsource/A;)I
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    check-cast v2, Lcom/ironsource/m6;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private final a(I)V
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    if-nez v0, :cond_18

    .line 28
    iget-object v0, p0, Lcom/ironsource/yd;->e:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Cb;->c()V

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    return-void

    .line 30
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 36
    iget-object v0, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/m6;

    invoke-virtual {p1}, Lcom/ironsource/m6;->c()V

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    return-void
.end method

.method private final b(Z)V
    .registers 3

    .line 2
    iget v0, p0, Lcom/ironsource/yd;->j:I

    if-lez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_14

    .line 7
    iget-object v0, p0, Lcom/ironsource/yd;->e:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Cb;->a()V

    .line 10
    :cond_14
    iget-object v0, p0, Lcom/ironsource/yd;->g:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/ironsource/yd;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final d()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/yd;->i:I

    iget-object v1, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    return-void

    .line 2
    :cond_b
    iget v0, p0, Lcom/ironsource/yd;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/yd;->j:I

    .line 3
    iget-object v0, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    iget v1, p0, Lcom/ironsource/yd;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/m6;

    .line 4
    iget v1, p0, Lcom/ironsource/yd;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/yd;->i:I

    .line 5
    invoke-virtual {v0, p0}, Lcom/ironsource/A;->a(Lcom/ironsource/F;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/A;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p2}, Lcom/ironsource/yd;->a(Lcom/ironsource/A;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2c

    .line 40
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/yd;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stale load failure callback for adUnitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_2c
    iget p1, p0, Lcom/ironsource/yd;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ironsource/yd;->j:I

    .line 44
    iget-object p1, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/ironsource/yd;->b(Z)V

    return-void

    .line 49
    :cond_3a
    iget p1, p0, Lcom/ironsource/yd;->i:I

    iget-object p2, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_48

    .line 50
    invoke-direct {p0}, Lcom/ironsource/yd;->d()V

    return-void

    :cond_48
    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/ironsource/yd;->b(Z)V

    return-void
.end method

.method public a(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/yd;->e:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Cb;->b()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/yd;->f:Z

    .line 4
    iput-object p1, p0, Lcom/ironsource/yd;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    iget-object p1, p0, Lcom/ironsource/yd;->d:Lcom/ironsource/Fd;

    iget-object v1, p0, Lcom/ironsource/yd;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/ironsource/Fd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 8
    invoke-direct {p0, v0}, Lcom/ironsource/yd;->b(Z)V

    return-void

    .line 12
    :cond_29
    iput-object p1, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    .line 13
    iget v1, p0, Lcom/ironsource/yd;->c:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_35
    if-ge v0, p1, :cond_3d

    invoke-direct {p0}, Lcom/ironsource/yd;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_3d
    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 14
    iget-boolean v0, p0, Lcom/ironsource/yd;->l:Z

    if-nez v0, :cond_1f

    .line 15
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/yd;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset before getting instance for adUnitId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    :cond_1f
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ironsource/yd;->l:Z

    .line 19
    iput v0, p0, Lcom/ironsource/yd;->i:I

    .line 20
    iput v0, p0, Lcom/ironsource/yd;->j:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ironsource/yd;->g:Lkotlin/jvm/functions/Function1;

    .line 22
    iput-boolean p1, p0, Lcom/ironsource/yd;->f:Z

    if-eqz p1, :cond_35

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    :cond_35
    return-void
.end method

.method public a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/yd;->f:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/yd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/ironsource/A;)V
    .registers 5

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/ironsource/yd;->a(Lcom/ironsource/A;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/A;->c()V

    .line 15
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/yd;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stale load success callback for adUnitId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2a
    iget v2, p0, Lcom/ironsource/yd;->j:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ironsource/yd;->j:I

    .line 19
    iget-boolean v1, p0, Lcom/ironsource/yd;->l:Z

    if-eqz v1, :cond_37

    .line 20
    invoke-virtual {p1}, Lcom/ironsource/A;->c()V

    goto :goto_3a

    .line 22
    :cond_37
    invoke-direct {p0, v0}, Lcom/ironsource/yd;->a(I)V

    :goto_3a
    const/4 p1, 0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/yd;->b(Z)V

    return-void
.end method

.method public c()Lcom/ironsource/m6;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/yd;->k:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-boolean v2, p0, Lcom/ironsource/yd;->l:Z

    if-eqz v2, :cond_e

    return-object v1

    :cond_e
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/ironsource/yd;->l:Z

    .line 4
    iget-object v1, p0, Lcom/ironsource/yd;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/m6;

    return-object v0

    :cond_1a
    return-object v1
.end method
