###### Class com.ironsource.AbstractC3755o3 (com.ironsource.o3)
.class public abstract Lcom/ironsource/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/P0;
.implements Lcom/ironsource/c2;
.implements Lcom/ironsource/D0;
.implements Lcom/ironsource/Kb;
.implements Lcom/ironsource/Jc;
.implements Lcom/ironsource/o;
.implements Lcom/ironsource/Og;
.implements Lcom/ironsource/x3;
.implements Lcom/ironsource/xd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/o3$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/p3<",
        "*>;",
        "Listener::Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/P0;",
        "Lcom/ironsource/c2;",
        "Lcom/ironsource/D0;",
        "Lcom/ironsource/Kb;",
        "Lcom/ironsource/Jc;",
        "Lcom/ironsource/o;",
        "Lcom/ironsource/Og;",
        "Lcom/ironsource/x3;",
        "Lcom/ironsource/xd;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field private C:Lcom/ironsource/ta;

.field final D:Lcom/ironsource/Q8;

.field final E:Lcom/ironsource/Q8$a;

.field protected final F:Lcom/ironsource/Q7;

.field private final G:Lcom/ironsource/Q7$a;

.field private H:Z

.field private I:Lcom/ironsource/Tf;

.field private J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private K:Lcom/ironsource/Z9;

.field protected a:Lcom/ironsource/Ng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/Ng<",
            "TSmash;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j2$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/ironsource/mediationsdk/e;

.field protected e:Lcom/ironsource/j2;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lorg/json/JSONObject;

.field protected i:Lcom/ironsource/y2;

.field protected j:Lcom/ironsource/md;

.field protected k:Z

.field private l:Lcom/ironsource/environment/NetworkStateReceiver;

.field protected m:Lcom/ironsource/af;

.field protected n:Lcom/ironsource/l5;

.field protected o:Lcom/ironsource/l5;

.field protected p:Lcom/ironsource/V;

.field protected q:Lcom/ironsource/o3$f;

.field protected r:Lcom/ironsource/O0;

.field protected s:Lcom/ironsource/S5;

.field protected t:Lcom/ironsource/E0;

.field protected u:Lcom/ironsource/K0;

.field protected v:Lcom/ironsource/r;

.field protected w:Lcom/ironsource/ia;

.field protected x:Ljava/util/UUID;

.field protected final y:Ljava/lang/Object;

.field private z:J


# direct methods
.method public static bridge synthetic -$$Nest$mA(Lcom/ironsource/o3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/o3;->A()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/o3;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/o3;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/o3;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/o3;->b(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$md(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/o3;->d(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$my(Lcom/ironsource/o3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/o3;->y()V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/M7;Lcom/ironsource/L7;Lcom/ironsource/V;Lcom/ironsource/ta;Lcom/ironsource/ia;)V
    .registers 9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/o3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ironsource/o3;->k:Z

    .line 33
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Lcom/ironsource/o3;->z:J

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ironsource/o3;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/o3;->x:Ljava/util/UUID;

    .line 78
    invoke-interface {p1}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/o3;->D:Lcom/ironsource/Q8;

    .line 79
    invoke-interface {p2}, Lcom/ironsource/L7;->i()Lcom/ironsource/Q8$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/o3;->E:Lcom/ironsource/Q8$a;

    .line 80
    invoke-interface {p1}, Lcom/ironsource/M7;->x()Lcom/ironsource/Q7;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/o3;->F:Lcom/ironsource/Q7;

    .line 81
    invoke-interface {p2}, Lcom/ironsource/L7;->y()Lcom/ironsource/Q7$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/o3;->G:Lcom/ironsource/Q7$a;

    .line 83
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adUnit = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", loading mode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p3}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " initiated object per waterfall mode"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    .line 97
    new-instance p2, Lcom/ironsource/l5;

    invoke-direct {p2}, Lcom/ironsource/l5;-><init>()V

    .line 99
    invoke-direct {p0, p3}, Lcom/ironsource/o3;->a(Lcom/ironsource/V;)Lcom/ironsource/Z9;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/o3;->K:Lcom/ironsource/Z9;

    .line 102
    iput-object p5, p0, Lcom/ironsource/o3;->w:Lcom/ironsource/ia;

    .line 104
    iput-object p3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 105
    new-instance p5, Lcom/ironsource/E0;

    .line 107
    invoke-virtual {p3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {p5, v0, v1, p0}, Lcom/ironsource/E0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Lcom/ironsource/D0;)V

    iput-object p5, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    .line 108
    invoke-virtual {p0}, Lcom/ironsource/o3;->d()Lcom/ironsource/K0;

    move-result-object p5

    iput-object p5, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    .line 109
    invoke-virtual {p0}, Lcom/ironsource/o3;->e()Lcom/ironsource/O0;

    move-result-object p5

    iput-object p5, p0, Lcom/ironsource/o3;->r:Lcom/ironsource/O0;

    .line 111
    sget-object p5, Lcom/ironsource/o3$f;->a:Lcom/ironsource/o3$f;

    invoke-virtual {p0, p5}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 113
    iput-object p4, p0, Lcom/ironsource/o3;->C:Lcom/ironsource/ta;

    .line 114
    new-instance p4, Lcom/ironsource/Ng;

    iget-object p5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 116
    invoke-virtual {p5}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ironsource/A2;->f()Ljava/util/ArrayList;

    move-result-object p5

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 117
    invoke-virtual {v0}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/A2;->i()I

    move-result v0

    invoke-direct {p4, p5, v0, p0}, Lcom/ironsource/Ng;-><init>(Ljava/util/List;ILcom/ironsource/Og;)V

    iput-object p4, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    .line 120
    iget-object p4, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p4, p4, Lcom/ironsource/E0;->e:Lcom/ironsource/e9;

    .line 121
    invoke-virtual {p0}, Lcom/ironsource/o3;->l()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p4, p5, v0}, Lcom/ironsource/e9;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p4, 0x0

    .line 127
    iput-object p4, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    .line 130
    invoke-virtual {p0}, Lcom/ironsource/o3;->D()V

    .line 133
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    iput-object p4, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 135
    iget-object p4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p4}, Lcom/ironsource/V;->q()Z

    move-result p4

    if-eqz p4, :cond_118

    .line 136
    new-instance p4, Lcom/ironsource/mediationsdk/f;

    iget-object p5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 137
    invoke-virtual {p5}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object p5

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p5, v0}, Lcom/ironsource/mediationsdk/f;-><init>(Lcom/ironsource/A2;Ljava/lang/String;)V

    .line 138
    new-instance p5, Lcom/ironsource/mediationsdk/e;

    invoke-direct {p5, p4}, Lcom/ironsource/mediationsdk/e;-><init>(Lcom/ironsource/mediationsdk/f;)V

    iput-object p5, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    .line 142
    :cond_118
    new-instance p4, Lcom/ironsource/j2;

    iget-object p5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 144
    invoke-virtual {p5}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object p5

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 145
    invoke-virtual {v0}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/A2;->c()I

    move-result v0

    invoke-direct {p4, p5, v0}, Lcom/ironsource/j2;-><init>(Ljava/util/List;I)V

    iput-object p4, p0, Lcom/ironsource/o3;->e:Lcom/ironsource/j2;

    .line 148
    invoke-direct {p0}, Lcom/ironsource/o3;->p()V

    .line 151
    invoke-direct {p0}, Lcom/ironsource/o3;->o()V

    .line 154
    new-instance p4, Lcom/ironsource/l5;

    invoke-direct {p4}, Lcom/ironsource/l5;-><init>()V

    iput-object p4, p0, Lcom/ironsource/o3;->n:Lcom/ironsource/l5;

    .line 157
    sget-object p4, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    invoke-virtual {p0, p4}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 160
    new-instance p4, Lcom/ironsource/S5;

    invoke-virtual {p3}, Lcom/ironsource/V;->a()I

    move-result p3

    invoke-direct {p4, p3, p0}, Lcom/ironsource/S5;-><init>(ILcom/ironsource/o;)V

    iput-object p4, p0, Lcom/ironsource/o3;->s:Lcom/ironsource/S5;

    .line 165
    new-instance p3, Lcom/ironsource/r;

    invoke-direct {p3}, Lcom/ironsource/r;-><init>()V

    iput-object p3, p0, Lcom/ironsource/o3;->v:Lcom/ironsource/r;

    .line 168
    iget-object p3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p3, p3, Lcom/ironsource/E0;->e:Lcom/ironsource/e9;

    invoke-static {p2}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/ironsource/e9;->a(J)V

    .line 171
    iget-object p2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p2}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/M0;->e()Z

    move-result p2

    if-eqz p2, :cond_172

    .line 172
    const-string p2, "first automatic load"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/ironsource/o3;->x()V

    :cond_172
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/V;Lcom/ironsource/ta;Lcom/ironsource/ia;)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->b0()Lcom/ironsource/L7;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/o3;-><init>(Lcom/ironsource/M7;Lcom/ironsource/L7;Lcom/ironsource/V;Lcom/ironsource/ta;Lcom/ironsource/ia;)V

    return-void
