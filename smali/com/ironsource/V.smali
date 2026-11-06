###### Class com.ironsource.V (com.ironsource.V)
.class public Lcom/ironsource/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/V$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdManagerData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdManagerData.kt\ncom/ironsource/mediationsdk/adunit/manager/adManagerData/AdManagerData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n295#2,2:52\n*S KotlinDebug\n*F\n+ 1 AdManagerData.kt\ncom/ironsource/mediationsdk/adunit/manager/adManagerData/AdManagerData\n*L\n36#1:52,2\n*E\n"
.end annotation


# static fields
.field public static final q:Lcom/ironsource/V$a;

.field public static final r:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/IronSource$a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/A2;

.field private e:I

.field private final f:I

.field private g:Z

.field private final h:I

.field private final i:I

.field private final j:Lcom/ironsource/M0;

.field private final k:Lcom/ironsource/I0;

.field private final l:J

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/V$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/V$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/V;->q:Lcom/ironsource/V$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;Lcom/ironsource/I0;JZZZZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/A2;",
            "IIZII",
            "Lcom/ironsource/M0;",
            "Lcom/ironsource/I0;",
            "JZZZZ)V"
        }
    .end annotation

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingData"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionData"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/V;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 3
    iput-object p2, p0, Lcom/ironsource/V;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/V;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/ironsource/V;->d:Lcom/ironsource/A2;

    .line 6
    iput p5, p0, Lcom/ironsource/V;->e:I

    .line 7
    iput p6, p0, Lcom/ironsource/V;->f:I

    .line 8
    iput-boolean p7, p0, Lcom/ironsource/V;->g:Z

    .line 9
    iput p8, p0, Lcom/ironsource/V;->h:I

    .line 10
    iput p9, p0, Lcom/ironsource/V;->i:I

    .line 11
    iput-object p10, p0, Lcom/ironsource/V;->j:Lcom/ironsource/M0;

    .line 12
    iput-object p11, p0, Lcom/ironsource/V;->k:Lcom/ironsource/I0;

    .line 13
    iput-wide p12, p0, Lcom/ironsource/V;->l:J

    move p1, p14

    .line 14
    iput-boolean p1, p0, Lcom/ironsource/V;->m:Z

    move/from16 p1, p15

    .line 15
    iput-boolean p1, p0, Lcom/ironsource/V;->n:Z

    move/from16 p1, p16

    .line 16
    iput-boolean p1, p0, Lcom/ironsource/V;->o:Z

    move/from16 p1, p17

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/V;->p:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;Lcom/ironsource/I0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 39

    const v0, 0x8000

    and-int v0, p18, v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    goto :goto_2e

    :cond_2b
    move/from16 v18, p17

    goto :goto_a

    .line 18
    :goto_2e
    invoke-direct/range {v1 .. v18}, Lcom/ironsource/V;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;Lcom/ironsource/I0;JZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/ironsource/V;->i:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 6

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 21
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v1, v2

    .line 38
    :cond_28
    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    :cond_2a
    return-object v1
.end method

.method public final a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/ironsource/V;->e:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/V;->g:Z

    return-void
.end method

.method public final b()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public final b(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/V;->p:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/V;->g:Z

    return v0
.end method

.method public final d()Lcom/ironsource/A2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->d:Lcom/ironsource/A2;

    return-object v0
.end method

.method public final e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/V;->l:J

    return-wide v0
.end method

.method public final f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/V;->h:I

    return v0
.end method

.method public final g()Lcom/ironsource/I0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->k:Lcom/ironsource/I0;

    return-object v0
.end method

.method public final h()Lcom/ironsource/M0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->j:Lcom/ironsource/M0;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/V;->e:I

    return v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->c:Ljava/util/List;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/V;->m:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/V;->o:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/V;->p:Z

    return v0
.end method

.method public final n()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/V;->f:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/V;->n:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/V;->d:Lcom/ironsource/A2;

    invoke-virtual {v0}, Lcom/ironsource/A2;->g()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/ironsource/V;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    iget-boolean v1, p0, Lcom/ironsource/V;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8
    iget-boolean v1, p0, Lcom/ironsource/V;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v4, "bidderExclusive"

    const-string v6, "showPriorityEnabled"

    const-string v2, "parallelLoad"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 9
    const-string v2, "%s: %d, %s: %b, %s: %b"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.ironsource.V.a (com.ironsource.V$a)
.class public final Lcom/ironsource/V$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/V$a;-><init>()V

    return-void
.end method
