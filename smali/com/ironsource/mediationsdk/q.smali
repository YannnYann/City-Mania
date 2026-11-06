###### Class com.ironsource.mediationsdk.q (com.ironsource.mediationsdk.q)
.class Lcom/ironsource/mediationsdk/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Jc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/q$d;,
        Lcom/ironsource/mediationsdk/q$e;,
        Lcom/ironsource/mediationsdk/q$f;
    }
.end annotation


# static fields
.field private static z:Lcom/ironsource/mediationsdk/q;


# instance fields
.field private a:Lcom/ironsource/Ye;

.field private b:I

.field private c:Lcom/ironsource/o7;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lcom/ironsource/environment/NetworkStateReceiver;

.field private q:Landroid/os/CountDownTimer;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/Sc;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/ironsource/Ue;

.field private v:Z

.field private w:J

.field private x:Lcom/ironsource/ba;

.field private y:Lcom/ironsource/mediationsdk/q$f;


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ye;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->a:Lcom/ironsource/Ye;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/o7;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->c:Lcom/ironsource/o7;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetf(Lcom/ironsource/mediationsdk/q;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/mediationsdk/q;->f:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/mediationsdk/q;->g:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeth(Lcom/ironsource/mediationsdk/q;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/mediationsdk/q;->h:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeti(Lcom/ironsource/mediationsdk/q;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/mediationsdk/q;->i:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetj(Lcom/ironsource/mediationsdk/q;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/mediationsdk/q;->j:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/q;->l:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm(Lcom/ironsource/mediationsdk/q;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->m:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->r:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgett(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->u:Lcom/ironsource/Ue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetw(Lcom/ironsource/mediationsdk/q;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/q;->w:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetx(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/ba;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputa(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ye;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q;->a:Lcom/ironsource/Ye;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputf(Lcom/ironsource/mediationsdk/q;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/ironsource/mediationsdk/q;->f:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputg(Lcom/ironsource/mediationsdk/q;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/ironsource/mediationsdk/q;->g:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputk(Lcom/ironsource/mediationsdk/q;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q;->k:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q;->l:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputq(Lcom/ironsource/mediationsdk/q;Landroid/os/CountDownTimer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q;->q:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputu(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ue;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q;->u:Lcom/ironsource/Ue;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputv(Lcom/ironsource/mediationsdk/q;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q;->v:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputw(Lcom/ironsource/mediationsdk/q;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/q;->w:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mg(Lcom/ironsource/mediationsdk/q;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/q;->g()Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/ironsource/mediationsdk/q$e;->f:I

    iput v0, p0, Lcom/ironsource/mediationsdk/q;->b:I

    .line 5
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->k()Lcom/ironsource/o7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q;->c:Lcom/ironsource/o7;

    .line 114
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q;->d:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->l:Z

    .line 128
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->n:Z

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/q;->r:Ljava/util/List;

    .line 138
    const-string v1, ""

    iput-object v1, p0, Lcom/ironsource/mediationsdk/q;->s:Ljava/lang/String;

    .line 152
    new-instance v1, Lcom/ironsource/mediationsdk/q$a;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/q$a;-><init>(Lcom/ironsource/mediationsdk/q;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/q;->y:Lcom/ironsource/mediationsdk/q$f;

    .line 153
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getInitHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/q;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 155
    iput v1, p0, Lcom/ironsource/mediationsdk/q;->f:I

    .line 156
    iput v0, p0, Lcom/ironsource/mediationsdk/q;->g:I

    const/16 v2, 0x3e

    .line 157
    iput v2, p0, Lcom/ironsource/mediationsdk/q;->h:I

    const/16 v2, 0xc

    .line 158
    iput v2, p0, Lcom/ironsource/mediationsdk/q;->i:I

    const/4 v2, 0x5

    .line 159
    iput v2, p0, Lcom/ironsource/mediationsdk/q;->j:I

    .line 161
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->k:Z

    .line 163
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->v:Z

    .line 164
    new-instance v0, Lcom/ironsource/ba;

    invoke-direct {v0}, Lcom/ironsource/ba;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    return-void
.end method

.method private static a(Lcom/ironsource/mediationsdk/q$d;)I
    .registers 2

    .line 26
    sget-object v0, Lcom/ironsource/mediationsdk/q$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    .line 34
    sget p0, Lcom/ironsource/mediationsdk/q$e;->a:I

    return p0

    .line 35
    :cond_14
    sget p0, Lcom/ironsource/mediationsdk/q$e;->b:I

    return p0

    .line 36
    :cond_17
    sget p0, Lcom/ironsource/mediationsdk/q$e;->e:I

    return p0

    .line 37
    :cond_1a
    sget p0, Lcom/ironsource/mediationsdk/q$e;->d:I

    return p0
.end method

.method public static declared-synchronized c()Lcom/ironsource/mediationsdk/q;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/q;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/q;->z:Lcom/ironsource/mediationsdk/q;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/mediationsdk/q;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/q;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/q;->z:Lcom/ironsource/mediationsdk/q;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 4
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/mediationsdk/q;->z:Lcom/ironsource/mediationsdk/q;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->k:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/ironsource/mediationsdk/q$d;
    .registers 3

    monitor-enter p0

    .line 114
    :try_start_1
    sget-object v0, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    invoke-virtual {v0}, Lcom/ironsource/Ie;->a()Lcom/ironsource/He;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/ironsource/mediationsdk/q$d;->values()[Lcom/ironsource/mediationsdk/q$d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v1, v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/ironsource/Ue;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-virtual {p2}, Lcom/ironsource/Ue;->g()Lcom/ironsource/f9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/f9;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-virtual {p2}, Lcom/ironsource/Ue;->g()Lcom/ironsource/f9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/f9;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-virtual {v0}, Lcom/ironsource/K1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/ba;->a(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/K1;->c()Lcom/ironsource/I1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/I1;->b()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/ironsource/ba;->d(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    .line 12
    invoke-virtual {v0}, Lcom/ironsource/K1;->k()Lcom/ironsource/og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/og;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/ironsource/ba;->b(Lorg/json/JSONObject;)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/ba;->a(Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/K1;->f()Lcom/ironsource/U1;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-virtual {p1}, Lcom/ironsource/U1;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ironsource/ba;->b(I)V

    .line 23
    invoke-static {}, Lcom/ironsource/Pb;->b0()Lcom/ironsource/L7;

    move-result-object p2

    .line 24
    invoke-interface {p2}, Lcom/ironsource/L7;->o()Lcom/ironsource/D7$a;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/ironsource/U1;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/D7$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 7

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object p4, p0, Lcom/ironsource/mediationsdk/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_4c

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-eqz p4, :cond_4c

    .line 39
    sget-object p4, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {p0, p4}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 40
    iput-object p3, p0, Lcom/ironsource/mediationsdk/q;->s:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ironsource/mediationsdk/q;->t:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 45
    iget-object p1, p0, Lcom/ironsource/mediationsdk/q;->m:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/q;->y:Lcom/ironsource/mediationsdk/q$f;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7a

    :catchall_24
    move-exception p1

    goto :goto_7c

    :catch_26
    move-exception p1

    goto :goto_6a

    .line 47
    :cond_28
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/q;->n:Z

    .line 48
    iget-object p2, p0, Lcom/ironsource/mediationsdk/q;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_35

    .line 49
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/Jc;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/q;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 51
    :cond_35
    iget-object p2, p0, Lcom/ironsource/mediationsdk/q;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance p2, Lcom/ironsource/mediationsdk/q$b;

    invoke-direct {p2, p0}, Lcom/ironsource/mediationsdk/q$b;-><init>(Lcom/ironsource/mediationsdk/q;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    goto :goto_7a

    .line 93
    :cond_4c
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/q;->e:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Multiple calls to init are not allowed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    .line 94
    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_26
    .catchall {:try_start_1 .. :try_end_69} :catchall_24

    goto :goto_7a

    .line 100
    :goto_6a
    :try_start_6a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 101
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_24

    :goto_7a
    monitor-exit p0

    return-void

    :goto_7c
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_24

    throw p1
.end method

.method public a(Z)V
    .registers 4

    .line 102
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->n:Z

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    .line 103
    iget-object p1, p0, Lcom/ironsource/mediationsdk/q;->q:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_d

    .line 104
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_d
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q;->n:Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->k:Z

    .line 109
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 110
    new-instance v0, Lcom/ironsource/C5;

    sget-object v1, Lcom/ironsource/D5;->M:Lcom/ironsource/D5;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 112
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    .line 113
    iget-object p1, p0, Lcom/ironsource/mediationsdk/q;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/q;->y:Lcom/ironsource/mediationsdk/q$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/q;->b:I

    return v0
.end method

.method public declared-synchronized b(Lcom/ironsource/mediationsdk/q$d;)V
    .registers 5

    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/ironsource/He;->values()[Lcom/ironsource/He;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    .line 7
    sget-object v0, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    invoke-virtual {v0, p1}, Lcom/ironsource/Ie;->a(Lcom/ironsource/He;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q;->v:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public e()V
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    return-void
.end method

.method public declared-synchronized f()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->a(Lcom/ironsource/mediationsdk/q$d;)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/q;->b:I

    .line 2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q;->x:Lcom/ironsource/ba;

    invoke-virtual {v1, v0}, Lcom/ironsource/ba;->c(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

###### Class com.ironsource.mediationsdk.q.a (com.ironsource.mediationsdk.q$a)
.class Lcom/ironsource/mediationsdk/q$a;
.super Lcom/ironsource/mediationsdk/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/ironsource/mediationsdk/q;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/q$f;-><init>(Lcom/ironsource/mediationsdk/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/O6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :catch_20
    move-exception v0

    goto/16 :goto_30c

    .line 7
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgett(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 8
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgett(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/O6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_3e
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetx(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/ba;

    move-result-object v2

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/ba;->i(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputw(Lcom/ironsource/mediationsdk/q;J)V

    .line 18
    invoke-static {}, Lcom/ironsource/Nd;->c()Lcom/ironsource/Nd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Nd;->a()V

    .line 21
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 23
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$f;->c:Lcom/ironsource/mediationsdk/p$c;

    .line 24
    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/p;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/Ue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputu(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ue;)V

    .line 27
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_254

    .line 28
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetm(Lcom/ironsource/mediationsdk/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ue;->q()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 32
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    sget-object v2, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 35
    new-instance v1, Lcom/ironsource/Qb;

    invoke-direct {v1}, Lcom/ironsource/Qb;-><init>()V

    .line 36
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/ironsource/K1;->e()Lcom/ironsource/T1;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/ironsource/T1;->b()Ljava/util/Map;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v3

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/ironsource/Qb;->a(Ljava/util/Map;Z)V

    .line 47
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/ironsource/K1;->f()Lcom/ironsource/U1;

    move-result-object v1

    if-eqz v1, :cond_fb

    .line 54
    sget-object v2, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    .line 55
    invoke-virtual {v1}, Lcom/ironsource/U1;->h()Z

    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->c(Z)V

    .line 59
    invoke-virtual {v1}, Lcom/ironsource/U1;->g()Z

    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->a(Z)V

    .line 63
    invoke-virtual {v1}, Lcom/ironsource/U1;->k()I

    move-result v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->a(I)V

    .line 66
    sget-object v2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    .line 67
    invoke-virtual {v1}, Lcom/ironsource/U1;->i()Z

    move-result v3

    .line 68
    invoke-virtual {v2, v3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->setUseSharedExecutorService(Z)V

    .line 70
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetc(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/o7;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ironsource/o7;->a(Lcom/ironsource/U1;)V

    .line 73
    :cond_fb
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 74
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v3, v4}, Lcom/ironsource/mediationsdk/q;->a(Landroid/content/Context;Lcom/ironsource/Ue;)V

    .line 79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetw(Lcom/ironsource/mediationsdk/q;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 80
    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/ironsource/Ue;->i()Lcom/ironsource/Ue$a;

    move-result-object v4

    .line 82
    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/p;->a(JLcom/ironsource/Ue$a;)V

    if-eqz v1, :cond_158

    .line 86
    invoke-virtual {v1}, Lcom/ironsource/U1;->f()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 87
    new-instance v0, Lcom/ironsource/Qd;

    .line 89
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/q$a$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/q$a$$ExternalSyntheticLambda0;-><init>()V

    .line 91
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v3

    sget-object v4, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    .line 92
    invoke-virtual {v4}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/Qd;-><init>(Lcom/ironsource/F7;Lkotlin/jvm/functions/Function0;Lcom/ironsource/M7;Ljava/util/concurrent/Executor;)V

    .line 94
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/ironsource/Qd;->c(Landroid/content/Context;)V

    .line 100
    :cond_158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    new-instance v1, Lcom/ironsource/Ye;

    invoke-direct {v1}, Lcom/ironsource/Ye;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputa(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ye;)V

    .line 101
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeta(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ye;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetc(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/o7;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/Ye;->a(Lcom/ironsource/o7;)V

    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/ironsource/K1;->g()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 111
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19a

    .line 112
    sget-object v0, Lcom/ironsource/y9;->a:Lcom/ironsource/y9$a;

    .line 113
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/ironsource/y9$a;->a(Landroid/content/Context;)V

    .line 119
    :cond_19a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->h()Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Sc;

    .line 122
    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 123
    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$mg(Lcom/ironsource/mediationsdk/q;)Z

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v4

    .line 124
    invoke-interface {v2, v0, v3, v4}, Lcom/ironsource/Sc;->a(Ljava/util/List;ZLcom/ironsource/S3;)V

    goto :goto_1ae

    .line 128
    :cond_1ce
    sget-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    invoke-virtual {v0}, Lcom/ironsource/jd;->i()V

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/ironsource/K1;->d()Lcom/ironsource/O1;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/ironsource/O1;->f()Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 137
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    .line 140
    invoke-virtual {v0}, Lcom/ironsource/O1;->b()Ljava/util/HashSet;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lcom/ironsource/O1;->d()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v0}, Lcom/ironsource/O1;->c()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v0}, Lcom/ironsource/O1;->e()Z

    move-result v6

    .line 145
    invoke-virtual {v0}, Lcom/ironsource/O1;->a()I

    move-result v8

    .line 146
    invoke-virtual {v0}, Lcom/ironsource/O1;->g()Z

    move-result v9

    .line 147
    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/r4;->a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 157
    :cond_20e
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->H()Z

    move-result v0

    if-eqz v0, :cond_31c

    .line 158
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->u()Lcom/ironsource/n7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/n7;->start()V

    return-void

    .line 163
    :cond_228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z

    move-result v1

    if-nez v1, :cond_31c

    .line 164
    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V

    .line 167
    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_242
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 168
    const-string v2, "serverResponseIsNotValid"

    invoke-interface {v1, v2}, Lcom/ironsource/Sc;->g(Ljava/lang/String;)V

    goto :goto_242

    .line 174
    :cond_254
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_276

    .line 175
    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputv(Lcom/ironsource/mediationsdk/q;Z)V

    .line 177
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_266
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_276

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 178
    invoke-interface {v1}, Lcom/ironsource/Sc;->a()V

    goto :goto_266

    .line 182
    :cond_276
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    if-eqz v0, :cond_2ac

    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeth(Lcom/ironsource/mediationsdk/q;)I

    move-result v2

    if-ge v1, v2, :cond_2ac

    .line 183
    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputk(Lcom/ironsource/mediationsdk/q;Z)V

    .line 184
    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetm(Lcom/ironsource/mediationsdk/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetf(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeti(Lcom/ironsource/mediationsdk/q;)I

    move-result v2

    if-ge v1, v2, :cond_2ac

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetf(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputf(Lcom/ironsource/mediationsdk/q;I)V

    .line 187
    :cond_2ac
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    if-eqz v0, :cond_2bc

    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetj(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    if-ne v1, v0, :cond_301

    .line 188
    :cond_2bc
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z

    move-result v1

    if-nez v1, :cond_301

    .line 189
    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V

    .line 190
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 191
    const-string v0, "noServerResponse"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    .line 194
    :cond_2d3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2dd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 195
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/Sc;->g(Ljava/lang/String;)V

    goto :goto_2dd

    .line 198
    :cond_2ef
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Mediation availability false reason: No server response"

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 206
    :cond_301
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputg(Lcom/ironsource/mediationsdk/q;I)V
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30b} :catch_20

    return-void

    .line 210
    :goto_30c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 211
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_31c
    return-void
.end method

###### Class com.ironsource.mediationsdk.q$a$$ExternalSyntheticLambda0 (com.ironsource.mediationsdk.q$a$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/mediationsdk/q$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.q.b (com.ironsource.mediationsdk.q$b)
.class Lcom/ironsource/mediationsdk/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/q;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    new-instance v1, Lcom/ironsource/mediationsdk/q$b$a;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3a98

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/q$b$a;-><init>(Lcom/ironsource/mediationsdk/q$b;JJ)V

    .line 29
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputq(Lcom/ironsource/mediationsdk/q;Landroid/os/CountDownTimer;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.q.b.a (com.ironsource.mediationsdk.q$b$a)
.class Lcom/ironsource/mediationsdk/q$b$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/q$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/q$b;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q$b;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$b$a;->a:Lcom/ironsource/mediationsdk/q$b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$b$a;->a:Lcom/ironsource/mediationsdk/q$b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V

    .line 4
    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Sc;

    .line 5
    const-string v3, "noInternetConnection"

    invoke-interface {v2, v3}, Lcom/ironsource/Sc;->g(Ljava/lang/String;)V

    goto :goto_16

    .line 9
    :cond_28
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 10
    const-string v3, "Mediation availability false reason: No internet connection"

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_33
    return-void
.end method

.method public onTick(J)V
    .registers 5

    const-wide/32 v0, 0xafc8

    cmp-long p1, p1, v0

    if-gtz p1, :cond_27

    .line 1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/q$b$a;->a:Lcom/ironsource/mediationsdk/q$b;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/q$b;->a:Lcom/ironsource/mediationsdk/q;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputv(Lcom/ironsource/mediationsdk/q;Z)V

    .line 3
    invoke-static {p1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/Sc;

    .line 4
    invoke-interface {p2}, Lcom/ironsource/Sc;->a()V

    goto :goto_17

    :cond_27
    return-void
.end method

###### Class com.ironsource.mediationsdk.q.c (com.ironsource.mediationsdk.q$c)
.class synthetic Lcom/ironsource/mediationsdk/q$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/q$d;->values()[Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/q$c;->a:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/mediationsdk/q$c;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/mediationsdk/q$c;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.ironsource.mediationsdk.q.d (com.ironsource.mediationsdk.q$d)
.class final enum Lcom/ironsource/mediationsdk/q$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/q$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/q$d;

.field public static final enum b:Lcom/ironsource/mediationsdk/q$d;

.field public static final enum c:Lcom/ironsource/mediationsdk/q$d;

.field public static final enum d:Lcom/ironsource/mediationsdk/q$d;

.field private static final synthetic e:[Lcom/ironsource/mediationsdk/q$d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/q$d;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/q$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/q$d;->a:Lcom/ironsource/mediationsdk/q$d;

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/q$d;

    const-string v1, "INIT_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/q$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    .line 3
    new-instance v0, Lcom/ironsource/mediationsdk/q$d;

    const-string v1, "INIT_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/q$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    .line 4
    new-instance v0, Lcom/ironsource/mediationsdk/q$d;

    const-string v1, "INITIATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/q$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    .line 5
    invoke-static {}, Lcom/ironsource/mediationsdk/q$d;->a()[Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/q$d;->e:[Lcom/ironsource/mediationsdk/q$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/mediationsdk/q$d;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/q$d;->a:Lcom/ironsource/mediationsdk/q$d;

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    sget-object v2, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    sget-object v3, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/q$d;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/mediationsdk/q$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/q$d;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/q$d;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/q$d;->e:[Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/q$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/q$d;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.q.e (com.ironsource.mediationsdk.q$e)
.class public Lcom/ironsource/mediationsdk/q$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I = 0x3

.field public static e:I = 0x4

.field public static f:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.mediationsdk.q.f (com.ironsource.mediationsdk.q$f)
.class abstract Lcom/ironsource/mediationsdk/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field protected c:Lcom/ironsource/mediationsdk/p$c;

.field final synthetic d:Lcom/ironsource/mediationsdk/q;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f;->d:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/q$f$a;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/q$f$a;-><init>(Lcom/ironsource/mediationsdk/q$f;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f;->c:Lcom/ironsource/mediationsdk/p$c;

    return-void
.end method

###### Class com.ironsource.mediationsdk.q.f.a (com.ironsource.mediationsdk.q$f$a)
.class Lcom/ironsource/mediationsdk/q$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/q$f;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f$a;->a:Lcom/ironsource/mediationsdk/q$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$f$a;->a:Lcom/ironsource/mediationsdk/q$f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    .line 2
    iput-object p1, v0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    return-void
.end method