.end method

.method private A()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/ironsource/o3$d;

    invoke-direct {v0, p0}, Lcom/ironsource/o3$d;-><init>(Lcom/ironsource/o3;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private B()Lcom/ironsource/Ug;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/Ug<",
            "TSmash;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0}, Lcom/ironsource/Ng;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ironsource/Tg;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-direct {v1, v2}, Lcom/ironsource/Tg;-><init>(Lcom/ironsource/V;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/Tg;->d(Ljava/util/List;)Lcom/ironsource/Ug;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->v:Lcom/ironsource/r;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    return-void
.end method

.method private H()V
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->c:Lcom/ironsource/o3$f;

    if-ne v1, v2, :cond_16

    .line 5
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    goto :goto_49

    .line 9
    :cond_16
    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 10
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_14

    .line 12
    iget-object v0, p0, Lcom/ironsource/o3;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/o3;->n:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 19
    invoke-virtual {v2}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/A2;->k()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_45

    .line 24
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/o3$c;

    invoke-direct {v1, p0}, Lcom/ironsource/o3$c;-><init>(Lcom/ironsource/o3;)V

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 35
    :cond_45
    invoke-direct {p0}, Lcom/ironsource/o3;->A()V

    return-void

    .line 36
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_14

    throw v1
.end method

.method private I()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ironsource/o3;->g()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/o3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/o3;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/ironsource/V;)Lcom/ironsource/Z9;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/ironsource/y2;Ljava/lang/String;)Lcom/ironsource/p3;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/y2;",
            "Ljava/lang/String;",
            ")TSmash;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p1}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/V;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_63

    .line 132
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 133
    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    .line 135
    invoke-virtual {p0, v3}, Lcom/ironsource/o3;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 140
    iget-object v0, p0, Lcom/ironsource/o3;->D:Lcom/ironsource/Q8;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v5

    move-object v2, p0

    move-object v7, p1

    move-object v6, p2

    .line 141
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/y2;)Lcom/ironsource/p3;

    move-result-object p1

    .line 142
    iget-object p2, v2, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    invoke-virtual {v7}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/j2$a;->a:Lcom/ironsource/j2$a;

    .line 144
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_43
    move-object v2, p0

    .line 148
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSmashToWaterfall - could not load ad adapter for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v0

    :cond_63
    move-object v2, p0

    move-object v7, p1

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not find matching provider settings for auction response item - item = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 165
    iget-object p2, v2, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p2, p2, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfall.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    .line 95
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 98
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/y2;

    .line 101
    invoke-direct {p0, v3, p2}, Lcom/ironsource/o3;->a(Lcom/ironsource/y2;Ljava/lang/String;)Lcom/ironsource/p3;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 103
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v4}, Lcom/ironsource/p3;->l()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/ironsource/o3;->a(Lcom/ironsource/y2;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_4e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_5b

    .line 111
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 116
    :cond_5e
    iget-object p1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 117
    invoke-virtual {v2}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v2

    .line 118
    invoke-virtual {p1, v2, v1, p2}, Lcom/ironsource/Ng;->a(Lcom/ironsource/M0$a;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/ironsource/o3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateWaterfall() - next waterfall is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auction waterfallString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4b

    .line 275
    const-string p1, "auction failed - no candidates"

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    const/16 p2, 0x3ed

    const-string p3, "No candidates available for auctioning"

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/b2;->a(ILjava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 282
    invoke-virtual {p1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/A0;->e(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    .line 283
    const-string p2, "no available ad to load"

    invoke-virtual {p0, p1, p2, v2}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    return-void

    .line 290
    :cond_4b
    iget-object v1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    invoke-virtual {v1, p3}, Lcom/ironsource/b2;->b(Ljava/lang/String;)V

    .line 293
    iget-object p3, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    if-eqz p3, :cond_a6

    .line 294
    iget-object p3, p0, Lcom/ironsource/o3;->D:Lcom/ironsource/Q8;

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p3

    .line 296
    new-instance v0, Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 297
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/h;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 298
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->b(Z)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/Map;)V

    .line 300
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/List;)V

    .line 301
    iget-object p1, p0, Lcom/ironsource/o3;->e:Lcom/ironsource/j2;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/j2;)V

    .line 302
    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/h;->a(I)V

    .line 303
    iget-object p1, p0, Lcom/ironsource/o3;->w:Lcom/ironsource/ia;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/ia;)V

    .line 304
    iget-boolean p1, p0, Lcom/ironsource/o3;->H:Z

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->d(Z)V

    .line 305
    iget-object p1, p0, Lcom/ironsource/o3;->I:Lcom/ironsource/Tf;

    if-eqz p1, :cond_97

    .line 306
    invoke-virtual {p1}, Lcom/ironsource/Tf;->c()Z

    move-result p1

    if-eqz p1, :cond_97

    const/4 v2, 0x1

    .line 307
    :cond_97
    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/h;->e(Z)V

    .line 310
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p1, v0, p0}, Lcom/ironsource/o3;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V

    return-void

    .line 316
    :cond_a6
    const-string p1, "mAuctionHandler is null"

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/o3;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_e
    new-instance v0, Lcom/ironsource/z3;

    invoke-direct {v0}, Lcom/ironsource/z3;-><init>()V

    .line 207
    new-instance v2, Lcom/ironsource/o3$e;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/ironsource/o3$e;-><init>(Lcom/ironsource/o3;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 265
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {p1}, Lcom/ironsource/lg;->a()V

    .line 266
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 269
    invoke-virtual {p1}, Lcom/ironsource/V;->e()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p4

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/z3;->a(Ljava/util/List;Lcom/ironsource/z3$b;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 617
    const-string v1, "isAdUnitCapped"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 620
    :cond_9
    iget-object v1, p0, Lcom/ironsource/o3;->v:Lcom/ironsource/r;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    .line 621
    invoke-direct {p0, p1}, Lcom/ironsource/o3;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    :try_start_5
    const-string v1, "provider"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "providerAdapterVersion"

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "providerSDKVersion"

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string p2, "spId"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string p2, "instanceType"

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string p2, "programmatic"

    invoke-direct {p0}, Lcom/ironsource/o3;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception p2

    .line 186
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 187
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProviderEventData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {v1, v2, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private b(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/ironsource/o3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p1}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 12
    iget-object v0, p0, Lcom/ironsource/o3;->I:Lcom/ironsource/Tf;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v7, v1}, Lcom/ironsource/Tf;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17
    :cond_2c
    new-instance v0, Lcom/ironsource/Ze;

    .line 19
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Ze;-><init>(Ljava/lang/String;I)V

    .line 21
    iget-object v1, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    invoke-virtual {v1, v0}, Lcom/ironsource/af;->b(Lcom/ironsource/P8$b;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 22
    invoke-direct {p0, v7}, Lcom/ironsource/o3;->e(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v0

    if-eqz v0, :cond_ed

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v7, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v4

    .line 26
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 28
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 30
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v7, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v7, v0}, Lcom/ironsource/o3;->c(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Lcom/ironsource/y3;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 38
    new-instance v1, Lcom/ironsource/w3;

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 40
    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    .line 41
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/w3;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/y3;Lcom/ironsource/x3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 46
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_8e
    move-object v6, p0

    if-nez v0, :cond_a7

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAuctionCandidates - could not load network adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c1

    .line 54
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not implementing BiddingDataInterface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_c1
    iget-object v1, v6, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_ca
    move-object v6, p0

    .line 60
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, v6, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 62
    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :cond_ed
    move-object v6, p0

    goto/16 :goto_f

    :cond_f0
    move-object v6, p0

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "bidderExclusive"

    const-string v1, "parallelLoad"

    const/4 v2, 0x0

    if-nez p1, :cond_2d

    .line 112
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p1, v2}, Lcom/ironsource/V;->b(Z)V

    .line 113
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading configuration from auction response is null, using the following: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 117
    invoke-virtual {v1}, Lcom/ironsource/V;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2d
    :try_start_2d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 129
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_43

    .line 131
    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v3, v1}, Lcom/ironsource/V;->a(I)V

    goto :goto_43

    :catchall_3f
    move-exception p1

    goto :goto_aa

    :catch_41
    move-exception p1

    goto :goto_6d

    .line 135
    :cond_43
    :goto_43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 136
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1, v0}, Lcom/ironsource/V;->a(Z)V

    .line 140
    :cond_52
    const-string v0, "showPriorityEnabled"

    .line 141
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0, p1}, Lcom/ironsource/V;->b(Z)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_5d} :catch_41
    .catchall {:try_start_2d .. :try_end_5d} :catchall_3f

    .line 154
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 155
    :goto_6d
    :try_start_6d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 156
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to update loading configuration for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 158
    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_6d .. :try_end_9c} :catchall_3f

    .line 167
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p1}, Lcom/ironsource/V;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :goto_aa
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 168
    throw p1
