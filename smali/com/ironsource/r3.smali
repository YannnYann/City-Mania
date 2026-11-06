###### Class com.ironsource.AbstractC3812r3 (com.ironsource.r3)
.class public abstract Lcom/ironsource/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/r3$e;
    }
.end annotation


# static fields
.field static O:Z = false


# instance fields
.field private A:[I

.field private B:[I

.field private C:[I

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field G:I

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/ironsource/F5;

.field private L:Lcom/ironsource/ia;

.field private M:Lcom/ironsource/Ve;

.field private final N:Ljava/lang/Object;

.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/ironsource/G4;

.field private q:Lcom/ironsource/e;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:I

.field private u:Lcom/ironsource/N8;

.field private v:Landroid/content/Context;

.field private w:I

.field private x:I

.field private y:I

.field private z:[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetB(Lcom/ironsource/r3;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->B:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetE(Lcom/ironsource/r3;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->E:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetK(Lcom/ironsource/r3;)Lcom/ironsource/F5;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetm(Lcom/ironsource/r3;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/r3;->m:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetp(Lcom/ironsource/r3;)Lcom/ironsource/G4;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgett(Lcom/ironsource/r3;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/r3;->t:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->u:Lcom/ironsource/N8;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetv(Lcom/ironsource/r3;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r3;->v:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputm(Lcom/ironsource/r3;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/ironsource/r3;->m:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputt(Lcom/ironsource/r3;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/ironsource/r3;->t:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;ILcom/ironsource/mediationsdk/IronSource$a;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(ILcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/r3;->a()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;Lcom/ironsource/C5;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;I[I)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(I[I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;Ljava/lang/String;Lcom/ironsource/C5;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(Ljava/lang/String;Lcom/ironsource/C5;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/r3;[I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->a([I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/r3;Lcom/ironsource/C5;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->b(Lcom/ironsource/C5;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/r3;Ljava/util/ArrayList;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->b(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$me(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->e(Lcom/ironsource/C5;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mf(Lcom/ironsource/r3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/r3;->f()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mg(Lcom/ironsource/r3;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/r3;->g()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mi(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->i(Lcom/ironsource/C5;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/ironsource/r3;->a:I

    const/16 v1, 0x64

    .line 22
    iput v1, p0, Lcom/ironsource/r3;->b:I

    const/16 v2, 0x1388

    .line 23
    iput v2, p0, Lcom/ironsource/r3;->c:I

    const v3, 0x15f90

    .line 24
    iput v3, p0, Lcom/ironsource/r3;->d:I

    const/16 v3, 0x400

    .line 25
    iput v3, p0, Lcom/ironsource/r3;->e:I

    const/4 v3, 0x5

    .line 27
    iput v3, p0, Lcom/ironsource/r3;->f:I

    .line 28
    const-string v3, "supersonic_sdk.db"

    iput-object v3, p0, Lcom/ironsource/r3;->g:Ljava/lang/String;

    .line 30
    const-string v3, "provider"

    iput-object v3, p0, Lcom/ironsource/r3;->h:Ljava/lang/String;

    .line 31
    const-string v3, "placement"

    iput-object v3, p0, Lcom/ironsource/r3;->i:Ljava/lang/String;

    .line 32
    const-string v3, "abt"

    iput-object v3, p0, Lcom/ironsource/r3;->j:Ljava/lang/String;

    .line 33
    const-string v3, "mt"

    iput-object v3, p0, Lcom/ironsource/r3;->k:Ljava/lang/String;

    const/4 v3, 0x0

    .line 37
    iput-boolean v3, p0, Lcom/ironsource/r3;->m:Z

    .line 38
    iput-boolean v3, p0, Lcom/ironsource/r3;->n:Z

    const/4 v3, -0x1

    .line 39
    iput v3, p0, Lcom/ironsource/r3;->o:I

    .line 45
    iput-boolean v0, p0, Lcom/ironsource/r3;->s:Z

    .line 50
    iput v1, p0, Lcom/ironsource/r3;->w:I

    .line 51
    iput v2, p0, Lcom/ironsource/r3;->x:I

    .line 52
    iput v0, p0, Lcom/ironsource/r3;->y:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/r3;->D:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/r3;->E:Ljava/util/Map;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/r3;->F:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/r3;->N:Ljava/lang/Object;

    return-void
.end method

.method private a(ILcom/ironsource/mediationsdk/IronSource$a;)I
    .registers 7

    .line 116
    sget-object v0, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    invoke-virtual {v0}, Lcom/ironsource/r3$e;->b()I

    move-result v0

    .line 118
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    if-eq p2, v1, :cond_69

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    if-lt p1, v1, :cond_12

    if-lt p1, v2, :cond_69

    :cond_12
    const v1, 0x16378

    const v3, 0x16760

    if-lt p1, v1, :cond_1d

    if-ge p1, v3, :cond_1d

    goto :goto_69

    .line 122
    :cond_1d
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    if-eq p2, v1, :cond_62

    const/16 v1, 0xbb8

    if-lt p1, v2, :cond_27

    if-lt p1, v1, :cond_62

    :cond_27
    const v2, 0x16b48

    if-lt p1, v3, :cond_2f

    if-ge p1, v2, :cond_2f

    goto :goto_62

    .line 126
    :cond_2f
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    if-eq p2, v3, :cond_5b

    const/16 v3, 0xfa0

    if-lt p1, v1, :cond_39

    if-lt p1, v3, :cond_5b

    :cond_39
    const v1, 0x16f30

    if-lt p1, v2, :cond_41

    if-ge p1, v1, :cond_41

    goto :goto_5b

    .line 129
    :cond_41
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    if-eq p2, v2, :cond_54

    if-lt p1, v3, :cond_4b

    const/16 p2, 0x1388

    if-lt p1, p2, :cond_54

    :cond_4b
    if-lt p1, v1, :cond_53

    const p2, 0x17318

    if-ge p1, p2, :cond_53

    goto :goto_54

    :cond_53
    return v0

    .line 131
    :cond_54
    :goto_54
    sget-object p1, Lcom/ironsource/r3$e;->e:Lcom/ironsource/r3$e;

    invoke-virtual {p1}, Lcom/ironsource/r3$e;->b()I

    move-result p1

    return p1

    .line 132
    :cond_5b
    :goto_5b
    sget-object p1, Lcom/ironsource/r3$e;->f:Lcom/ironsource/r3$e;

    invoke-virtual {p1}, Lcom/ironsource/r3$e;->b()I

    move-result p1

    return p1

    .line 133
    :cond_62
    :goto_62
    sget-object p1, Lcom/ironsource/r3$e;->c:Lcom/ironsource/r3$e;

    invoke-virtual {p1}, Lcom/ironsource/r3$e;->b()I

    move-result p1

    return p1

    .line 134
    :cond_69
    :goto_69
    sget-object p1, Lcom/ironsource/r3$e;->d:Lcom/ironsource/r3$e;

    invoke-virtual {p1}, Lcom/ironsource/r3$e;->b()I

    move-result p1

    return p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    .line 43
    invoke-virtual {p0, p2, v0}, Lcom/ironsource/r3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/C5;

    .line 45
    invoke-virtual {v1, p2}, Lcom/ironsource/C5;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-object p1
.end method

.method private a()V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/ironsource/r3;->N:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    iget-object v2, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/G4;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private a(Lcom/ironsource/C5;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x400

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/ironsource/C5;Ljava/lang/String;I)V
    .registers 6

    .line 104
    invoke-virtual {p1}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 106
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    .line 108
    :try_start_d
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p3}, Lcom/ironsource/r3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 111
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 112
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    if-eqz v0, :cond_88

    .line 71
    invoke-virtual {v0}, Lcom/ironsource/ia;->a()I

    move-result v0

    if-lez v0, :cond_19

    const-string v0, "age"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_19

    :catch_16
    move-exception p1

    goto/16 :goto_b9

    .line 72
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v0}, Lcom/ironsource/ia;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 73
    const-string v0, "gen"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_30
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v0}, Lcom/ironsource/ia;->e()I

    move-result v0

    if-lez v0, :cond_43

    .line 75
    const-string v0, "lvl"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    :cond_43
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v0}, Lcom/ironsource/ia;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 77
    const-string v0, "pay"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    :cond_5a
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v0}, Lcom/ironsource/ia;->c()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_71

    const-string v0, "iapt"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->c()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 79
    :cond_71
    iget-object v0, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v0}, Lcom/ironsource/ia;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_88

    .line 80
    const-string v0, "ucd"

    iget-object v1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    invoke-virtual {v1}, Lcom/ironsource/ia;->h()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    :cond_88
    iget-object v0, p0, Lcom/ironsource/r3;->M:Lcom/ironsource/Ve;

    if-eqz v0, :cond_c9

    .line 84
    invoke-virtual {v0}, Lcom/ironsource/Ve;->b()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    const-string v1, "segmentId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_9b
    iget-object v0, p0, Lcom/ironsource/r3;->M:Lcom/ironsource/Ve;

    invoke-virtual {v0}, Lcom/ironsource/Ve;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b8} :catch_16

    goto :goto_a5

    .line 96
    :goto_b9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 97
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_c9
    return-void
.end method

.method private a(I[I)Z
    .registers 6

    .line 67
    invoke-direct {p0, p2}, Lcom/ironsource/r3;->a([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    move v0, v1

    .line 68
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_14

    .line 69
    aget v2, p2, v0

    if-ne p1, v2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return v1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/ironsource/C5;)Z
    .registers 4

    monitor-enter p0

    .line 21
    :try_start_1
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    if-nez p1, :cond_c

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_c
    :try_start_c
    iget-object p1, p0, Lcom/ironsource/r3;->C:[I

    invoke-direct {p0, p1}, Lcom/ironsource/r3;->a([I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 32
    invoke-virtual {p2}, Lcom/ironsource/C5;->c()I

    move-result p1

    iget-object p2, p0, Lcom/ironsource/r3;->C:[I

    invoke-direct {p0, p1, p2}, Lcom/ironsource/r3;->a(I[I)Z

    move-result p1

    goto :goto_2f

    :catchall_1f
    move-exception p1

    goto :goto_31

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/ironsource/C5;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_1f

    :goto_2f
    monitor-exit p0

    return p1

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1f

    throw p1
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;I)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/C5;

    .line 42
    invoke-virtual {v0}, Lcom/ironsource/C5;->c()I

    move-result v0

    if-ne v0, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private a([I)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 66
    array-length p1, p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized b(Lcom/ironsource/C5;)I
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    const v0, 0x15f90

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/ironsource/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 3
    :cond_10
    :goto_10
    iget v0, p0, Lcom/ironsource/r3;->G:I

    invoke-static {p1, v0}, Lcom/ironsource/K5;->a(Ljava/lang/String;I)Lcom/ironsource/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    return-void
.end method

.method private b(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/ironsource/r3;->y:I

    if-lt p1, v1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    return v0
.end method

.method private e(Lcom/ironsource/C5;)Z
    .registers 3

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_8
    const-string v0, "sessionDepth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private f()V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iput-boolean v0, p0, Lcom/ironsource/r3;->m:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_136

    .line 7
    :try_start_8
    iget-object v2, p0, Lcom/ironsource/r3;->N:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3c

    .line 9
    :try_start_b
    iget-object v3, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    iget-object v4, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ironsource/G4;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    iget-object v5, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ironsource/G4;->b(Ljava/lang/String;)V

    .line 12
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3e

    .line 15
    :try_start_1b
    new-instance v2, Lcom/ironsource/H5$c;

    new-instance v4, Lcom/ironsource/H5$a;

    iget-object v5, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    invoke-direct {v4, v3, v5}, Lcom/ironsource/H5$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v3, p0, Lcom/ironsource/r3;->x:I

    invoke-direct {v2, v4, v3}, Lcom/ironsource/H5$c;-><init>(Lcom/ironsource/H5;I)V

    .line 22
    iget-object v3, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    invoke-virtual {v2}, Lcom/ironsource/H5$c;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/G4;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lcom/ironsource/H5$c;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_3c

    goto :goto_6a

    :catchall_3c
    move-exception v2

    goto :goto_41

    :catchall_3e
    move-exception v3

    .line 24
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3c

    .line 37
    :goto_41
    :try_start_41
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 39
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CombinedEventList exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 41
    iget-object v2, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    :goto_6a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b3

    .line 45
    iget-object v2, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    iput v0, p0, Lcom/ironsource/r3;->t:I

    .line 48
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/O6;->b()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_41 .. :try_end_7f} :catchall_136

    .line 52
    :try_start_7f
    invoke-direct {p0, v2}, Lcom/ironsource/r3;->a(Lorg/json/JSONObject;)V

    .line 55
    invoke-virtual {p0}, Lcom/ironsource/r3;->b()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 57
    const-string v4, "abt"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_94

    :catchall_92
    move-exception v3

    goto :goto_100

    .line 60
    :cond_94
    :goto_94
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/p;->j()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 62
    const-string v4, "mt"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_a7
    invoke-virtual {p0}, Lcom/ironsource/r3;->c()Ljava/util/Map;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_df

    .line 67
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b9
    :goto_b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b9

    .line 76
    :cond_df
    new-instance v3, Lcom/ironsource/M5;

    invoke-direct {v3}, Lcom/ironsource/M5;-><init>()V

    invoke-virtual {v3}, Lcom/ironsource/M5;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 78
    :goto_ec
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_121

    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ff
    .catchall {:try_start_7f .. :try_end_ff} :catchall_92

    goto :goto_ec

    .line 84
    :goto_100
    :try_start_100
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 85
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while building the event general properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 92
    :cond_121
    iget-object v3, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    invoke-virtual {v3, v1, v2}, Lcom/ironsource/e;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 95
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to parse events."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1b3

    :catchall_136
    move-exception v0

    goto :goto_192

    .line 99
    :cond_138
    sget-boolean v3, Lcom/ironsource/r3;->O:Z

    if-nez v3, :cond_165

    iget-boolean v3, p0, Lcom/ironsource/r3;->l:Z

    if-eqz v3, :cond_165

    sget-object v3, Lcom/ironsource/D5;->b:Lcom/ironsource/D5;

    .line 101
    invoke-virtual {v3}, Lcom/ironsource/D5;->c()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/ironsource/r3;->a(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 102
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "events data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 103
    sput-boolean v3, Lcom/ironsource/r3;->O:Z

    .line 107
    :cond_165
    iget-boolean v3, p0, Lcom/ironsource/r3;->n:Z
    :try_end_167
    .catchall {:try_start_100 .. :try_end_167} :catchall_136

    if-eqz v3, :cond_17c

    .line 109
    :try_start_169
    iget v3, p0, Lcom/ironsource/r3;->o:I

    invoke-static {v2, v3}, Lcom/ironsource/Y9;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 110
    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_173} :catch_174
    .catchall {:try_start_169 .. :try_end_173} :catchall_136

    goto :goto_17c

    :catch_174
    move-exception v0

    .line 112
    :try_start_175
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_17c
    :goto_17c
    new-instance v0, Lcom/ironsource/N5;

    new-instance v3, Lcom/ironsource/r3$c;

    invoke-direct {v3, p0}, Lcom/ironsource/r3$c;-><init>(Lcom/ironsource/r3;)V

    iget-object v4, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    .line 159
    invoke-virtual {v4}, Lcom/ironsource/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/ironsource/N5;-><init>(Lcom/ironsource/G7;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    sget-object v1, Lcom/ironsource/Jf;->a:Lcom/ironsource/Jf;

    invoke-virtual {v1, v0}, Lcom/ironsource/Jf;->b(Ljava/lang/Runnable;)V
    :try_end_191
    .catchall {:try_start_175 .. :try_end_191} :catchall_136

    goto :goto_1b3

    .line 165
    :goto_192
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 166
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send event exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_1b3
    :goto_1b3
    return-void
.end method

.method private g()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/r3;->t:I

    iget v1, p0, Lcom/ironsource/r3;->w:I

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/ironsource/r3;->m:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p0, Lcom/ironsource/r3;->l:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private i(Lcom/ironsource/C5;)Z
    .registers 4

    if-eqz p1, :cond_2b

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3;->z:[I

    invoke-direct {p0, v0}, Lcom/ironsource/r3;->a([I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    iget-object v0, p0, Lcom/ironsource/r3;->z:[I

    invoke-direct {p0, p1, v0}, Lcom/ironsource/r3;->a(I[I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 5
    :cond_17
    iget-object v0, p0, Lcom/ironsource/r3;->A:[I

    invoke-direct {p0, v0}, Lcom/ironsource/r3;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    iget-object v0, p0, Lcom/ironsource/r3;->A:[I

    invoke-direct {p0, p1, v0}, Lcom/ironsource/r3;->a(I[I)Z

    move-result p1

    return p1

    :cond_2a
    return v1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_11

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_11
    return-object p1
.end method

.method public a(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 54
    iput p1, p0, Lcom/ironsource/r3;->w:I

    :cond_4
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/ironsource/ia;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/ironsource/r3;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    iget-object v1, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/e;->a(Ljava/lang/String;)V

    .line 5
    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/ironsource/G4;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/G4;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    .line 6
    iget-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    new-instance v1, Lcom/ironsource/r3$a;

    invoke-direct {v1, p0}, Lcom/ironsource/r3$a;-><init>(Lcom/ironsource/r3;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->z:[I

    .line 15
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->A:[I

    .line 16
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->B:[I

    .line 17
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->C:[I

    .line 18
    iput-object p2, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    .line 19
    iput-object p1, p0, Lcom/ironsource/r3;->v:Landroid/content/Context;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/C5;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_17

    .line 36
    :try_start_3
    iget-boolean v0, p0, Lcom/ironsource/r3;->s:Z

    if-nez v0, :cond_8

    goto :goto_17

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    new-instance v1, Lcom/ironsource/r3$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/r3$b;-><init>(Lcom/ironsource/r3;Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/Ve;)V
    .registers 2

    monitor-enter p0

    .line 20
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/r3;->M:Lcom/ironsource/Ve;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public a(Lcom/ironsource/ia;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/ironsource/r3;->L:Lcom/ironsource/ia;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    invoke-virtual {v0, p1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/ironsource/r3;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 58
    iput-object p1, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/ironsource/r3;->b(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 46
    iget-object v0, p0, Lcom/ironsource/r3;->N:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    iget-object v2, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/G4;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/ironsource/r3;->p:Lcom/ironsource/G4;

    iget-object v1, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ironsource/G4;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ironsource/r3;->t:I

    .line 53
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/ironsource/r3;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "auctionTrials"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 103
    const-string p2, "auctionFallback"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/ironsource/r3;->s:Z

    return-void
.end method

.method public a([ILandroid/content/Context;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/ironsource/r3;->B:[I

    .line 56
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/ironsource/r3;->F:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 4
    iput p1, p0, Lcom/ironsource/r3;->y:I

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 8
    iget-object v0, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0, p1}, Lcom/ironsource/e;->a(Ljava/lang/String;)V

    .line 11
    :cond_d
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ironsource/r3;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ironsource/r3;->n:Z

    return-void
.end method

.method public b([ILandroid/content/Context;)V
    .registers 4

    .line 5
    iput-object p1, p0, Lcom/ironsource/r3;->z:[I

    .line 6
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->c(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public abstract c(Lcom/ironsource/C5;)I
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ironsource/r3;->D:Ljava/util/Map;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/ironsource/r3;->o:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/r3;->l:Z

    return-void
.end method

.method public c([ILandroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3;->A:[I

    .line 2
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public abstract d()V
.end method

.method public d(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 1
    iput p1, p0, Lcom/ironsource/r3;->x:I

    :cond_4
    return-void
.end method

.method public d([ILandroid/content/Context;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/ironsource/r3;->C:[I

    .line 3
    iget-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public abstract d(Lcom/ironsource/C5;)Z
.end method

.method public abstract e(I)Ljava/lang/String;
.end method

.method public e()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/r3;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ironsource/r3;->t:I

    .line 3
    iget-object v0, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/r3;->G:I

    invoke-static {v0, v1}, Lcom/ironsource/K5;->a(Ljava/lang/String;I)Lcom/ironsource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->q:Lcom/ironsource/e;

    .line 5
    new-instance v0, Lcom/ironsource/F5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/F5;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    iget-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    invoke-virtual {v0}, Lcom/ironsource/F5;->a()V

    .line 9
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->m()Lcom/ironsource/N8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r3;->u:Lcom/ironsource/N8;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    .line 11
    invoke-virtual {p0}, Lcom/ironsource/r3;->d()V

    return-void
.end method

.method public f(I)I
    .registers 3

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/ironsource/r3;->a(ILcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    return p1
.end method

.method public abstract f(Lcom/ironsource/C5;)V
.end method

.method public g(Lcom/ironsource/C5;)Z
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->c:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->d:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->i:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->j:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    sget-object v0, Lcom/ironsource/D5;->k:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

.method public h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3;->K:Lcom/ironsource/F5;

    new-instance v1, Lcom/ironsource/r3$d;

    invoke-direct {v1, p0}, Lcom/ironsource/r3$d;-><init>(Lcom/ironsource/r3;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Lcom/ironsource/C5;)Z
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->b:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->L:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->Q:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->R:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->S:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->N:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->c:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->d:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->i:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    sget-object v1, Lcom/ironsource/D5;->j:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    sget-object v0, Lcom/ironsource/D5;->k:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_86

    const/4 p1, 0x1

    return p1

    :cond_86
    const/4 p1, 0x0

    return p1
.end method

.method public abstract j(Lcom/ironsource/C5;)Z
.end method

###### Class com.ironsource.AbstractC3812r3.a (com.ironsource.r3$a)
.class Lcom/ironsource/r3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->a(Landroid/content/Context;Lcom/ironsource/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r3;


# direct methods
.method public constructor <init>(Lcom/ironsource/r3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$a;->a:Lcom/ironsource/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3$a;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3812r3.b (com.ironsource.r3$b)
.class Lcom/ironsource/r3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->a(Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/C5;

.field final synthetic b:Lcom/ironsource/mediationsdk/IronSource$a;

.field final synthetic c:Lcom/ironsource/r3;


# direct methods
.method public constructor <init>(Lcom/ironsource/r3;Lcom/ironsource/C5;Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iput-object p2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iput-object p3, p0, Lcom/ironsource/r3$b;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/N8;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventSessionId"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/N8;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "essn"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetv(Lcom/ironsource/r3;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v1, v2}, Lcom/ironsource/r3;->g(Lcom/ironsource/C5;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_41
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v1, v0, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Ljava/lang/String;Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 10
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1, v0}, Lcom/ironsource/r3;->-$$Nest$mb(Lcom/ironsource/r3;Lcom/ironsource/C5;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/C5;->a(I)V

    .line 13
    :cond_56
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetv(Lcom/ironsource/r3;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 15
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "rawConnectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_69
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v1}, Lcom/ironsource/C5;->c()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/r3$b;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;ILcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    .line 19
    sget-object v1, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    invoke-virtual {v1}, Lcom/ironsource/r3$e;->b()I

    move-result v1

    if-eq v0, v1, :cond_8a

    .line 20
    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adUnit"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_8a
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "reason"

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Lcom/ironsource/C5;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    const-string v2, "ext1"

    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Lcom/ironsource/C5;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetE(Lcom/ironsource/r3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 27
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetE(Lcom/ironsource/r3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b6
    :goto_b6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId"

    if-eq v2, v3, :cond_b6

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timestamp"

    if-eq v2, v3, :cond_b6

    .line 31
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b6

    .line 37
    :cond_f4
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v1, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0, v1}, Lcom/ironsource/r3;->-$$Nest$mi(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_172

    .line 39
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->h(Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$me(Lcom/ironsource/r3;Lcom/ironsource/C5;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 40
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->c(Lcom/ironsource/C5;)I

    move-result v0

    .line 41
    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_126
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->j(Lcom/ironsource/C5;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 45
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->f(Lcom/ironsource/C5;)V

    .line 49
    :cond_137
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetu(Lcom/ironsource/r3;)Lcom/ironsource/N8;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/N8;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_152

    .line 51
    iget-object v0, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "firstSessionTimestamp"

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_152
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgett(Lcom/ironsource/r3;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$fputt(Lcom/ironsource/r3;I)V

    .line 62
    :cond_172
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetB(Lcom/ironsource/r3;)[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;[I)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 65
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v2}, Lcom/ironsource/C5;->c()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v3}, Lcom/ironsource/r3;->-$$Nest$fgetB(Lcom/ironsource/r3;)[I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;I[I)Z

    move-result v0

    goto :goto_199

    .line 67
    :cond_191
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    iget-object v2, p0, Lcom/ironsource/r3$b;->a:Lcom/ironsource/C5;

    invoke-virtual {v0, v2}, Lcom/ironsource/r3;->d(Lcom/ironsource/C5;)Z

    move-result v0

    .line 70
    :goto_199
    iget-object v2, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetm(Lcom/ironsource/r3;)Z

    move-result v3

    if-nez v3, :cond_1a6

    if-eqz v0, :cond_1a6

    invoke-static {v2, v1}, Lcom/ironsource/r3;->-$$Nest$fputm(Lcom/ironsource/r3;Z)V

    .line 72
    :cond_1a6
    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetp(Lcom/ironsource/r3;)Lcom/ironsource/G4;

    move-result-object v1

    if-eqz v1, :cond_1cb

    .line 74
    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$mg(Lcom/ironsource/r3;)Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 75
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$mf(Lcom/ironsource/r3;)V

    return-void

    .line 76
    :cond_1b8
    iget-object v1, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v1}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/r3;->-$$Nest$mb(Lcom/ironsource/r3;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1c6

    if-eqz v0, :cond_1cb

    .line 77
    :cond_1c6
    iget-object v0, p0, Lcom/ironsource/r3$b;->c:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;)V

    :cond_1cb
    return-void
.end method

###### Class com.ironsource.AbstractC3812r3.c (com.ironsource.r3$c)
.class Lcom/ironsource/r3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/G7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r3;


# direct methods
.method public static synthetic $r8$lambda$zXr4oBg84DLood6MlvBJUI1pKWg(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/r3$c;->b(Lcom/ironsource/G7$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/r3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Lcom/ironsource/G7$a;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetp(Lcom/ironsource/r3;)Lcom/ironsource/G4;

    move-result-object v1

    iget-object v0, v0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ironsource/G4;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ironsource/r3;->-$$Nest$fputt(Lcom/ironsource/r3;I)V

    goto :goto_4b

    :catch_27
    move-exception v0

    goto :goto_44

    .line 9
    :cond_29
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to send events. Saving them back to storage."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/G7$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-virtual {v1, v0}, Lcom/ironsource/r3;->a(Ljava/util/ArrayList;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_27

    goto :goto_4b

    .line 20
    :goto_44
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 22
    :goto_4b
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/r3$c;->a(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ironsource/G7$a;)V
    .registers 4

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetK(Lcom/ironsource/r3;)Lcom/ironsource/F5;

    move-result-object v0

    new-instance v1, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearData exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

###### Class com.ironsource.r3$c$$ExternalSyntheticLambda0 (com.ironsource.r3$c$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/r3$c;

.field public final synthetic f$1:Lcom/ironsource/G7$a;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/r3$c;

    iput-object p2, p0, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/G7$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/r3$c;

    iget-object v1, p0, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/G7$a;

    invoke-static {v0, v1}, Lcom/ironsource/r3$c;->$r8$lambda$zXr4oBg84DLood6MlvBJUI1pKWg(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3812r3.d (com.ironsource.r3$d)
.class Lcom/ironsource/r3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r3;


# direct methods
.method public constructor <init>(Lcom/ironsource/r3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$d;->a:Lcom/ironsource/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/r3$d;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$mf(Lcom/ironsource/r3;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3812r3.e (com.ironsource.r3$e)
.class public final enum Lcom/ironsource/r3$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/r3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/r3$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/r3$e;

.field public static final enum c:Lcom/ironsource/r3$e;

.field public static final enum d:Lcom/ironsource/r3$e;

.field public static final enum e:Lcom/ironsource/r3$e;

.field public static final enum f:Lcom/ironsource/r3$e;

.field private static final synthetic g:[Lcom/ironsource/r3$e;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/r3$e;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "NOT_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/r3$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    .line 2
    new-instance v0, Lcom/ironsource/r3$e;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/r3$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/r3$e;->c:Lcom/ironsource/r3$e;

    .line 3
    new-instance v0, Lcom/ironsource/r3$e;

    const-string v1, "REWARDED_VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/r3$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/r3$e;->d:Lcom/ironsource/r3$e;

    .line 4
    new-instance v0, Lcom/ironsource/r3$e;

    const-string v1, "NATIVE_AD"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/r3$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/r3$e;->e:Lcom/ironsource/r3$e;

    .line 5
    new-instance v0, Lcom/ironsource/r3$e;

    const-string v1, "BANNER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/r3$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/r3$e;->f:Lcom/ironsource/r3$e;

    .line 6
    invoke-static {}, Lcom/ironsource/r3$e;->a()[Lcom/ironsource/r3$e;

    move-result-object v0

    sput-object v0, Lcom/ironsource/r3$e;->g:[Lcom/ironsource/r3$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ironsource/r3$e;->a:I

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/r3$e;
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/r3$e;->b:Lcom/ironsource/r3$e;

    sget-object v1, Lcom/ironsource/r3$e;->c:Lcom/ironsource/r3$e;

    sget-object v2, Lcom/ironsource/r3$e;->d:Lcom/ironsource/r3$e;

    sget-object v3, Lcom/ironsource/r3$e;->e:Lcom/ironsource/r3$e;

    sget-object v4, Lcom/ironsource/r3$e;->f:Lcom/ironsource/r3$e;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ironsource/r3$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/r3$e;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/r3$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/r3$e;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/r3$e;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/r3$e;->g:[Lcom/ironsource/r3$e;

    invoke-virtual {v0}, [Lcom/ironsource/r3$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/r3$e;

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/r3$e;->a:I

    return v0
.end method