.end method

.method private b(Lcom/ironsource/B0;)Z
    .registers 15

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ironsource/B0;->a:Lcom/ironsource/B0;

    sget-object v2, Lcom/ironsource/B0;->e:Lcom/ironsource/B0;

    sget-object v3, Lcom/ironsource/B0;->L:Lcom/ironsource/B0;

    sget-object v4, Lcom/ironsource/B0;->P:Lcom/ironsource/B0;

    sget-object v5, Lcom/ironsource/B0;->N:Lcom/ironsource/B0;

    sget-object v6, Lcom/ironsource/B0;->E:Lcom/ironsource/B0;

    sget-object v7, Lcom/ironsource/B0;->F:Lcom/ironsource/B0;

    sget-object v8, Lcom/ironsource/B0;->G:Lcom/ironsource/B0;

    sget-object v9, Lcom/ironsource/B0;->H:Lcom/ironsource/B0;

    sget-object v10, Lcom/ironsource/B0;->I:Lcom/ironsource/B0;

    sget-object v11, Lcom/ironsource/B0;->J:Lcom/ironsource/B0;

    sget-object v12, Lcom/ironsource/B0;->K:Lcom/ironsource/B0;

    filled-new-array/range {v1 .. v12}, [Lcom/ironsource/B0;

    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private c(Lcom/ironsource/B0;)Z
    .registers 17

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ironsource/B0;->g:Lcom/ironsource/B0;

    sget-object v2, Lcom/ironsource/B0;->i:Lcom/ironsource/B0;

    sget-object v3, Lcom/ironsource/B0;->j:Lcom/ironsource/B0;

    sget-object v4, Lcom/ironsource/B0;->O:Lcom/ironsource/B0;

    sget-object v5, Lcom/ironsource/B0;->M:Lcom/ironsource/B0;

    sget-object v6, Lcom/ironsource/B0;->N:Lcom/ironsource/B0;

    sget-object v7, Lcom/ironsource/B0;->U:Lcom/ironsource/B0;

    sget-object v8, Lcom/ironsource/B0;->u:Lcom/ironsource/B0;

    sget-object v9, Lcom/ironsource/B0;->n:Lcom/ironsource/B0;

    sget-object v10, Lcom/ironsource/B0;->p:Lcom/ironsource/B0;

    sget-object v11, Lcom/ironsource/B0;->v:Lcom/ironsource/B0;

    sget-object v12, Lcom/ironsource/B0;->k:Lcom/ironsource/B0;

    sget-object v13, Lcom/ironsource/B0;->h:Lcom/ironsource/B0;

    sget-object v14, Lcom/ironsource/B0;->y:Lcom/ironsource/B0;

    filled-new-array/range {v1 .. v14}, [Lcom/ironsource/B0;

    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, p1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->A:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/ironsource/o3;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    :cond_15
    if-nez p1, :cond_21

    .line 10
    iget-object p1, p0, Lcom/ironsource/o3;->A:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    :goto_1f
    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method private d(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 6
    const-string v2, "Start initializing provider %s on thread %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 23
    :try_start_3d
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_4a

    goto :goto_76

    :catch_4a
    move-exception v0

    .line 25
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 26
    iget-object v1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initProvider - exception while calling networkAdapter.init with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 37
    :cond_76
    :goto_76
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 41
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 42
    const-string v1, "Done initializing provider %s on thread %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 46
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, p2, v1, v2}, Lcom/ironsource/Ng;->a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_14
    iget-object p2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->shouldEarlyInit(Z)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z
    .registers 12

    .line 2
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v8

    .line 5
    instance-of v0, v8, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    if-eqz v0, :cond_39

    .line 6
    iget-object v3, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p0, p1, v8}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object v7

    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v9

    .line 13
    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/Ng;->a(Lcom/ironsource/M0$a;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result p1

    return p1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method private g()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 5
    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 6
    invoke-direct {p0, v2}, Lcom/ironsource/o3;->e(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_f

    .line 11
    :cond_2e
    new-instance v3, Lcom/ironsource/Ze;

    .line 13
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 14
    invoke-virtual {v5}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/ironsource/Ze;-><init>(Ljava/lang/String;I)V

    .line 17
    iget-object v2, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    invoke-virtual {v2, v3}, Lcom/ironsource/af;->b(Lcom/ironsource/P8$b;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_f

    .line 22
    :cond_4a
    new-instance v2, Lcom/ironsource/y2;

    invoke-virtual {v3}, Lcom/ironsource/Ze;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/y2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_57
    return-object v0
.end method

.method private m()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private o()V
    .registers 7

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 8
    invoke-virtual {v4}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v3

    .line 9
    invoke-direct {p0, v2, v3}, Lcom/ironsource/o3;->d(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_18

    .line 12
    :cond_3d
    new-instance v3, Lcom/ironsource/o3$b;

    invoke-direct {v3, p0, v2}, Lcom/ironsource/o3$b;-><init>(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 21
    :cond_46
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 22
    invoke-virtual {v2}, Lcom/ironsource/V;->k()Z

    move-result v2

    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 23
    invoke-virtual {v3}, Lcom/ironsource/V;->p()Z

    move-result v3

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->executeTasks(ZZLjava/util/List;)V

    return-void
.end method

.method private p()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 3
    new-instance v3, Lcom/ironsource/Ze;

    .line 5
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 6
    invoke-virtual {v5}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/ironsource/Ze;-><init>(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 14
    :cond_32
    new-instance v1, Lcom/ironsource/af;

    invoke-direct {v1}, Lcom/ironsource/af;-><init>()V

    iput-object v1, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    .line 15
    invoke-virtual {v1, v0}, Lcom/ironsource/af;->a(Ljava/util/List;)V

    return-void
.end method

.method private y()V
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_c
    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/M0;->e()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    .line 7
    invoke-virtual {v2}, Lcom/ironsource/af;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 8
    const-string v2, "all smashes are capped"

    .line 9
    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 11
    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/A0;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v0, v2, v3}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    .line 16
    monitor-exit v1

    return-void

    :catchall_39
    move-exception v0

    goto/16 :goto_112

    .line 20
    :cond_3c
    invoke-virtual {p0}, Lcom/ironsource/o3;->q()Z

    move-result v2

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v3, Lcom/ironsource/o3$f;->f:Lcom/ironsource/o3$f;

    if-ne v2, v3, :cond_67

    .line 21
    const-string v0, "load cannot be invoked while showing an ad"

    .line 22
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 23
    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 25
    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/A0;->d(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 27
    monitor-exit v1

    return-void

    .line 30
    :cond_67
    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v2

    sget-object v3, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    if-eq v2, v3, :cond_aa

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 32
    invoke-virtual {v2}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v2

    sget-object v3, Lcom/ironsource/M0$a;->c:Lcom/ironsource/M0$a;

    if-eq v2, v3, :cond_aa

    .line 36
    iget-object v2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v3, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    if-eq v2, v3, :cond_8d

    sget-object v3, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    if-ne v2, v3, :cond_9d

    .line 37
    :cond_8d
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 38
    :cond_9d
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "load is already in progress"

    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 39
    monitor-exit v1

    return-void

    .line 43
    :cond_aa
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 46
    invoke-direct {p0}, Lcom/ironsource/o3;->C()V

    .line 49
    invoke-virtual {p0}, Lcom/ironsource/o3;->s()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 50
    iget-object v2, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v2}, Lcom/ironsource/Cb;->d()V

    goto :goto_cd

    .line 52
    :cond_c2
    iget-object v2, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p0}, Lcom/ironsource/o3;->n()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/Cb;->a(Z)V

    .line 55
    :goto_cd
    new-instance v2, Lcom/ironsource/l5;

    invoke-direct {v2}, Lcom/ironsource/l5;-><init>()V

    iput-object v2, p0, Lcom/ironsource/o3;->o:Lcom/ironsource/l5;

    .line 57
    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->q()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 58
    iget-object v2, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f0

    .line 61
    iget-object v2, p0, Lcom/ironsource/o3;->e:Lcom/ironsource/j2;

    iget-object v3, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Lcom/ironsource/j2;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 62
    iget-object v2, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    :cond_f0
    invoke-direct {p0}, Lcom/ironsource/o3;->H()V

    goto :goto_f9

    .line 67
    :cond_f4
    sget-object v2, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 69
    :goto_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_c .. :try_end_fa} :catchall_39

    .line 73
    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->q()Z

    move-result v1

    if-nez v1, :cond_111

    .line 74
    const-string v1, "auction disabled"

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/ironsource/o3;->I()V

    .line 76
    invoke-direct {p0}, Lcom/ironsource/o3;->z()V

    :cond_111
    return-void

    .line 77
    :goto_112
    :try_start_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_39

    throw v0
.end method

.method private z()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/o3;->B()Lcom/ironsource/Ug;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Ug;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 6
    const-string v1, "Mediation No fill"

    const/4 v2, 0x0

    const/16 v3, 0x1fd

    invoke-virtual {p0, v3, v1, v2}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    .line 9
    :cond_12
    invoke-virtual {v0}, Lcom/ironsource/Ug;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/p3;

    .line 10
    invoke-virtual {v1}, Lcom/ironsource/p3;->E()V

    goto :goto_1a

    :cond_2a
    return-void
.end method


# virtual methods
.method public D()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->f()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/l;->a(Lcom/ironsource/mediationsdk/IronSource$a;I)V

    return-void
.end method

.method public E()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public F()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public G()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 2
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 3
    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    goto :goto_a

    :cond_28
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 3

    .line 86
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object p1
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/mediationsdk/c;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .registers 4

    .line 199
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->c(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    .line 200
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->createAdDataForNetworkAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/y2;)Lcom/ironsource/p3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ")TSmash;"
        }
    .end annotation
.end method

.method public a(Lcom/ironsource/y2;I)Ljava/lang/String;
    .registers 3

    .line 622
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ironsource/B0;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/B0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 590
    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 593
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 597
    iget-object v1, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    const-string v2, "genericParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_27
    iget-object v1, p0, Lcom/ironsource/o3;->D:Lcom/ironsource/Q8;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v1

    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sessionDepth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-direct {p0, p1}, Lcom/ironsource/o3;->c(Lcom/ironsource/B0;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 606
    iget v1, p0, Lcom/ironsource/o3;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auctionTrials"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v1, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 609
    iget-object v1, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    const-string v2, "auctionFallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_5c
    invoke-direct {p0, p1}, Lcom/ironsource/o3;->b(Lcom/ironsource/B0;)Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    .line 614
    invoke-virtual {p1}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 615
    iget-object p1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {p1}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "auctionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 72
    sget-object v0, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/ironsource/o3;->x()V

    :cond_18
    return-void
.end method

.method public a(I)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfalls hold too many with size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->v(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 11

    .line 373
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/ironsource/o3;->v()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auction failed (error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/o3;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    .line 380
    iput p3, p0, Lcom/ironsource/o3;->f:I

    .line 381
    iput-object p4, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    .line 382
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    iput-object p3, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 385
    iget-object p3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p3}, Lcom/ironsource/V;->d()Lcom/ironsource/A2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/A2;->n()Z

    move-result p3

    if-eqz p3, :cond_72

    .line 386
    const-string p3, "Moving to fallback waterfall"

    invoke-virtual {p0, p3}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/ironsource/o3;->I()V

    .line 391
    :cond_72
    iget-object p3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p3, p3, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    invoke-virtual {p3, p5, p6, p1, p2}, Lcom/ironsource/b2;->a(JILjava/lang/String;)V

    .line 394
    sget-object p1, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 395
    invoke-direct {p0}, Lcom/ironsource/o3;->z()V

    return-void

    .line 397
    :cond_82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected auction fail - error = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 405
    iget-object p2, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p2, p2, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->j(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 10

    .line 166
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 168
    sget-object v1, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->f()Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p3, :cond_4c

    .line 181
    iget-object p3, p0, Lcom/ironsource/o3;->o:Lcom/ironsource/l5;

    invoke-static {p3}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v1

    .line 182
    iget-object p3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, p3, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    .line 183
    invoke-virtual {p0}, Lcom/ironsource/o3;->n()Z

    move-result v5

    move v3, p1

    move-object v4, p2

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/Cb;->a(JILjava/lang/String;Z)V

    goto :goto_4e

    :cond_4c
    move v3, p1

    move-object v4, p2

    .line 187
    :goto_4e
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_66

    :cond_57
    move v3, p1

    move-object v4, p2

    if-nez p3, :cond_62

    .line 190
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p1, v3, v4}, Lcom/ironsource/pg;->b(ILjava/lang/String;)V

    :cond_62
    const/4 p1, 0x0

    .line 192
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Z)V

    .line 196
    :goto_66
    iget-object p1, p0, Lcom/ironsource/o3;->r:Lcom/ironsource/O0;

    invoke-virtual {p1}, Lcom/ironsource/O0;->e()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    if-eqz v0, :cond_8

    .line 318
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V

    return-void

    .line 320
    :cond_8
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "mAuctionHandler is null"

    invoke-virtual {p0, p2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    :try_start_1a
    iput-boolean p2, p0, Lcom/ironsource/o3;->k:Z

    if-eqz p2, :cond_3d

    .line 6
    iget-object p2, p0, Lcom/ironsource/o3;->l:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_2c

    .line 7
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/Jc;)V

    iput-object p2, p0, Lcom/ironsource/o3;->l:Lcom/ironsource/environment/NetworkStateReceiver;

    goto :goto_2c

    :catch_2a
    move-exception p1

    goto :goto_4b

    .line 11
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/o3;->l:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 16
    :cond_3d
    iget-object p2, p0, Lcom/ironsource/o3;->l:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_6c

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/o3;->l:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4a} :catch_2a

    return-void

    .line 21
    :goto_4b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 22
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error from receiver with message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method public a(Lcom/ironsource/K0;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    return-void
.end method

.method public a(Lcom/ironsource/Tf;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/ironsource/o3;->I:Lcom/ironsource/Tf;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p0, Lcom/ironsource/o3;->H:Z

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    .line 627
    iput-boolean p1, p0, Lcom/ironsource/o3;->H:Z

    :goto_b
    const/4 p1, 0x0

    .line 630
    iput-object p1, p0, Lcom/ironsource/o3;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lcom/ironsource/ia;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/ironsource/o3;->w:Lcom/ironsource/ia;

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    .line 198
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p3;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-virtual {p2}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Lcom/ironsource/p3;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v2}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->c:Lcom/ironsource/o3$f;

    if-ne p1, v2, :cond_3c

    goto/16 :goto_be

    .line 431
    :cond_3c
    iget-object p1, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 432
    invoke-virtual {p2}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/j2$a;->b:Lcom/ironsource/j2$a;

    .line 433
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0}, Lcom/ironsource/o3;->w()Z

    move-result p1

    if-nez p1, :cond_59

    invoke-virtual {p0}, Lcom/ironsource/o3;->u()Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_59

    :cond_54
    const/4 p1, 0x0

    goto :goto_6d

    :catchall_56
    move-exception p1

    goto/16 :goto_11a

    .line 439
    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/ironsource/o3;->B()Lcom/ironsource/Ug;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Lcom/ironsource/Ug;->c()Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 441
    const-string p1, "Mediation No fill"

    const/4 p2, 0x0

    const/16 v1, 0x1fd

    invoke-virtual {p0, v1, p1, p2}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    .line 442
    monitor-exit v0

    return-void

    .line 445
    :cond_6d
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_56

    if-nez p1, :cond_71

    goto :goto_bd

    .line 451
    :cond_71
    iget-object p2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p2}, Lcom/ironsource/V;->m()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 452
    iget-object p2, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter p2

    .line 454
    :try_start_7c
    invoke-virtual {p1}, Lcom/ironsource/Ug;->b()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Lcom/ironsource/o3;->t()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 455
    new-instance v0, Lcom/ironsource/Tg;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-direct {v0, v1}, Lcom/ironsource/Tg;-><init>(Lcom/ironsource/V;)V

    iget-object v1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    .line 457
    invoke-virtual {v1}, Lcom/ironsource/Ng;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/Tg;->c(Ljava/util/List;)Lcom/ironsource/p3;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 459
    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->i(Lcom/ironsource/p3;)V

    goto :goto_a1

    :catchall_9f
    move-exception p1

    goto :goto_a3

    .line 462
    :cond_a1
    :goto_a1
    monitor-exit p2

    goto :goto_a5

    :goto_a3
    monitor-exit p2
    :try_end_a4
    .catchall {:try_start_7c .. :try_end_a4} :catchall_9f

    throw p1

    .line 467
    :cond_a5
    :goto_a5
    invoke-virtual {p1}, Lcom/ironsource/Ug;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/p3;

    .line 468
    invoke-virtual {p2}, Lcom/ironsource/p3;->E()V

    goto :goto_ad

    :cond_bd
    :goto_bd
    return-void

    .line 469
    :cond_be
    :goto_be
    :try_start_be
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed was invoked from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p2}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with state ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " auctionId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p2}, Lcom/ironsource/p3;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    .line 478
    invoke-virtual {p2}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadFailed was invoked with state ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/pg;->o(Ljava/lang/String;)V

    .line 492
    monitor-exit v0

    return-void

    .line 508
    :goto_11a
    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_be .. :try_end_11b} :catchall_56

    throw p1
.end method

.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 5

    .line 631
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 632
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 635
    invoke-direct {p0, p1, v0}, Lcom/ironsource/o3;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    .line 636
    iget-object v0, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->b(Ljava/util/Map;)V

    :cond_1f
    return-void
.end method

.method public a(Lcom/ironsource/o3$f;)V
    .registers 6

    .line 23
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set current state to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    .line 26
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public a(Lcom/ironsource/p3;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/N;->g(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v1, p1}, Lcom/ironsource/Ng;->a(Lcom/ironsource/p3;)V

    .line 516
    iget-object v1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v1, p1}, Lcom/ironsource/Ng;->b(Lcom/ironsource/p3;)V

    .line 519
    iget-object v1, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    invoke-virtual {v1, p1}, Lcom/ironsource/af;->a(Lcom/ironsource/P8$b;)V

    .line 520
    iget-object v1, p0, Lcom/ironsource/o3;->m:Lcom/ironsource/af;

    invoke-virtual {v1, p1}, Lcom/ironsource/af;->b(Lcom/ironsource/P8$b;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was session capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Lcom/ironsource/p3;->N()V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    .line 528
    :cond_64
    iget-object v1, p0, Lcom/ironsource/o3;->G:Lcom/ironsource/Q7$a;

    .line 529
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 530
    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 531
    invoke-virtual {v4}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    .line 532
    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/Q7$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 536
    iget-object v1, p0, Lcom/ironsource/o3;->F:Lcom/ironsource/Q7;

    .line 537
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    iget-object v4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 539
    invoke-virtual {v4}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    .line 540
    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/Q7;->c(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_c0
    iget-object v0, p0, Lcom/ironsource/o3;->E:Lcom/ironsource/Q8$a;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/Q8$a;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 555
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->q()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 556
    invoke-virtual {p1}, Lcom/ironsource/p3;->i()Lcom/ironsource/y2;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    .line 559
    invoke-virtual {p1}, Lcom/ironsource/p3;->l()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/o3;->i:Lcom/ironsource/y2;

    .line 561
    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/y2;ILcom/ironsource/y2;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 568
    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/j2$a;->e:Lcom/ironsource/j2$a;

    .line 569
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p0}, Lcom/ironsource/o3;->E()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 575
    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/o3;->b(Lcom/ironsource/y2;Ljava/lang/String;)V

    .line 580
    :cond_fe
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->g(Lcom/ironsource/p3;)V

    .line 582
    iget-object p1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p1}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/M0;->e()Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x0

    .line 583
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Z)V

    .line 587
    :cond_111
    iget-object p1, p0, Lcom/ironsource/o3;->r:Lcom/ironsource/O0;

    invoke-virtual {p1}, Lcom/ironsource/O0;->h()V

    return-void
.end method

.method public a(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
            ")V"
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    invoke-virtual {p1, p2}, Lcom/ironsource/K0;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/ironsource/o3;->K:Lcom/ironsource/Z9;

    if-eqz v0, :cond_7

    .line 639
    invoke-virtual {v0, p1}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/ironsource/o3;->v()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    .line 328
    iput p6, p0, Lcom/ironsource/o3;->f:I

    .line 329
    iput-object p3, p0, Lcom/ironsource/o3;->i:Lcom/ironsource/y2;

    .line 330
    iput-object p4, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 333
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 334
    iget-object p3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p3, p3, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p3, p9, p10}, Lcom/ironsource/pg;->a(ILjava/lang/String;)V

    .line 339
    :cond_26
    invoke-direct {p0, p5}, Lcom/ironsource/o3;->a(Lorg/json/JSONObject;)V

    .line 342
    iget-object p3, p0, Lcom/ironsource/o3;->v:Lcom/ironsource/r;

    iget-object p4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {p4}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result p3

    if-eqz p3, :cond_47

    .line 344
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    invoke-virtual {p1, p2}, Lcom/ironsource/b2;->a(Ljava/lang/String;)V

    .line 347
    const-string p1, "Ad unit is capped"

    const/4 p2, 0x1

    const/16 p3, 0x20d

    invoke-virtual {p0, p3, p1, p2}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    return-void

    .line 350
    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/ironsource/o3;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 353
    iget-object p3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p3, p3, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 354
    invoke-virtual {p5}, Lcom/ironsource/V;->r()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ";wtf="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {p3, p7, p8, p1}, Lcom/ironsource/b2;->a(JLjava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    invoke-virtual {p1, p2}, Lcom/ironsource/b2;->c(Ljava/lang/String;)V

    .line 362
    sget-object p1, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V

    .line 363
    invoke-direct {p0}, Lcom/ironsource/o3;->z()V

    return-void

    .line 367
    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected auction success for auctionId - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected auction success, state = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/pg;->k(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 79
    iget-boolean v0, p0, Lcom/ironsource/o3;->k:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_32

    .line 82
    :cond_11
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network availability changed to - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/ironsource/o3;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/o3;->a(ZZLcom/ironsource/p3;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public a(ZZLcom/ironsource/p3;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->A:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_52

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_54

    .line 46
    :cond_10
    :goto_10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/o3;->A:Ljava/lang/Boolean;

    .line 50
    iget-wide v1, p0, Lcom/ironsource/o3;->z:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    goto :goto_2c

    .line 52
    :cond_1f
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/o3;->z:J

    sub-long v3, v1, v3

    .line 55
    :goto_2c
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/o3;->z:J

    .line 58
    iget-object v1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/ironsource/Cb;->a(ZJZ)V

    if-eqz p3, :cond_45

    .line 62
    invoke-virtual {p3}, Lcom/ironsource/p3;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p2

    goto :goto_47

    :cond_45
    iget-object p2, p0, Lcom/ironsource/o3;->B:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    :goto_47
    iput-object p2, p0, Lcom/ironsource/o3;->B:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    .line 65
    iget-object p3, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 p2, 0x0

    :goto_4f
    invoke-virtual {p3, p1, p2}, Lcom/ironsource/K0;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 68
    :cond_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_e

    throw p1
.end method

.method public a(Lcom/ironsource/o3$f;Lcom/ironsource/o3$f;)Z
    .registers 7

    .line 27
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    if-ne v1, p1, :cond_2b

    .line 29
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", state to set = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    const/4 p1, 0x1

    goto :goto_4c

    :catchall_29
    move-exception p1

    goto :goto_4e

    .line 34
    :cond_2b
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state, current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    :goto_4c
    monitor-exit v0

    return p1

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_29

    throw p1
.end method

.method public b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*T",
            "Listener;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/ironsource/o3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-eqz v0, :cond_f

    return-object v0

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v0

    .line 175
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 3

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/o3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/o3;->x()V

    return-void
.end method

.method public b(Lcom/ironsource/y2;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_51

    .line 88
    invoke-virtual {p1, p2}, Lcom/ironsource/y2;->a(Ljava/lang/String;)Lcom/ironsource/c9;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 90
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/ironsource/o3;->C:Lcom/ironsource/ta;

    .line 91
    invoke-virtual {v0}, Lcom/ironsource/ta;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    .line 93
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImpressionSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p0, v2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;->onImpressionSuccess(Lcom/ironsource/c9;)V

    goto :goto_17

    .line 109
    :cond_51
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "reportImpressionDataToPublisher - no auctionResponseItem or listener"

    invoke-virtual {p0, p2}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    if-eqz p1, :cond_65

    .line 111
    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p1, p2}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method public b(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/o3;->a(ZZLcom/ironsource/p3;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Lcom/ironsource/y3;
    .registers 4

    .line 11
    instance-of v0, p2, Lcom/ironsource/y3;

    if-eqz v0, :cond_7

    .line 12
    check-cast p2, Lcom/ironsource/y3;

    return-object p2

    .line 15
    :cond_7
    iget-object p2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 16
    invoke-virtual {p2}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/o3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p2

    .line 18
    instance-of v0, p2, Lcom/ironsource/y3;

    if-eqz v0, :cond_21

    .line 19
    iget-object v0, p0, Lcom/ironsource/o3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    check-cast p2, Lcom/ironsource/y3;

    return-object p2

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract c(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
.end method

.method public c()Z
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/ironsource/o3;->K:Lcom/ironsource/Z9;

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_b

    goto :goto_12

    .line 41
    :cond_b
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->l()Z

    move-result v0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()Lcom/ironsource/K0;
.end method

.method public d(Lcom/ironsource/p3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/ironsource/p3;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v2}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " auctionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Lcom/ironsource/p3;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and the current id is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    .line 66
    invoke-virtual {p1}, Lcom/ironsource/Ng;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadSuccess invoked with state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/pg;->p(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_78
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->m()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 84
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0}, Lcom/ironsource/Ng;->b()Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/ironsource/Tg;

    iget-object v2, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-direct {v1, v2}, Lcom/ironsource/Tg;-><init>(Lcom/ironsource/V;)V

    .line 86
    invoke-virtual {v1, p1, v0}, Lcom/ironsource/Tg;->a(Lcom/ironsource/p3;Ljava/util/List;)Z

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_a2

    .line 90
    :try_start_96
    invoke-virtual {p0}, Lcom/ironsource/o3;->t()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 91
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->i(Lcom/ironsource/p3;)V

    goto :goto_af

    :catchall_a0
    move-exception p1

    goto :goto_b1

    .line 92
    :cond_a2
    invoke-virtual {v1, v0}, Lcom/ironsource/Tg;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 93
    invoke-virtual {v1, v0}, Lcom/ironsource/Tg;->c(Ljava/util/List;)Lcom/ironsource/p3;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->i(Lcom/ironsource/p3;)V

    .line 96
    :cond_af
    :goto_af
    monitor-exit v3

    goto :goto_b3

    :goto_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_a0

    throw p1

    .line 100
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/ironsource/o3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/j2$a;->c:Lcom/ironsource/j2$a;

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    sget-object v1, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;Lcom/ironsource/o3$f;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 108
    iget-object v0, p0, Lcom/ironsource/o3;->o:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v0

    .line 110
    invoke-virtual {p0}, Lcom/ironsource/o3;->s()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 111
    iget-object v2, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v2, v0, v1}, Lcom/ironsource/Cb;->a(J)V

    goto :goto_e7

    .line 113
    :cond_dc
    iget-object v2, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p0}, Lcom/ironsource/o3;->n()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/ironsource/Cb;->a(JZ)V

    .line 117
    :goto_e7
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 118
    iget-object v0, p0, Lcom/ironsource/o3;->s:Lcom/ironsource/S5;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/S5;->a(J)V

    .line 121
    :cond_fa
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->m()Z

    move-result v0

    if-nez v0, :cond_105

    .line 122
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->i(Lcom/ironsource/p3;)V

    .line 126
    :cond_105
    invoke-virtual {p0, p1}, Lcom/ironsource/o3;->h(Lcom/ironsource/p3;)V

    :cond_108
    return-void
.end method

.method public e()Lcom/ironsource/O0;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/O0;

    iget-object v1, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v1}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ironsource/O0;-><init>(Lcom/ironsource/M0;Lcom/ironsource/Kb;)V

    return-object v0
.end method

.method public e(Lcom/ironsource/p3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {p0}, Lcom/ironsource/o3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/N;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    iget-object v1, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    invoke-virtual {p1}, Lcom/ironsource/p3;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/K0;->a(Lcom/ironsource/md;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/ironsource/p3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    invoke-virtual {p1}, Lcom/ironsource/p3;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/K0;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public h()Ljava/util/UUID;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ironsource/o3;->x:Ljava/util/UUID;

    return-object v0
.end method

.method public h(Lcom/ironsource/p3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->h()Lcom/ironsource/M0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/M0;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/p3;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/o3;->a(ZZLcom/ironsource/p3;)V

    return-void
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public i(Lcom/ironsource/p3;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->q()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/ironsource/o3;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/p3;->i()Lcom/ironsource/y2;

    move-result-object v6

    .line 5
    iget-object v0, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/p3;->l()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/o3;->i:Lcom/ironsource/y2;

    .line 7
    invoke-virtual {v0, v6, v1, v2}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/y2;ILcom/ironsource/y2;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0}, Lcom/ironsource/Ng;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/p3;

    .line 15
    invoke-virtual {v1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/p3;->i()Lcom/ironsource/y2;

    move-result-object v1

    .line 18
    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 22
    :cond_54
    iget-object v1, p0, Lcom/ironsource/o3;->d:Lcom/ironsource/mediationsdk/e;

    .line 25
    invoke-virtual {p1}, Lcom/ironsource/p3;->l()I

    move-result v4

    iget-object v5, p0, Lcom/ironsource/o3;->i:Lcom/ironsource/y2;

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V

    :cond_5f
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    if-nez v0, :cond_7

    .line 2
    const-string v0, ""

    return-object v0

    .line 5
    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public n()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract s()Z
.end method

.method public t()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    if-eq v1, v2, :cond_12

    sget-object v2, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    if-ne v1, v2, :cond_e

    goto :goto_12

    :cond_e
    const/4 v1, 0x0

    goto :goto_13

    :catchall_10
    move-exception v1

    goto :goto_15

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 3
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw v1
.end method

.method public u()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public v()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->c:Lcom/ironsource/o3$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public w()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/o3;->q:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public x()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/o3;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-direct {p0}, Lcom/ironsource/o3;->y()V

    return-void

    .line 5
    :cond_a
    new-instance v0, Lcom/ironsource/o3$a;

    invoke-direct {v0, p0}, Lcom/ironsource/o3$a;-><init>(Lcom/ironsource/o3;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.a (com.ironsource.o3$a)
.class Lcom/ironsource/o3$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/o3;


# direct methods
.method public constructor <init>(Lcom/ironsource/o3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$a;->b:Lcom/ironsource/o3;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$a;->b:Lcom/ironsource/o3;

    invoke-static {v0}, Lcom/ironsource/o3;->-$$Nest$my(Lcom/ironsource/o3;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.b (com.ironsource.o3$b)
.class Lcom/ironsource/o3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field final synthetic b:Lcom/ironsource/o3;


# direct methods
.method public constructor <init>(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$b;->b:Lcom/ironsource/o3;

    iput-object p2, p0, Lcom/ironsource/o3$b;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$b;->b:Lcom/ironsource/o3;

    iget-object v1, p0, Lcom/ironsource/o3$b;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {v0, v1}, Lcom/ironsource/o3;->-$$Nest$md(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.c (com.ironsource.o3$c)
.class Lcom/ironsource/o3$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/o3;


# direct methods
.method public constructor <init>(Lcom/ironsource/o3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$c;->a:Lcom/ironsource/o3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$c;->a:Lcom/ironsource/o3;

    invoke-static {v0}, Lcom/ironsource/o3;->-$$Nest$mA(Lcom/ironsource/o3;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.d (com.ironsource.o3$d)
.class Lcom/ironsource/o3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/o3;


# direct methods
.method public constructor <init>(Lcom/ironsource/o3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/b2;->a(Ljava/lang/Double;)V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 15
    iget-object v4, p0, Lcom/ironsource/o3$d;->a:Lcom/ironsource/o3;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.e (com.ironsource.o3$e)
.class Lcom/ironsource/o3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/ironsource/o3;


# direct methods
.method public constructor <init>(Lcom/ironsource/o3;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iput-object p2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/A3;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p2, p3}, Lcom/ironsource/lg;->b(J)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    .line 4
    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v1, v1, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/V;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v3, v3, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 9
    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    invoke-virtual {v4}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v4

    .line 10
    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    .line 13
    invoke-static {v3, v1, v2}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 16
    iget-object v2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    .line 17
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v4

    .line 18
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/A3;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v2, v2, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/lg;->a(Ljava/util/Map;J)V

    goto :goto_d

    .line 29
    :cond_77
    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v2, v2, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v2, v2, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    .line 31
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    .line 32
    invoke-virtual {v0}, Lcom/ironsource/A3;->b()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/ironsource/lg;->a(Ljava/util/Map;JLjava/lang/String;)V

    goto :goto_d

    .line 40
    :cond_89
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 42
    invoke-virtual {v0, p4}, Lcom/ironsource/V;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p4

    .line 44
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v1, v1, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    .line 46
    invoke-virtual {v1}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    invoke-virtual {v2}, Lcom/ironsource/o3;->h()Ljava/util/UUID;

    move-result-object v2

    .line 47
    invoke-virtual {v0, p4, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    .line 50
    invoke-static {v1, p4, v0}, Lcom/ironsource/o3;->-$$Nest$mb(Lcom/ironsource/o3;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p4

    .line 51
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p4, p2, p3}, Lcom/ironsource/lg;->b(Ljava/util/Map;J)V

    goto :goto_8d

    .line 54
    :cond_c7
    iget-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object p2, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iget-object p3, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    iget-object p4, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, v0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/o3$e;->d:Lcom/ironsource/o3;

    iget-object v0, p0, Lcom/ironsource/o3$e;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/o3$e;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/ironsource/o3$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ironsource/o3;->-$$Nest$ma(Lcom/ironsource/o3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.AbstractC3755o3.f (com.ironsource.o3$f)
.class public final enum Lcom/ironsource/o3$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/o3$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/o3$f;

.field public static final enum b:Lcom/ironsource/o3$f;

.field public static final enum c:Lcom/ironsource/o3$f;

.field public static final enum d:Lcom/ironsource/o3$f;

.field public static final enum e:Lcom/ironsource/o3$f;

.field public static final enum f:Lcom/ironsource/o3$f;

.field private static final synthetic g:[Lcom/ironsource/o3$f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->a:Lcom/ironsource/o3$f;

    .line 2
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "READY_TO_LOAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    .line 3
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "AUCTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->c:Lcom/ironsource/o3$f;

    .line 4
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "LOADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    .line 5
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "READY_TO_SHOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    .line 6
    new-instance v0, Lcom/ironsource/o3$f;

    const-string v1, "SHOWING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/o3$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/o3$f;->f:Lcom/ironsource/o3$f;

    .line 7
    invoke-static {}, Lcom/ironsource/o3$f;->a()[Lcom/ironsource/o3$f;

    move-result-object v0

    sput-object v0, Lcom/ironsource/o3$f;->g:[Lcom/ironsource/o3$f;

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

.method private static synthetic a()[Lcom/ironsource/o3$f;
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/o3$f;->a:Lcom/ironsource/o3$f;

    sget-object v1, Lcom/ironsource/o3$f;->b:Lcom/ironsource/o3$f;

    sget-object v2, Lcom/ironsource/o3$f;->c:Lcom/ironsource/o3$f;

    sget-object v3, Lcom/ironsource/o3$f;->d:Lcom/ironsource/o3$f;

    sget-object v4, Lcom/ironsource/o3$f;->e:Lcom/ironsource/o3$f;

    sget-object v5, Lcom/ironsource/o3$f;->f:Lcom/ironsource/o3$f;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/o3$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/o3$f;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/o3$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/o3$f;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/o3$f;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/o3$f;->g:[Lcom/ironsource/o3$f;

    invoke-virtual {v0}, [Lcom/ironsource/o3$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/o3$f;

    return-object v0
.end method
