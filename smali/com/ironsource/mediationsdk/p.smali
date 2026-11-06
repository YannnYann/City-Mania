###### Class com.ironsource.mediationsdk.p (com.ironsource.mediationsdk.p)
.class public Lcom/ironsource/mediationsdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/aa;
.implements Lcom/ironsource/Sc;
.implements Lcom/ironsource/S4;
.implements Lcom/ironsource/S4$b;
.implements Lcom/ironsource/S4$c;
.implements Lcom/ironsource/S4$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/p$d;,
        Lcom/ironsource/mediationsdk/p$c;
    }
.end annotation


# static fields
.field private static Z:Z = false


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/Boolean;

.field private I:Lcom/ironsource/Kc;

.field private J:Z

.field private K:Z

.field private L:Z

.field private final M:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final N:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/demandOnly/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/ironsource/mediationsdk/demandOnly/f;

.field private Q:Lcom/ironsource/mediationsdk/demandOnly/k;

.field private R:Lcom/ironsource/mediationsdk/demandOnly/c;

.field private S:Lcom/ironsource/T5;

.field private T:Lcom/ironsource/ba;

.field private U:Lcom/ironsource/W6;

.field private V:Z

.field private W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

.field X:Lcom/ironsource/b8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/b8<",
            "Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;",
            ">;"
        }
    .end annotation
.end field

.field Y:Lcom/ironsource/b8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/b8<",
            "Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ironsource/B7;

.field private final d:Lcom/ironsource/B7$a;

.field private final e:Lcom/ironsource/Q7;

.field private final f:Lcom/ironsource/o7;

.field private final g:Lcom/ironsource/N8$a;

.field private h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private i:Lcom/ironsource/Bb;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/lang/Object;

.field private l:Lcom/ironsource/Ue;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/ironsource/ia;

.field private final z:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetJ(Lcom/ironsource/mediationsdk/p;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetl(Lcom/ironsource/mediationsdk/p;)Lcom/ironsource/Ue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputV(Lcom/ironsource/mediationsdk/p;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->V:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->b0()Lcom/ironsource/L7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/L7;->c()Lcom/ironsource/B7$a;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->x()Lcom/ironsource/Q7;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->k()Lcom/ironsource/o7;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/ironsource/Pb;->b0()Lcom/ironsource/L7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/L7;->F()Lcom/ironsource/N8$a;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/p;-><init>(Lcom/ironsource/B7;Lcom/ironsource/B7$a;Lcom/ironsource/Q7;Lcom/ironsource/o7;Lcom/ironsource/N8$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/B7;Lcom/ironsource/B7$a;Lcom/ironsource/Q7;Lcom/ironsource/o7;Lcom/ironsource/N8$a;)V
    .registers 10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->a:Ljava/lang/String;

    .line 9
    const-string v0, "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b9.6.1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->b:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 30
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->p:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->s:Z

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->x:Z

    .line 46
    const-string v3, "sessionDepth"

    iput-object v3, p0, Lcom/ironsource/mediationsdk/p;->z:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->V:Z

    .line 112
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->c:Lcom/ironsource/B7;

    .line 113
    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/B7$a;

    .line 114
    iput-object p3, p0, Lcom/ironsource/mediationsdk/p;->e:Lcom/ironsource/Q7;

    .line 115
    iput-object p4, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/o7;

    .line 116
    iput-object p5, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/N8$a;

    .line 118
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->o()V

    .line 121
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    .line 123
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/util/Set;

    .line 124
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    .line 125
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    .line 126
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    .line 127
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    iput v1, p0, Lcom/ironsource/mediationsdk/p;->A:I

    .line 129
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->E:Z

    .line 130
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    .line 131
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    .line 132
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->u:Ljava/lang/String;

    .line 133
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->H:Ljava/lang/Boolean;

    .line 134
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    .line 135
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->I:Lcom/ironsource/Kc;

    .line 136
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    .line 137
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    .line 142
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    .line 143
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    .line 144
    new-instance p1, Lcom/ironsource/T5;

    invoke-direct {p1}, Lcom/ironsource/T5;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/T5;

    .line 145
    new-instance p1, Lcom/ironsource/ba;

    invoke-direct {p1}, Lcom/ironsource/ba;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    .line 146
    new-instance p2, Lcom/ironsource/W6;

    invoke-direct {p2, p1}, Lcom/ironsource/W6;-><init>(Lcom/ironsource/ba;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/W6;

    .line 147
    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 149
    new-instance p1, Lcom/ironsource/b8$a;

    invoke-direct {p1}, Lcom/ironsource/b8$a;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    .line 150
    new-instance p1, Lcom/ironsource/b8$b;

    invoke-direct {p1}, Lcom/ironsource/b8$b;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/p-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;-><init>()V

    return-void
.end method

.method private A()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private B()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private C()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->f()Lcom/ironsource/ie;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private D()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->C()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->E()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private E()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private I()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/ta;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 3
    const-string v1, "is_deviceid_optout"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 6
    invoke-static {v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7
    sget-object v1, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    invoke-virtual {v1, v0}, Lcom/ironsource/a5;->b(Z)V

    :cond_2e
    return-void
.end method

.method private J()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->K()V

    :cond_7
    return-void
.end method

.method private K()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 6
    :goto_10
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-virtual {v1}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ld;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-virtual {v1}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ld;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 11
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 12
    invoke-virtual {v2}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/Nd;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    .line 13
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 18
    :cond_46
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b8

    .line 24
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 25
    :try_start_50
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 26
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->c()Lcom/ironsource/b3;

    move-result-object v6

    .line 28
    new-instance v0, Lcom/ironsource/T4$a;

    const-string v3, "Mediation"

    invoke-direct {v0, v3}, Lcom/ironsource/T4$a;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Lcom/ironsource/b3;->k()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 31
    const-string v3, "isOneFlow"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ironsource/T4$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    :catchall_71
    move-exception v0

    goto :goto_b6

    .line 34
    :cond_73
    :goto_73
    new-instance v4, Lcom/ironsource/mediationsdk/demandOnly/c;

    .line 38
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ironsource/T4$b;

    .line 41
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Lcom/ironsource/T4$b;-><init>(Lcom/ironsource/F7;Lcom/ironsource/T4$a;)V

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/mediationsdk/demandOnly/c;-><init>(Ljava/util/List;Lcom/ironsource/b3;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/T4;)V

    iput-object v4, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    .line 42
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_50 .. :try_end_8c} :catchall_71

    .line 44
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    .line 47
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V

    goto :goto_96

    .line 50
    :cond_b0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    .line 51
    :goto_b6
    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_71

    throw v0

    .line 61
    :cond_b8
    invoke-static {v3, v3, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x3f2

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->a(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/ironsource/D5;->s6:Lcom/ironsource/D5;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 64
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    return-void
.end method

.method private L()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Interstitial started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 8
    :goto_10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-virtual {v2}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/Ld;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 11
    invoke-virtual {v2}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/Ld;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 14
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 15
    invoke-virtual {v4}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/Nd;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 21
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 29
    :try_start_4f
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    .line 30
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_78

    .line 32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 35
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V

    goto :goto_60

    .line 38
    :cond_72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :catchall_78
    move-exception v0

    .line 39
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    :cond_7b
    const/4 v0, 0x1

    .line 49
    invoke-static {v3, v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x3f2

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->a(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/ironsource/D5;->D5:Lcom/ironsource/D5;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 53
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    return-void
.end method

.method private M()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 8
    :goto_10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-virtual {v2}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/Ld;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 10
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 11
    invoke-virtual {v2}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/Ld;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 14
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 15
    invoke-virtual {v4}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/Nd;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 21
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 29
    :try_start_4f
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->b(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    .line 30
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_88

    .line 32
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_66

    .line 34
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    return-void

    .line 38
    :cond_66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 41
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V

    goto :goto_70

    .line 44
    :cond_82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :catchall_88
    move-exception v0

    .line 45
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    .line 61
    :cond_8b
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    return-void
.end method

.method private N()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->L()V

    :cond_7
    return-void
.end method

.method private O()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->M()V

    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/Ue;
    .registers 14

    .line 1112
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1119
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->c:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "using custom identifier"

    const/4 v5, 0x1

    .line 1123
    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_24
    move-object v5, v0

    goto :goto_2a

    :catch_26
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c2

    .line 1127
    :goto_2a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    if-eqz v0, :cond_34

    .line 1128
    invoke-virtual {v0}, Lcom/ironsource/ia;->f()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v0

    goto :goto_35

    :cond_34
    move-object v8, v1

    .line 1132
    :goto_35
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->j()Ljava/lang/String;

    move-result-object v6

    .line 1138
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v3

    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/p;->J:Z

    .line 1144
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v9

    move-object v2, p1

    move-object v4, p2

    .line 1145
    invoke-static/range {v2 .. v9}, Lcom/ironsource/We;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-static {}, Lcom/ironsource/m9;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1155
    invoke-static {p1, p2, p3}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5f

    .line 1168
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "serverResponseString is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    .line 1173
    :cond_5f
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->g()Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 1174
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "encrypt"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 1175
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1177
    const-string p1, "response"

    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1180
    const-string p1, "encryptedResponse is empty - return null"

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    .line 1184
    :cond_83
    const-string v0, "compression"

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1185
    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a1

    .line 1188
    const-string p1, "encoded response invalid - return null"

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->H()V

    return-object v1

    .line 1194
    :cond_a1
    new-instance p2, Lcom/ironsource/Ue;

    .line 1195
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, p3, v4, p1}, Lcom/ironsource/Ue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_aa} :catch_26

    .line 1196
    :try_start_aa
    sget-object p1, Lcom/ironsource/Ue$a;->d:Lcom/ironsource/Ue$a;

    invoke-virtual {p2, p1}, Lcom/ironsource/Ue;->a(Lcom/ironsource/Ue$a;)V

    .line 1198
    invoke-virtual {p2}, Lcom/ironsource/Ue;->q()Z

    move-result p1

    if-nez p1, :cond_c0

    .line 1199
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "response invalid - return null"

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_bc} :catch_bd

    return-object v1

    :catch_bd
    move-exception v0

    move-object p1, v0

    goto :goto_c1

    :cond_c0
    return-object p2

    :goto_c1
    move-object v1, p2

    .line 1204
    :goto_c2
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 1205
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)",
            "Lcom/ironsource/mediationsdk/demandOnly/f;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 476
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v3

    .line 477
    new-instance v0, Lcom/ironsource/T4$a;

    const-string v1, "Mediation"

    invoke-direct {v0, v1}, Lcom/ironsource/T4$a;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v3}, Lcom/ironsource/L9;->j()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/T4$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    :cond_21
    new-instance v8, Lcom/ironsource/T4$b;

    .line 484
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Lcom/ironsource/T4$b;-><init>(Lcom/ironsource/F7;Lcom/ironsource/T4$a;)V

    .line 485
    new-instance v1, Lcom/ironsource/mediationsdk/demandOnly/f;

    .line 488
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    .line 490
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/demandOnly/f;-><init>(Ljava/util/List;Lcom/ironsource/L9;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/b8;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/T4;)V

    return-object v1
.end method

.method private a(Lcom/ironsource/mediationsdk/q$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 4

    .line 1083
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    const/16 v1, 0x1fe

    if-nez v0, :cond_e

    .line 1085
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource SDK was not initialized"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 1087
    :cond_e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    if-nez v0, :cond_1a

    .line 1089
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource SDK was not initialized using Demand Only mode"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 1092
    :cond_1a
    sget-object v0, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    if-ne p1, v0, :cond_26

    .line 1094
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource initialization failed"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 1097
    :cond_26
    sget-object v0, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    if-ne p1, v0, :cond_3c

    .line 1098
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/q;->d()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1100
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v0, "ironSource initialization in progress"

    invoke-direct {p1, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3

    .line 1206
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1208
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object p2

    .line 1209
    invoke-static {p2, p1}, Lcom/ironsource/Q9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1213
    :cond_13
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object p2

    .line 1214
    invoke-static {p2, p1}, Lcom/ironsource/Q9;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 493
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 494
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 496
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 497
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 498
    invoke-virtual {v3}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/Nd;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    .line 499
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    .line 1502
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 1503
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity is updated to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    .registers 4

    .line 1369
    new-instance v0, Lcom/ironsource/C5;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 1370
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/ironsource/Kc;)V
    .registers 2

    monitor-enter p0

    .line 374
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->I:Lcom/ironsource/Kc;
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

.method private a(Lcom/ironsource/U1;)V
    .registers 4

    .line 167
    sget-object v0, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    .line 168
    invoke-virtual {p1}, Lcom/ironsource/U1;->h()Z

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/ironsource/a5;->c(Z)V

    .line 172
    invoke-virtual {p1}, Lcom/ironsource/U1;->g()Z

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/ironsource/a5;->a(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/ironsource/U1;->k()I

    move-result v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/ironsource/a5;->a(I)V

    .line 179
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->f:Lcom/ironsource/o7;

    invoke-interface {v0, p1}, Lcom/ironsource/o7;->a(Lcom/ironsource/U1;)V

    return-void
.end method

.method private a(Lcom/ironsource/Ue;)V
    .registers 9

    .line 459
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->p()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->d(Lcom/ironsource/Ue;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 460
    new-instance v5, Lcom/ironsource/j0;

    invoke-direct {v5}, Lcom/ironsource/j0;-><init>()V

    .line 461
    new-instance v1, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 463
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 464
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lcom/ironsource/K1;->h()Lcom/ironsource/Y1;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Lcom/ironsource/Y1;->a()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;I)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 473
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    if-eqz p1, :cond_3f

    .line 474
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->setSegment(Lcom/ironsource/ia;)V

    :cond_3f
    return-void
.end method

.method private a(Lcom/ironsource/Ue;Landroid/content/Context;)V
    .registers 16

    .line 1215
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->q()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_18

    .line 1218
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Lcom/ironsource/K1;->b()Lcom/ironsource/R1;

    move-result-object v0

    .line 1221
    invoke-virtual {v0}, Lcom/ironsource/R1;->l()Z

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v6

    .line 1225
    :goto_19
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->C()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1228
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 1229
    invoke-virtual {v1}, Lcom/ironsource/S3;->f()Lcom/ironsource/ie;

    move-result-object v1

    .line 1230
    invoke-virtual {v1}, Lcom/ironsource/ie;->m()Lcom/ironsource/R1;

    move-result-object v1

    .line 1231
    invoke-virtual {v1}, Lcom/ironsource/R1;->l()Z

    move-result v1

    move v7, v1

    goto :goto_32

    :cond_31
    move v7, v6

    .line 1235
    :goto_32
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->w()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1238
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 1239
    invoke-virtual {v1}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v1

    .line 1240
    invoke-virtual {v1}, Lcom/ironsource/L9;->i()Lcom/ironsource/R1;

    move-result-object v1

    .line 1241
    invoke-virtual {v1}, Lcom/ironsource/R1;->l()Z

    move-result v1

    move v8, v1

    goto :goto_4b

    :cond_4a
    move v8, v6

    .line 1245
    :goto_4b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->r()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1248
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 1249
    invoke-virtual {v1}, Lcom/ironsource/S3;->c()Lcom/ironsource/b3;

    move-result-object v1

    .line 1250
    invoke-virtual {v1}, Lcom/ironsource/b3;->g()Lcom/ironsource/R1;

    move-result-object v1

    .line 1251
    invoke-virtual {v1}, Lcom/ironsource/R1;->l()Z

    move-result v1

    move v9, v1

    goto :goto_64

    :cond_63
    move v9, v6

    .line 1255
    :goto_64
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->z()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1258
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 1259
    invoke-virtual {v1}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Lcom/ironsource/Wb;->g()Lcom/ironsource/R1;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Lcom/ironsource/R1;->l()Z

    move-result v1

    move v10, v1

    goto :goto_7d

    :cond_7c
    move v10, v6

    .line 1265
    :goto_7d
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/K1;->i()Lcom/ironsource/kd;

    move-result-object v11

    .line 1266
    invoke-virtual {v11}, Lcom/ironsource/kd;->i()Z

    move-result v12

    if-eqz v0, :cond_aa

    .line 1270
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v1

    .line 1271
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/K1;->b()Lcom/ironsource/R1;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    .line 1272
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V

    :cond_aa
    if-eqz v7, :cond_c4

    .line 1283
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 1284
    invoke-virtual {v0}, Lcom/ironsource/S3;->f()Lcom/ironsource/ie;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Lcom/ironsource/ie;->m()Lcom/ironsource/R1;

    move-result-object v2

    .line 1287
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    .line 1288
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V

    goto :goto_cb

    .line 1291
    :cond_c4
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/r3;->a(Z)V

    :goto_cb
    if-eqz v8, :cond_e5

    .line 1296
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 1297
    invoke-virtual {v0}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v0

    .line 1298
    invoke-virtual {v0}, Lcom/ironsource/L9;->i()Lcom/ironsource/R1;

    move-result-object v2

    .line 1300
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    .line 1301
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V

    goto :goto_120

    :cond_e5
    if-eqz v9, :cond_ff

    .line 1305
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->c()Lcom/ironsource/b3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/b3;->g()Lcom/ironsource/R1;

    move-result-object v2

    .line 1307
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    .line 1308
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V

    goto :goto_120

    :cond_ff
    if-eqz v10, :cond_119

    .line 1312
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Wb;->g()Lcom/ironsource/R1;

    move-result-object v2

    .line 1314
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    .line 1315
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V

    goto :goto_120

    .line 1318
    :cond_119
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/r3;->a(Z)V

    .line 1321
    :goto_120
    sget-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    invoke-virtual {v0, v12}, Lcom/ironsource/r3;->a(Z)V

    if-eqz v12, :cond_14a

    .line 1323
    invoke-virtual {v11}, Lcom/ironsource/kd;->j()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-virtual {v0, v1, p2}, Lcom/ironsource/r3;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 1329
    invoke-virtual {v11}, Lcom/ironsource/kd;->l()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/r3;->b([ILandroid/content/Context;)V

    .line 1332
    invoke-virtual {v11}, Lcom/ironsource/kd;->k()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/r3;->c([ILandroid/content/Context;)V

    .line 1336
    invoke-virtual {v11}, Lcom/ironsource/kd;->g()Z

    move-result v1

    .line 1337
    invoke-virtual {v0, v1}, Lcom/ironsource/r3;->b(Z)V

    .line 1340
    invoke-virtual {v11}, Lcom/ironsource/kd;->h()I

    move-result v1

    .line 1341
    invoke-virtual {v0, v1}, Lcom/ironsource/r3;->c(I)V

    :cond_14a
    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ad unit has already been initialized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 249
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V
    .registers 6

    .line 586
    sget-object p2, Lcom/ironsource/mediationsdk/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const-string v0, "initISDemandOnly() had failed"

    if-eq p1, p2, :cond_83

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_15

    goto/16 :goto_b8

    .line 620
    :cond_15
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    if-eqz p1, :cond_b8

    .line 621
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    .line 622
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 623
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    .line 624
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 627
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/E2;

    move-result-object v1

    .line 629
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object p2

    .line 630
    const-string v2, "Banner"

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 631
    invoke-virtual {v1, p2, v2}, Lcom/ironsource/E2;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_23

    .line 637
    :cond_47
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    .line 638
    :cond_4d
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    if-eqz p1, :cond_b8

    .line 639
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 640
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 641
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 642
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object p2

    .line 643
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    .line 644
    invoke-interface {v1, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    .line 647
    const-string v2, "Interstitial"

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 648
    invoke-interface {v1, p2, v2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_5b

    .line 653
    :cond_7d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    .line 654
    :cond_83
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    if-eqz p1, :cond_b8

    .line 655
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    .line 656
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 657
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 658
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object p2

    .line 659
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 660
    invoke-interface {v1, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    .line 663
    const-string v2, "Rewarded Video"

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 664
    invoke-interface {v1, p2, v2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_91

    .line 669
    :cond_b3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_b8
    :goto_b8
    return-void
.end method

.method private declared-synchronized a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 10

    monitor-enter p0

    .line 871
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 873
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_154

    const/16 v2, 0x1fe

    .line 876
    :try_start_1d
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-nez v3, :cond_33

    .line 877
    const-string p1, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"

    .line 878
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 879
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    goto/16 :goto_136

    .line 884
    :cond_33
    :try_start_33
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    if-nez v3, :cond_46

    .line 885
    const-string p1, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    .line 887
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 888
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_30

    monitor-exit p0

    return-void

    .line 894
    :cond_46
    :try_start_46
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v3

    .line 896
    sget-object v4, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    if-ne v3, v4, :cond_64

    .line 897
    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 898
    const-string p1, "init() had failed"

    const-string v1, "Interstitial"

    .line 900
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 901
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_30

    monitor-exit p0

    return-void

    .line 907
    :cond_64
    :try_start_64
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_91

    .line 909
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v6, 0x424

    if-ne v3, v6, :cond_85

    .line 916
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 917
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 919
    sget-object v3, Lcom/ironsource/D5;->F5:Lcom/ironsource/D5;

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 923
    :cond_85
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 924
    invoke-interface {p2, v0, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_8f
    .catchall {:try_start_64 .. :try_end_8f} :catchall_30

    monitor-exit p0

    return-void

    .line 928
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;)V

    .line 930
    sget-object v4, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    if-ne v3, v4, :cond_e5

    .line 931
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/q;->d()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 932
    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 933
    const-string p1, "init() had failed"

    const-string v1, "Interstitial"

    .line 935
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 936
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_e0

    .line 940
    :cond_b7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_ba
    .catchall {:try_start_91 .. :try_end_ba} :catchall_30

    .line 941
    :try_start_ba
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_e2

    .line 944
    :try_start_c4
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 947
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 948
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 950
    sget-object v1, Lcom/ironsource/D5;->L5:Lcom/ironsource/D5;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    :try_end_e0
    .catchall {:try_start_c4 .. :try_end_e0} :catchall_30

    :cond_e0
    :goto_e0
    monitor-exit p0

    return-void

    :catchall_e2
    move-exception p1

    .line 951
    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw p1

    .line 966
    :cond_e5
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->x()Z

    move-result v3

    if-nez v3, :cond_fd

    .line 967
    const-string p1, "No interstitial configurations found"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 968
    const-string p1, "the server response does not contain interstitial data"

    const-string v1, "Interstitial"

    .line 970
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 971
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_fb
    .catchall {:try_start_e4 .. :try_end_fb} :catchall_30

    monitor-exit p0

    return-void

    .line 978
    :cond_fd
    :try_start_fd
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_30

    .line 979
    :try_start_100
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-nez v3, :cond_12f

    .line 983
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12c

    .line 987
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 988
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 990
    sget-object v3, Lcom/ironsource/D5;->L5:Lcom/ironsource/D5;

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    goto :goto_12c

    :catchall_12a
    move-exception p1

    goto :goto_134

    .line 993
    :cond_12c
    :goto_12c
    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_100 .. :try_end_12d} :catchall_12a

    monitor-exit p0

    return-void

    .line 995
    :cond_12f
    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12a

    .line 997
    :try_start_130
    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_30

    goto :goto_152

    .line 998
    :goto_134
    :try_start_134
    monitor-exit v1
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_12a

    :try_start_135
    throw p1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_30

    .line 1002
    :goto_136
    :try_start_136
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 1003
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 1004
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1006
    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_152
    .catchall {:try_start_136 .. :try_end_152} :catchall_154

    :goto_152
    monitor-exit p0

    return-void

    :catchall_154
    move-exception p1

    :try_start_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw p1
.end method

.method private a(Lcom/ironsource/r3;Lcom/ironsource/R1;Landroid/content/Context;Lcom/ironsource/Ue;Z)V
    .registers 6

    .line 1342
    invoke-virtual {p1, p5}, Lcom/ironsource/r3;->a(Z)V

    .line 1343
    invoke-virtual {p2}, Lcom/ironsource/R1;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1344
    invoke-virtual {p2}, Lcom/ironsource/R1;->d()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 1345
    invoke-virtual {p2}, Lcom/ironsource/R1;->f()I

    move-result p5

    invoke-virtual {p1, p5}, Lcom/ironsource/r3;->a(I)V

    .line 1346
    invoke-virtual {p2}, Lcom/ironsource/R1;->e()I

    move-result p5

    invoke-virtual {p1, p5}, Lcom/ironsource/r3;->d(I)V

    .line 1347
    invoke-virtual {p2}, Lcom/ironsource/R1;->a()I

    move-result p5

    invoke-virtual {p1, p5}, Lcom/ironsource/r3;->b(I)V

    .line 1348
    invoke-virtual {p2}, Lcom/ironsource/R1;->i()[I

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->b([ILandroid/content/Context;)V

    .line 1349
    invoke-virtual {p2}, Lcom/ironsource/R1;->h()[I

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->c([ILandroid/content/Context;)V

    .line 1350
    invoke-virtual {p2}, Lcom/ironsource/R1;->j()[I

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->a([ILandroid/content/Context;)V

    .line 1351
    invoke-virtual {p2}, Lcom/ironsource/R1;->g()[I

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Lcom/ironsource/r3;->d([ILandroid/content/Context;)V

    .line 1353
    invoke-virtual {p4}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/K1;->j()Lcom/ironsource/Ve;

    move-result-object p3

    .line 1354
    invoke-virtual {p1, p3}, Lcom/ironsource/r3;->a(Lcom/ironsource/Ve;)V

    .line 1356
    invoke-virtual {p2}, Lcom/ironsource/R1;->k()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/ironsource/r3;->b(Z)V

    .line 1357
    invoke-virtual {p2}, Lcom/ironsource/R1;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/r3;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ironsource/R3;)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x80

    .line 1358
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1360
    const-string p1, "dynamicUserId"

    const-string v0, "dynamicUserId is invalid, should be between 1-128 chars in length."

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 1361
    invoke-virtual {p2, p1}, Lcom/ironsource/R3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_14
    return-void
.end method

.method private a(Lorg/json/JSONObject;[[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_3f

    .line 1371
    :try_start_2
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_3f

    aget-object v3, p2, v2

    .line 1372
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_18
    move-exception p1

    .line 1376
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 1377
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSourceObject addToDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 1381
    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_3f
    return-void
.end method

.method private a(ZZILorg/json/JSONObject;Z)V
    .registers 9

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_29

    .line 347
    const-string p1, ",Activity=%s"

    .line 349
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 350
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :catch_27
    move-exception p1

    goto :goto_6a

    :cond_29
    if-nez p1, :cond_35

    .line 355
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string p1, "init_context_flow"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_35
    :goto_35
    const-string p1, ",cachedUserAgent=%s"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->c:Lcom/ironsource/B7;

    invoke-interface {v2}, Lcom/ironsource/B7;->n()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string p1, "ext1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string p1, "sessionDepth"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p5, :cond_7a

    if-eqz p2, :cond_64

    .line 363
    const-string p1, "isMultipleAdObjects"

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7a

    .line 365
    :cond_64
    const-string p1, "isMultipleAdUnits"

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_27

    goto :goto_7a

    .line 369
    :goto_6a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 370
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 372
    :cond_7a
    :goto_7a
    new-instance p1, Lcom/ironsource/C5;

    sget-object p2, Lcom/ironsource/D5;->b:Lcom/ironsource/D5;

    invoke-direct {p1, p2, p4}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 373
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method private varargs declared-synchronized a(ZZZ[Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 15

    monitor-enter p0

    .line 250
    :try_start_1
    array-length v0, p4
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_d6

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v0, :cond_31

    :try_start_7
    aget-object v4, p4, v2

    .line 251
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 252
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    goto :goto_2e

    :catchall_14
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_174

    .line 253
    :cond_19
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 254
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    goto :goto_2e

    .line 255
    :cond_24
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 256
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->E:Z
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_14

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 260
    :cond_31
    :try_start_31
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_d6

    if-ne v0, v2, :cond_6c

    .line 263
    :try_start_3d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/Bb;

    if-eqz p1, :cond_58

    .line 264
    array-length p1, p4

    :goto_42
    if-ge v1, p1, :cond_58

    aget-object p2, p4, v1

    .line 265
    iget-object p3, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_55

    .line 266
    invoke-direct {p0, p2, v3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_52
    .catchall {:try_start_3d .. :try_end_51} :catchall_14

    goto :goto_55

    :catch_52
    move-exception v0

    move-object p1, v0

    goto :goto_5b

    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_58
    :goto_58
    move-object v4, p0

    goto/16 :goto_16e

    .line 270
    :goto_5b
    :try_start_5b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 271
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_14

    goto :goto_58

    .line 273
    :cond_6c
    :try_start_6c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 275
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 277
    array-length v2, p4
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_d6

    :goto_77
    if-ge v1, v2, :cond_c3

    :try_start_79
    aget-object v0, p4, v1

    .line 278
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 279
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_14

    .line 283
    :try_start_8d
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_94} :catch_95
    .catchall {:try_start_8d .. :try_end_94} :catchall_14

    goto :goto_c0

    :catch_95
    move-exception v0

    .line 285
    :try_start_96
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 286
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_c0

    .line 289
    :cond_a7
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ad unit has started initializing."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v0, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_c0
    .catchall {:try_start_96 .. :try_end_c0} :catchall_14

    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 296
    :cond_c3
    :try_start_c3
    iget p4, p0, Lcom/ironsource/mediationsdk/p;->A:I

    add-int/lit8 v7, p4, 0x1

    iput v7, p0, Lcom/ironsource/mediationsdk/p;->A:I
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_d6

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v9, p3

    .line 297
    :try_start_cd
    invoke-direct/range {v4 .. v9}, Lcom/ironsource/mediationsdk/p;->a(ZZILorg/json/JSONObject;Z)V

    goto/16 :goto_16e

    :catchall_d2
    move-exception v0

    :goto_d3
    move-object p1, v0

    goto/16 :goto_174

    :catchall_d6
    move-exception v0

    move-object v4, p0

    goto :goto_d3

    :cond_d9
    move-object v4, p0

    move v2, p1

    move v6, p2

    move v9, p3

    .line 301
    iget-object p1, v4, Lcom/ironsource/mediationsdk/p;->t:Ljava/util/List;
    :try_end_df
    .catchall {:try_start_cd .. :try_end_df} :catchall_d2

    if-nez p1, :cond_e3

    monitor-exit p0

    return-void

    .line 303
    :cond_e3
    :try_start_e3
    new-instance p1, Lcom/ironsource/Qb;

    invoke-direct {p1}, Lcom/ironsource/Qb;-><init>()V

    .line 304
    iget-object p2, v4, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 306
    invoke-virtual {p2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p2

    .line 307
    invoke-virtual {p2}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p2

    .line 308
    invoke-virtual {p2}, Lcom/ironsource/K1;->e()Lcom/ironsource/T1;

    move-result-object p2

    .line 309
    invoke-virtual {p2}, Lcom/ironsource/T1;->b()Ljava/util/Map;

    move-result-object p2

    .line 310
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/Qb;->a(Ljava/util/Map;Z)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_101} :catch_102
    .catchall {:try_start_e3 .. :try_end_101} :catchall_d2

    goto :goto_114

    :catch_102
    move-exception v0

    move-object p1, v0

    .line 312
    :try_start_104
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 313
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 315
    :goto_114
    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 317
    array-length p1, p4

    move p2, v1

    :goto_11a
    if-ge p2, p1, :cond_161

    aget-object p3, p4, p2

    .line 319
    iget-object v0, v4, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 320
    iget-object v0, v4, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, v4, Lcom/ironsource/mediationsdk/p;->w:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_130
    .catchall {:try_start_104 .. :try_end_130} :catchall_d2

    .line 324
    :try_start_130
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_137} :catch_138
    .catchall {:try_start_130 .. :try_end_137} :catchall_d2

    goto :goto_149

    :catch_138
    move-exception v0

    .line 326
    :try_start_139
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 327
    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 331
    :goto_149
    iget-object v0, v4, Lcom/ironsource/mediationsdk/p;->t:Ljava/util/List;

    if-eqz v0, :cond_157

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 332
    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_15e

    .line 336
    :cond_157
    invoke-direct {p0, p3, v1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    goto :goto_15e

    .line 339
    :cond_15b
    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    :goto_15e
    add-int/lit8 p2, p2, 0x1

    goto :goto_11a

    .line 343
    :cond_161
    iget p1, v4, Lcom/ironsource/mediationsdk/p;->A:I

    add-int/2addr p1, v3

    iput p1, v4, Lcom/ironsource/mediationsdk/p;->A:I
    :try_end_166
    .catchall {:try_start_139 .. :try_end_166} :catchall_d2

    move-object v1, v4

    move v3, v6

    move v6, v9

    move v4, p1

    .line 344
    :try_start_16a
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/p;->a(ZZILorg/json/JSONObject;Z)V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_170

    move-object v4, v1

    :goto_16e
    monitor-exit p0

    return-void

    :catchall_170
    move-exception v0

    move-object v4, v1

    goto/16 :goto_d3

    :goto_174
    :try_start_174
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_d2

    throw p1
.end method

.method private a(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z
    .registers 5

    .line 1078
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    if-ne v0, v1, :cond_1e

    .line 1079
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1080
    :try_start_f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1081
    monitor-exit v0

    return p1

    :catchall_1b
    move-exception p1

    .line 1082
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;II)Z
    .registers 5

    if-eqz p1, :cond_10

    .line 1362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/List;Lcom/ironsource/Td;Lcom/ironsource/S3;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;",
            "Lcom/ironsource/Td;",
            "Lcom/ironsource/S3;",
            ")Z"
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 v0, 0x0

    .line 390
    :try_start_6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->t:Ljava/util/List;

    const/4 v1, 0x1

    .line 391
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->c(Z)V

    .line 392
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "onInitSuccess()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 393
    const-string v2, "init success"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_81

    .line 397
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_39

    .line 399
    :try_start_20
    const-string v3, "revived"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 400
    invoke-virtual {p2}, Lcom/ironsource/Td;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 401
    const-string v3, "reason"

    invoke-virtual {p2}, Lcom/ironsource/Td;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3e

    :catch_39
    move-exception p1

    goto/16 :goto_fa

    :catch_3c
    move-exception p2

    goto :goto_5f

    .line 403
    :cond_3e
    :goto_3e
    invoke-virtual {p2}, Lcom/ironsource/Td;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 404
    const-string v3, "ext1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/Td;->b()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_5e} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_39

    goto :goto_6f

    .line 407
    :goto_5f
    :try_start_5f
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 408
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 410
    :cond_6f
    :goto_6f
    new-instance p2, Lcom/ironsource/C5;

    sget-object v3, Lcom/ironsource/D5;->L:Lcom/ironsource/D5;

    invoke-direct {p2, v3, v2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 411
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    .line 415
    :cond_81
    invoke-virtual {p3}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p2

    .line 416
    invoke-virtual {p2}, Lcom/ironsource/K1;->f()Lcom/ironsource/U1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/U1;->b()I

    move-result p2

    if-ltz p2, :cond_a4

    .line 418
    new-instance p3, Lcom/ironsource/Z3;

    invoke-direct {p3}, Lcom/ironsource/Z3;-><init>()V

    .line 419
    invoke-virtual {p3, p2}, Lcom/ironsource/Z3;->a(I)V

    .line 421
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 422
    invoke-virtual {v2}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/Nd;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 423
    invoke-virtual {p3, p2, v2}, Lcom/ironsource/Z3;->a(ILjava/util/Map;)V

    .line 427
    :cond_a4
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/r3;->h()V

    .line 428
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/r3;->h()V

    .line 429
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/r3;->h()V

    .line 430
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/ironsource/mediationsdk/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    array-length p3, p2

    move v2, v0

    :goto_d2
    if-ge v2, p3, :cond_ee

    aget-object v3, p2, v2

    .line 435
    iget-object v4, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 437
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 438
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_eb

    .line 442
    :cond_e8
    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    :cond_eb
    :goto_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 447
    :cond_ee
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->k()Lcom/ironsource/Kc;

    move-result-object p1

    if-eqz p1, :cond_f9

    .line 449
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-interface {p1, p2}, Lcom/ironsource/Kc;->a(Lcom/ironsource/Ue;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_f9} :catch_39

    :cond_f9
    return v1

    .line 453
    :goto_fa
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 454
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->k()Lcom/ironsource/Kc;

    move-result-object p1

    if-eqz p1, :cond_11c

    .line 458
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x802

    const-string v1, "onInitSuccess() had failed"

    invoke-direct {p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ironsource/Kc;->onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_11c
    return v0
.end method

.method private b(Ljava/util/List;)Lcom/ironsource/mediationsdk/demandOnly/k;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)",
            "Lcom/ironsource/mediationsdk/demandOnly/k;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 13
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->f()Lcom/ironsource/ie;

    move-result-object v3

    .line 14
    new-instance v0, Lcom/ironsource/T4$a;

    const-string v1, "Mediation"

    invoke-direct {v0, v1}, Lcom/ironsource/T4$a;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Lcom/ironsource/ie;->d()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/T4$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_21
    new-instance v8, Lcom/ironsource/T4$b;

    .line 21
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Lcom/ironsource/T4$b;-><init>(Lcom/ironsource/F7;Lcom/ironsource/T4$a;)V

    .line 23
    new-instance v1, Lcom/ironsource/mediationsdk/demandOnly/k;

    .line 26
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 28
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->i()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/demandOnly/k;-><init>(Ljava/util/List;Lcom/ironsource/ie;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/b8;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/T4;)V

    return-object v1
.end method

.method private b(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    .registers 4

    .line 214
    new-instance v0, Lcom/ironsource/C5;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 215
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method private b(Lcom/ironsource/Ue;)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 198
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/ironsource/K1;->h()Lcom/ironsource/Y1;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/ironsource/Y1;->a()I

    move-result p1

    .line 202
    const-string v1, "console"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 9
    :cond_12
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->J()V

    return-void

    .line 10
    :cond_16
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->N()V

    return-void

    .line 11
    :cond_1a
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->O()V

    return-void
.end method

.method private b(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    if-nez v1, :cond_15

    .line 100
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 101
    monitor-exit v0

    return p1

    :catchall_13
    move-exception p1

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    .line 104
    monitor-exit v0

    return p1

    .line 105
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p1
.end method

.method private declared-synchronized c(Z)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->s:Z
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

.method private c(Lcom/ironsource/Ue;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 75
    invoke-virtual {p1}, Lcom/ironsource/Ue;->p()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_3e

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3
    invoke-static {}, Lcom/ironsource/Df;->a()Lcom/ironsource/Df;

    move-result-object v0

    new-instance v1, Lcom/ironsource/P6;

    invoke-direct {v1, p1}, Lcom/ironsource/P6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Df;->a(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/r3;->a(Landroid/content/Context;Lcom/ironsource/ia;)V

    .line 6
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/r3;->a(Landroid/content/Context;Lcom/ironsource/ia;)V

    .line 7
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/r3;->a(Landroid/content/Context;Lcom/ironsource/ia;)V

    .line 8
    sget-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/r3;->a(Landroid/content/Context;Lcom/ironsource/ia;)V

    :cond_3e
    return-void
.end method

.method private d(Lcom/ironsource/Ue;)Z
    .registers 3

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/S3;->a()Lcom/ironsource/mediationsdk/adquality/a;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adquality/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 16
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->adQualityAvailable()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private e()Lcom/ironsource/T4;
    .registers 4

    .line 10
    new-instance v0, Lcom/ironsource/T4$a;

    const-string v1, "IronSource"

    invoke-direct {v0, v1}, Lcom/ironsource/T4$a;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/ironsource/T4$b;

    .line 13
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/T4$b;-><init>(Lcom/ironsource/F7;Lcom/ironsource/T4$a;)V

    return-object v1
.end method

.method public static g()Lcom/ironsource/mediationsdk/p;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/p$d;->a:Lcom/ironsource/mediationsdk/p;

    return-object v0
.end method

.method private declared-synchronized k()Lcom/ironsource/Kc;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->I:Lcom/ironsource/Kc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private k(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_4
    const-string v0, "^[a-zA-Z0-9]*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private l(Ljava/lang/String;)Lcom/ironsource/R3;
    .registers 5

    .line 2
    new-instance v0, Lcom/ironsource/R3;

    invoke-direct {v0}, Lcom/ironsource/R3;-><init>()V

    if-eqz p1, :cond_2c

    const/4 v1, 0x5

    const/16 v2, 0xa

    .line 6
    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;II)Z

    move-result v1

    const-string v2, "appKey"

    if-eqz v1, :cond_22

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 9
    const-string v1, "should contain only english characters and numbers"

    invoke-static {v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/ironsource/R3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_21
    return-object v0

    .line 17
    :cond_22
    const-string v1, "length should be between 5-10 characters"

    invoke-static {v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/ironsource/R3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0

    .line 24
    :cond_2c
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fa

    const-string v2, "Init Fail - appKey is missing"

    invoke-direct {p1, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/ironsource/R3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 3
    new-instance v0, Lcom/ironsource/Bb;

    invoke-direct {v0}, Lcom/ironsource/Bb;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/Bb;

    return-void
.end method

.method private p()Z
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    .line 2
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdQuality SDK exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    const/4 v0, 0x1

    return v0

    :catchall_1e
    move-exception v0

    .line 5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "No AdQuality SDK found"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private q()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/K1;->b()Lcom/ironsource/R1;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private r()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->c()Lcom/ironsource/b3;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private s()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private t()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized v()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->s:Z
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

.method private w()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private x()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private y()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private z()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public F()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v0

    return v0
.end method

.method public G()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->V:Z

    return-void
.end method

.method public H()V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/ironsource/mediationsdk/p;->Z:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/ironsource/mediationsdk/p;->Z:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    :try_start_c
    const-string v2, "status"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_2a

    :catch_19
    move-exception v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 11
    :goto_2a
    new-instance v0, Lcom/ironsource/C5;

    sget-object v2, Lcom/ironsource/D5;->L:Lcom/ironsource/D5;

    invoke-direct {v0, v2, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 12
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    :cond_3c
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/Ue;
    .registers 6

    .line 1101
    invoke-static {p1}, Lcom/ironsource/q9;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1103
    invoke-static {p1}, Lcom/ironsource/q9;->c(Landroid/content/Context;)Lcom/ironsource/D3;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lcom/ironsource/D3;->d()Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-virtual {v0}, Lcom/ironsource/D3;->f()Ljava/lang/String;

    move-result-object v2

    .line 1106
    invoke-virtual {v0}, Lcom/ironsource/D3;->e()Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1110
    new-instance p2, Lcom/ironsource/Ue;

    invoke-direct {p2, p1, v1, v2, v0}, Lcom/ironsource/Ue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    sget-object p1, Lcom/ironsource/Ue$a;->c:Lcom/ironsource/Ue$a;

    invoke-virtual {p2, p1}, Lcom/ironsource/Ue;->a(Lcom/ironsource/Ue$a;)V

    return-object p2

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;
    .registers 7

    .line 1008
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBannerForDemandOnly()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_16

    .line 1010
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string p2, "createBannerForDemandOnly() : Activity cannot be null"

    const/4 v0, 0x3

    invoke-virtual {p1, v1, p2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 1018
    :cond_16
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 1020
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/Kc;[Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 15

    monitor-enter p0

    .line 14
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "GitHash: 2a5b4f8"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 16
    const-string v0, "Init Failed - provided context is null"

    invoke-static {p1, v0}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1b7

    if-nez v0, :cond_26

    .line 18
    :try_start_10
    const-string p1, "Provided context is null"

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/p;->g(Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "Provided context is null"

    const/16 p3, 0x7d0

    invoke-direct {p1, p3, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_21c

    .line 22
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->g:Lcom/ironsource/N8$a;

    invoke-interface {v0, p1}, Lcom/ironsource/N8$a;->a(Landroid/content/Context;)V

    .line 24
    instance-of v2, p1, Landroid/app/Activity;
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_1b7

    if-eqz v2, :cond_35

    .line 27
    :try_start_2f
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_20

    .line 30
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1bd

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 31
    sget-object v0, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    if-nez p4, :cond_47

    move v3, v1

    goto :goto_48

    :cond_47
    move v3, v7

    :goto_48
    invoke-virtual {v0, v3}, Lcom/ironsource/Ie;->a(Z)V
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_1b7

    if-eqz p5, :cond_50

    .line 32
    :try_start_4d
    array-length v0, p5

    if-nez v0, :cond_6b

    :cond_50
    if-nez p4, :cond_6b

    .line 34
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    array-length v3, v0

    move v4, v7

    :goto_58
    if-ge v4, v3, :cond_64

    aget-object v5, v0, v4

    .line 35
    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 37
    :cond_64
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->E:Z

    .line 38
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    .line 39
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_20

    goto :goto_9c

    .line 41
    :cond_6b
    :try_start_6b
    array-length v0, p5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_1b7

    move v3, v7

    :goto_6d
    if-ge v3, v0, :cond_9c

    :try_start_6f
    aget-object v4, p5, v3

    .line 42
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->w:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 45
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    .line 47
    :cond_85
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 48
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    .line 51
    :cond_8f
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 52
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->E:Z
    :try_end_99
    .catchall {:try_start_6f .. :try_end_99} :catchall_20

    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 56
    :cond_9c
    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->l(Ljava/lang/String;)Lcom/ironsource/R3;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/ironsource/R3;->b()Z

    move-result v3
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_1b7

    if-eqz v3, :cond_c3

    .line 61
    :try_start_c1
    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;
    :try_end_c3
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_20

    .line 65
    :cond_c3
    :try_start_c3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/Ue;

    move-result-object p2
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_1b7

    if-eqz p2, :cond_e2

    .line 67
    :try_start_cb
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v4, "init cache exists"

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/K1;->f()Lcom/ironsource/U1;

    move-result-object p2

    .line 70
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/U1;)V
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_20

    goto :goto_e9

    .line 73
    :cond_e2
    :try_start_e2
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "init cache does not exist"

    invoke-virtual {p2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 76
    :goto_e9
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V

    .line 78
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->d:Lcom/ironsource/B7$a;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    .line 81
    invoke-virtual {v5}, Lcom/ironsource/a5;->d()I

    move-result v5

    int-to-long v5, v5

    .line 82
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 83
    invoke-interface {p2, v3, v4, v5}, Lcom/ironsource/B7$a;->a(Landroid/content/Context;J)V

    .line 89
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-static {}, Lcom/unity3d/mediation/LevelPlay;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/ironsource/ba;->g(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-static {}, Lcom/ironsource/T7;->a()Lcom/ironsource/U7;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/ironsource/ba;->a(Lcom/ironsource/U7;)V

    .line 91
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-static {}, Lcom/ironsource/l0;->a()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/ironsource/ba;->a(I)V

    .line 94
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->I()V

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->d(Landroid/content/Context;)V

    .line 100
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;
    :try_end_12d
    .catchall {:try_start_e2 .. :try_end_12d} :catchall_1b7

    const/4 v8, 0x0

    if-nez p2, :cond_164

    .line 101
    :try_start_130
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/q;->e()V

    .line 102
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    .line 103
    invoke-static {}, Lcom/ironsource/Od;->a()Lcom/ironsource/Od;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Lcom/ironsource/Od;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 105
    :cond_148
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 108
    invoke-virtual {v0}, Lcom/ironsource/R3;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p3

    .line 109
    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 113
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "App key is null"

    const/16 p3, 0x7da

    invoke-direct {p1, p3, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_162
    .catchall {:try_start_130 .. :try_end_162} :catchall_20

    monitor-exit p0

    return-object p1

    .line 117
    :cond_164
    :try_start_164
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-virtual {p2, p1}, Lcom/ironsource/ba;->a(Landroid/content/Context;)V

    .line 118
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/ba;->c(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/ba;->h(Ljava/lang/String;)V

    .line 121
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/p;->x:Z

    if-eqz p1, :cond_1ba

    .line 122
    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_17f
    .catchall {:try_start_164 .. :try_end_17f} :catchall_1b7

    if-eqz p5, :cond_19a

    .line 124
    :try_start_181
    array-length p1, p5

    move p2, v7

    :goto_183
    if-ge p2, p1, :cond_19a

    aget-object v0, p5, p2
    :try_end_187
    .catchall {:try_start_181 .. :try_end_187} :catchall_20

    .line 126
    :try_start_187
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18e} :catch_18f
    .catchall {:try_start_187 .. :try_end_18e} :catchall_20

    goto :goto_197

    :catch_18f
    move-exception v0

    .line 128
    :try_start_190
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_197
    .catchall {:try_start_190 .. :try_end_197} :catchall_20

    :goto_197
    add-int/lit8 p2, p2, 0x1

    goto :goto_183

    .line 132
    :cond_19a
    :try_start_19a
    iget p1, p0, Lcom/ironsource/mediationsdk/p;->A:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/ironsource/mediationsdk/p;->A:I
    :try_end_1a0
    .catchall {:try_start_19a .. :try_end_1a0} :catchall_1b7

    if-eqz p4, :cond_1a6

    move v6, v1

    move v3, p3

    move-object v1, p0

    goto :goto_1a9

    :cond_1a6
    move v6, v7

    move-object v1, p0

    move v3, p3

    .line 133
    :goto_1a9
    :try_start_1a9
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/p;->a(ZZILorg/json/JSONObject;Z)V
    :try_end_1ac
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_1b4

    move-object p1, v1

    .line 139
    :try_start_1ad
    iput-boolean v7, p1, Lcom/ironsource/mediationsdk/p;->x:Z
    :try_end_1af
    .catchall {:try_start_1ad .. :try_end_1af} :catchall_1b0

    goto :goto_1bb

    :catchall_1b0
    move-exception v0

    :goto_1b1
    move-object p2, v0

    goto/16 :goto_21c

    :catchall_1b4
    move-exception v0

    move-object p1, v1

    goto :goto_1b1

    :catchall_1b7
    move-exception v0

    move-object p1, p0

    goto :goto_1b1

    :cond_1ba
    move-object p1, p0

    :goto_1bb
    monitor-exit p0

    return-object v8

    :cond_1bd
    move-object p1, p0

    move v3, p3

    if-eqz p5, :cond_1c8

    if-eqz p4, :cond_1c4

    move v7, v1

    .line 145
    :cond_1c4
    :try_start_1c4
    invoke-direct {p0, v2, v3, v7, p5}, Lcom/ironsource/mediationsdk/p;->a(ZZZ[Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_1d2

    .line 148
    :cond_1c8
    iget-object p2, p1, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p5, "Multiple calls to init without ad units are not allowed"

    const/4 v0, 0x3

    invoke-virtual {p2, p3, p5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 153
    :goto_1d2
    sget-object p2, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    invoke-virtual {p2}, Lcom/ironsource/Ie;->b()Lcom/ironsource/He;

    move-result-object p2

    .line 154
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result p3

    if-eqz p3, :cond_1ee

    .line 155
    iget-object p2, p1, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Ue;)V

    .line 156
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "Already finished init"

    const/16 p4, 0x7f8

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_1c4 .. :try_end_1ec} :catchall_1b0

    monitor-exit p0

    return-object p2

    .line 157
    :cond_1ee
    :try_start_1ee
    sget-object p3, Lcom/ironsource/He;->c:Lcom/ironsource/He;

    if-ne p2, p3, :cond_1fd

    .line 158
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "Legacy init failed"

    const/16 p4, 0x80c

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_1fb
    .catchall {:try_start_1ee .. :try_end_1fb} :catchall_1b0

    monitor-exit p0

    return-object p2

    .line 159
    :cond_1fd
    :try_start_1fd
    sget-object p3, Lcom/ironsource/He;->a:Lcom/ironsource/He;

    if-eq p2, p3, :cond_211

    if-eqz p4, :cond_206

    .line 161
    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Kc;)V

    .line 163
    :cond_206
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "Old Api init in progress"

    const/16 p4, 0x7ee

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_1fd .. :try_end_20f} :catchall_1b0

    monitor-exit p0

    return-object p2

    .line 166
    :cond_211
    :try_start_211
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "Already called new init"

    const/16 p4, 0x7e4

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V
    :try_end_21a
    .catchall {:try_start_211 .. :try_end_21a} :catchall_1b0

    monitor-exit p0

    return-object p2

    :goto_21c
    :try_start_21c
    monitor-exit p0
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_1b0

    throw p2
.end method

.method public a(Lcom/ironsource/md;)Lcom/ironsource/qd$b;
    .registers 5

    .line 1366
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->e:Lcom/ironsource/Q7;

    .line 1367
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 1368
    invoke-interface {v0, v1, p1, v2}, Lcom/ironsource/Q7;->a(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/qd$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1432
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->e()Lcom/ironsource/T4;

    move-result-object v0

    const/4 v1, 0x0

    .line 1436
    :try_start_5
    sget-object v2, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    invoke-virtual {v2}, Lcom/ironsource/Ie;->a()Lcom/ironsource/He;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_a1

    .line 1437
    :try_start_b
    sget-object v3, Lcom/ironsource/D5;->M5:Lcom/ironsource/D5;

    invoke-interface {v0, v3, v2}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V

    if-nez p1, :cond_1f

    .line 1441
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "bidding data cannot be retrieved, context required"

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 1442
    sget-object p1, Lcom/ironsource/D5;->P5:Lcom/ironsource/D5;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V

    return-object v1

    .line 1447
    :cond_1f
    sget-object v3, Lcom/ironsource/He;->a:Lcom/ironsource/He;

    if-ne v2, v3, :cond_30

    .line 1448
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "bidding data cannot be retrieved, SDK not initialized"

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 1449
    sget-object p1, Lcom/ironsource/D5;->S5:Lcom/ironsource/D5;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V

    return-object v1

    .line 1454
    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/q;->f()V

    .line 1457
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 1460
    invoke-virtual {v3}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v3

    .line 1461
    invoke-virtual {v3}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v3

    .line 1462
    invoke-virtual {v3}, Lcom/ironsource/K1;->k()Lcom/ironsource/og;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 1464
    invoke-virtual {v3}, Lcom/ironsource/og;->e()Z

    move-result v3

    goto :goto_50

    :cond_4f
    move v3, v4

    .line 1469
    :goto_50
    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-virtual {v5, p1}, Lcom/ironsource/ba;->b(Landroid/content/Context;)V

    .line 1470
    new-instance v5, Lcom/ironsource/ng;

    invoke-direct {v5}, Lcom/ironsource/ng;-><init>()V

    invoke-virtual {v5, p1}, Lcom/ironsource/ng;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1471
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/ironsource/mediationsdk/d;->a(Lorg/json/JSONObject;Z)V

    if-eqz v3, :cond_70

    .line 1474
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/Q9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    .line 1475
    :cond_70
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/Q9;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1477
    :goto_78
    sget-object v3, Lcom/ironsource/He;->d:Lcom/ironsource/He;

    if-ne v2, v3, :cond_92

    .line 1478
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external token parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 1481
    :cond_92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 1482
    sget-object p1, Lcom/ironsource/D5;->N5:Lcom/ironsource/D5;

    invoke-interface {v0, p1, v2}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_9d} :catch_9e

    goto :goto_a9

    :catch_9e
    move-object p1, v1

    move-object v1, v2

    goto :goto_a2

    :catch_a1
    move-object p1, v1

    .line 1487
    :goto_a2
    sget-object v2, Lcom/ironsource/D5;->O5:Lcom/ironsource/D5;

    invoke-interface {v0, v2, v1}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V

    move-object v2, v1

    move-object v1, p1

    .line 1490
    :cond_a9
    :goto_a9
    sget-object p1, Lcom/ironsource/D5;->R5:Lcom/ironsource/D5;

    invoke-interface {v0, p1, v2}, Lcom/ironsource/T4;->a(Lcom/ironsource/D5;Lcom/ironsource/He;)V

    return-object v1
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$a;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_10

    .line 181
    array-length v1, p4

    if-nez v1, :cond_46

    goto :goto_10

    :catchall_d
    move-exception p1

    goto/16 :goto_b9

    :cond_10
    :goto_10
    if-eqz p3, :cond_46

    .line 182
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->E:Z

    if-eqz p3, :cond_1c

    .line 183
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_23

    .line 185
    :cond_1c
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    .line 186
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_23
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-eqz p3, :cond_2d

    .line 190
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_34

    .line 192
    :cond_2d
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    .line 193
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_34
    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz p3, :cond_3e

    .line 197
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_a0

    .line 199
    :cond_3e
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    .line 200
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 203
    :cond_46
    array-length p3, p4

    const/4 v1, 0x0

    :goto_48
    if-ge v1, p3, :cond_a0

    aget-object v2, p4, v1

    .line 204
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 205
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->F:Z

    if-eqz v3, :cond_5c

    .line 206
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_67

    .line 208
    :cond_5c
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    .line 209
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 210
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_67
    :goto_67
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 216
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->E:Z

    if-eqz v3, :cond_77

    .line 217
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_82

    .line 219
    :cond_77
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    .line 220
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 221
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_82
    :goto_82
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 227
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->G:Z

    if-eqz v3, :cond_92

    .line 228
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;)V

    goto :goto_9d

    .line 230
    :cond_92
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    .line 231
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 232
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_a0
    :goto_a0
    if-eqz p1, :cond_b7

    .line 241
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_ac

    .line 242
    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;)V

    .line 246
    :cond_ac
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V
    :try_end_b7
    .catchall {:try_start_1 .. :try_end_b7} :catchall_d

    :cond_b7
    monitor-exit p0

    return-object p2

    :goto_b9
    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_d

    throw p1
.end method

.method public a()V
    .registers 7

    .line 500
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 501
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/p;->H:Ljava/lang/Boolean;

    .line 502
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x25b

    const-string v4, "init() had failed"

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 503
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 508
    :cond_1e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 509
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->L:Z

    .line 510
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 513
    const-string v3, "init() had failed"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    .line 514
    invoke-virtual {v0, v2, v3}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 519
    :cond_36
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    if-eqz v0, :cond_4d

    .line 520
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->K:Z

    .line 521
    invoke-static {}, Lcom/ironsource/mediationsdk/l;->a()Lcom/ironsource/mediationsdk/l;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 524
    const-string v2, "init() had failed"

    const-string v3, "Rewarded Video"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 525
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 530
    :cond_4d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 531
    :try_start_50
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    .line 532
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 533
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 534
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v2

    .line 535
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    .line 536
    invoke-interface {v3, v2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    const-string v4, "init() had failed"

    const-string v5, "Interstitial"

    .line 539
    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    .line 540
    invoke-interface {v3, v2, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_5a

    :catchall_7e
    move-exception v1

    goto/16 :goto_100

    .line 544
    :cond_81
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->M:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 545
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_50 .. :try_end_87} :catchall_7e

    .line 547
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 548
    :try_start_8a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    .line 549
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    .line 551
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v2

    .line 552
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 553
    invoke-interface {v3, v2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    const-string v4, "init() had failed"

    const-string v5, "Rewarded Video"

    .line 556
    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    .line 557
    invoke-interface {v3, v2, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_94

    :catchall_b8
    move-exception v0

    goto :goto_fe

    .line 562
    :cond_ba
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 563
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_8a .. :try_end_c0} :catchall_b8

    .line 565
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 566
    :try_start_c3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    .line 567
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 568
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cd
    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    .line 569
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    move-result-object v3

    if-eqz v3, :cond_cd

    .line 572
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/E2;

    move-result-object v3

    .line 574
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "init() had failed"

    const-string v5, "Banner"

    .line 575
    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    .line 576
    invoke-virtual {v3, v2, v4}, Lcom/ironsource/E2;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_cd

    :catchall_f3
    move-exception v1

    goto :goto_fc

    .line 581
    :cond_f5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->N:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 582
    monitor-exit v0

    return-void

    .line 583
    :goto_fc
    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_c3 .. :try_end_fd} :catchall_f3

    throw v1

    .line 584
    :goto_fe
    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_b8

    throw v0

    .line 585
    :goto_100
    :try_start_100
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_7e

    throw v1
.end method

.method public a(JLcom/ironsource/Ue$a;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    :try_start_8
    const-string v1, "duration"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    const-string p1, "sessionDepth"

    iget p2, p0, Lcom/ironsource/mediationsdk/p;->A:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string p1, "ext1"

    invoke-virtual {p3}, Lcom/ironsource/Ue$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_2f

    :catch_1e
    move-exception p1

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 12
    :goto_2f
    new-instance p1, Lcom/ironsource/C5;

    sget-object p2, Lcom/ironsource/D5;->Q:Lcom/ironsource/D5;

    invoke-direct {p1, p2, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 13
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 1021
    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    .line 1023
    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 1025
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 1026
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a()Lcom/ironsource/mediationsdk/demandOnly/h$b;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$b;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_3c

    .line 1031
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz p2, :cond_3a

    .line 1033
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/E2;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/E2;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception p1

    goto :goto_9c

    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    .line 1040
    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v1

    .line 1041
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/q$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1044
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1045
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/E2;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/ironsource/E2;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_38

    monitor-exit p0

    return-void

    .line 1049
    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 1051
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_38

    if-eqz p1, :cond_6d

    monitor-exit p0

    return-void

    .line 1055
    :cond_6d
    :try_start_6d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->s()Z

    move-result p1

    if-nez p1, :cond_8d

    .line 1056
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "No banner configurations found"

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1061
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;->getListener()Lcom/ironsource/E2;

    move-result-object p1

    .line 1064
    const-string p2, "the server response does not contain banner data"

    const-string v0, "Banner"

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 1065
    invoke-virtual {p1, p3, p2}, Lcom/ironsource/E2;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_38

    monitor-exit p0

    return-void

    .line 1073
    :cond_8d
    :try_start_8d
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/demandOnly/h$b;)Z

    move-result p1
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_38

    if-eqz p1, :cond_95

    monitor-exit p0

    return-void

    .line 1077
    :cond_95
    :try_start_95
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_38

    monitor-exit p0

    return-void

    :goto_9c
    :try_start_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_38

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 858
    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    .line 860
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 862
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    .line 863
    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 865
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    .line 866
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    .line 868
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    invoke-interface {v0, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 682
    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    .line 684
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 685
    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p3

    .line 687
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 688
    invoke-virtual {p3, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    const/4 p3, 0x1

    .line 690
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 691
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    .line 693
    iget-object p3, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 694
    invoke-interface {p3, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    .line 695
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public a(Lcom/ironsource/ia;)V
    .registers 3

    .line 670
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    .line 672
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-eqz v0, :cond_9

    .line 673
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->setSegment(Lcom/ironsource/ia;)V

    .line 677
    :cond_9
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/ia;)V

    .line 678
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/ia;)V

    .line 679
    sget-object p1, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/ia;)V

    .line 680
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/ia;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 3

    .line 1007
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    invoke-interface {v0, p1}, Lcom/ironsource/b8;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    invoke-interface {v0, p1}, Lcom/ironsource/b8;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    .registers 10

    .line 696
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 698
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    const/16 v2, 0x1fe

    .line 701
    :try_start_1c
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->E:Z

    if-nez v3, :cond_31

    .line 702
    const-string p1, "initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()"

    .line 703
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 704
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :catchall_2e
    move-exception p1

    goto/16 :goto_126

    .line 709
    :cond_31
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    if-nez v3, :cond_43

    .line 710
    const-string p1, "Rewarded video was initialized in mediation mode"

    .line 711
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 712
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 718
    :cond_43
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v3

    .line 720
    sget-object v4, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    if-ne v3, v4, :cond_60

    .line 721
    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 722
    const-string p1, "init() had failed"

    const-string v1, "Rewarded Video"

    .line 724
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 725
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 731
    :cond_60
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8c

    .line 733
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v6, 0x424

    if-ne v3, v6, :cond_81

    .line 740
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 741
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 743
    sget-object v3, Lcom/ironsource/D5;->Q4:Lcom/ironsource/D5;

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 747
    :cond_81
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 748
    invoke-interface {p2, v0, v4}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 752
    :cond_8c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/p;->a(Landroid/app/Activity;)V

    .line 754
    sget-object v4, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    if-ne v3, v4, :cond_db

    .line 755
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/q;->d()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 756
    const-string p1, "init() had failed"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 757
    const-string p1, "init() had failed"

    const-string v1, "Rewarded Video"

    .line 759
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 760
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 764
    :cond_b2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_b5
    .catchall {:try_start_1c .. :try_end_b5} :catchall_2e

    .line 765
    :try_start_b5
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_d8

    .line 768
    :try_start_bb
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_142

    .line 771
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 772
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 774
    sget-object v1, Lcom/ironsource/D5;->K5:Lcom/ironsource/D5;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    :try_end_d7
    .catchall {:try_start_bb .. :try_end_d7} :catchall_2e

    return-void

    :catchall_d8
    move-exception p1

    .line 775
    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    throw p1

    .line 789
    :cond_db
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->D()Z

    move-result v3

    if-nez v3, :cond_f2

    .line 790
    const-string p1, "No rewarded video configurations found"

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 791
    const-string p1, "the server response does not contain rewarded video data"

    const-string v1, "Rewarded Video"

    .line 793
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 794
    invoke-interface {p2, v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 802
    :cond_f2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_f5
    .catchall {:try_start_da .. :try_end_f5} :catchall_2e

    .line 803
    :try_start_f5
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-nez v3, :cond_11f

    .line 806
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->O:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 810
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 811
    invoke-static {v5, p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 813
    sget-object v3, Lcom/ironsource/D5;->K5:Lcom/ironsource/D5;

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    goto :goto_11d

    :catchall_11b
    move-exception p1

    goto :goto_124

    .line 816
    :cond_11d
    :goto_11d
    monitor-exit v1

    return-void

    .line 818
    :cond_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_f5 .. :try_end_120} :catchall_11b

    .line 819
    :try_start_120
    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_2e

    return-void

    .line 820
    :goto_124
    :try_start_124
    monitor-exit v1
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_11b

    :try_start_125
    throw p1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_2e

    .line 823
    :goto_126
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 824
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 825
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 826
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 827
    invoke-interface {p2, v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_142
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 3

    .line 1491
    const-string v0, "removeImpressionDataListener - listener is null"

    invoke-static {p1, v0}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1496
    :cond_9
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/ta;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 828
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 830
    invoke-interface {v1, p1}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_34

    .line 832
    :try_start_1f
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    const/16 v3, 0x1fc

    if-nez v2, :cond_38

    .line 833
    const-string v2, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"

    .line 835
    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 836
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_36
    .catchall {:try_start_1f .. :try_end_32} :catchall_34

    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    goto :goto_71

    :catch_36
    move-exception v0

    goto :goto_4f

    .line 841
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-nez v2, :cond_4b

    .line 842
    const-string v2, "Rewarded video was not initiated"

    .line 843
    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_36
    .catchall {:try_start_38 .. :try_end_49} :catchall_34

    monitor-exit p0

    return-void

    .line 849
    :cond_4b
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->b(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_36
    .catchall {:try_start_4b .. :try_end_4e} :catchall_34

    goto :goto_6f

    .line 851
    :goto_4f
    :try_start_4f
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 852
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v1, :cond_6f

    .line 854
    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 855
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1fe

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 856
    invoke-interface {v1, p1, v2}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_34

    :cond_6f
    :goto_6f
    monitor-exit p0

    return-void

    :goto_71
    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_34

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1382
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataKeyValidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataValueValidity(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 1386
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 1390
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 1391
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 1395
    :cond_20
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatMetaData(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/metadata/MetaData;

    move-result-object v0

    .line 1396
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataKey()Ljava/lang/String;

    move-result-object v1

    .line 1397
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataValue()Ljava/util/List;

    move-result-object v0

    .line 1399
    invoke-static {v1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationOnlyKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1400
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {v1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationKeysBeforeInit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1401
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMetaData with key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must to be called before init"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_69

    .line 1404
    :cond_5a
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v2

    .line 1405
    invoke-virtual {v2, v1, v0}, Lcom/ironsource/ta;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_69

    .line 1408
    :cond_62
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/mediationsdk/c;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 1413
    :goto_69
    :try_start_69
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/c;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 1414
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/ta;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1416
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1417
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1418
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_89

    :catch_a3
    move-exception v1

    goto :goto_b0

    .line 1420
    :cond_a5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->U:Lcom/ironsource/W6;

    invoke-virtual {v1, v2}, Lcom/ironsource/W6;->a(Lorg/json/JSONObject;)V

    .line 1421
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-virtual {v1, v2}, Lcom/ironsource/ba;->a(Lorg/json/JSONObject;)V
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_af} :catch_a3

    goto :goto_d1

    .line 1423
    :goto_b0
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 1424
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got the following error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 1428
    :goto_d1
    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1429
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result p2

    if-eqz p2, :cond_de

    sget-object p2, Lcom/ironsource/D5;->j:Lcom/ironsource/D5;

    goto :goto_e0

    :cond_de
    sget-object p2, Lcom/ironsource/D5;->i:Lcom/ironsource/D5;

    .line 1430
    :goto_e0
    new-instance v0, Lcom/ironsource/C5;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 1431
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 1497
    const-string v0, "setAdRevenueData - impressionData is null"

    invoke-static {p2, v0}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1499
    const-string v0, "setAdRevenueData - dataSource is null"

    invoke-static {p1, v0}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1501
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->S:Lcom/ironsource/T5;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/T5;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/util/List;ZLcom/ironsource/S3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            ">;Z",
            "Lcom/ironsource/S3;",
            ")V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Ue;)V

    if-eqz p2, :cond_d

    .line 387
    new-instance p2, Lcom/ironsource/Td;

    invoke-direct {p2}, Lcom/ironsource/Td;-><init>()V

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/p;->a(Ljava/util/List;Lcom/ironsource/Td;Lcom/ironsource/S3;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 681
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/c;->a(Z)V

    return-void
.end method

.method public a(Lcom/ironsource/Td;Lcom/ironsource/Ue;)Z
    .registers 4

    .line 375
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Ue;)V

    .line 376
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    return p1

    .line 379
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_e
    iput-object p2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 381
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1e

    .line 383
    invoke-virtual {p2}, Lcom/ironsource/Ue;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object p2

    .line 384
    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Ljava/util/List;Lcom/ironsource/Td;Lcom/ironsource/S3;)Z

    move-result p1

    return p1

    :catchall_1e
    move-exception p1

    .line 385
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public a(Lcom/ironsource/l3;)Z
    .registers 5

    .line 1363
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->e:Lcom/ironsource/Q7;

    .line 1364
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 1365
    invoke-interface {v0, v1, p1, v2}, Lcom/ironsource/Q7;->c(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/Ue;
    .registers 10

    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    if-eqz v1, :cond_11

    .line 138
    new-instance p1, Lcom/ironsource/Ue;

    invoke-direct {p1, v1}, Lcom/ironsource/Ue;-><init>(Lcom/ironsource/Ue;)V

    monitor-exit v0

    return-object p1

    :catchall_e
    move-exception p1

    goto/16 :goto_a3

    .line 144
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/Ue;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1e

    .line 147
    invoke-virtual {p3}, Lcom/ironsource/Ue;->q()Z

    move-result v2

    if-nez v2, :cond_73

    .line 148
    :cond_1e
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Null or invalid response. Trying to get cached response"

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p3, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/ironsource/mediationsdk/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/Ue;

    move-result-object p3

    if-eqz p3, :cond_73

    .line 162
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 163
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ironsource/Ue;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 166
    invoke-virtual {v3, v2, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 172
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object p2

    .line 173
    new-instance v2, Lcom/ironsource/C5;

    sget-object v3, Lcom/ironsource/D5;->N:Lcom/ironsource/D5;

    invoke-direct {v2, v3, p2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 174
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    :cond_73
    if-eqz p3, :cond_a1

    .line 181
    iput-object p3, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 182
    invoke-virtual {p3}, Lcom/ironsource/Ue;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/Ue;Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/r3;->c(Z)V

    .line 188
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/r3;->c(Z)V

    .line 189
    sget-object p1, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    invoke-virtual {p1, v1}, Lcom/ironsource/r3;->c(Z)V

    .line 190
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/r3;->c(Z)V

    .line 192
    :cond_a1
    monitor-exit v0

    return-object p3

    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_3 .. :try_end_a4} :catchall_e

    throw p1
.end method

.method public b(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/o;
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_16

    .line 86
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string p2, "createBanner() : Activity cannot be null"

    const/4 v0, 0x3

    invoke-virtual {p1, v1, p2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_16
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 94
    new-instance v0, Lcom/ironsource/mediationsdk/o;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/o;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .line 107
    invoke-static {}, Lcom/ironsource/mediationsdk/q;->c()Lcom/ironsource/mediationsdk/q;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/ironsource/mediationsdk/p$b;->b:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/q;->a()Lcom/ironsource/mediationsdk/q$d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x2

    const-string v3, "init() had failed"

    if-eq v1, v2, :cond_35

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1f

    goto :goto_28

    .line 127
    :cond_1f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->A()Z

    move-result v0

    if-nez v0, :cond_28

    .line 129
    const-string v0, "No Native Ad configurations found"

    return-object v0

    :cond_28
    :goto_28
    const-string v0, ""

    return-object v0

    .line 131
    :cond_2b
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/q;->d()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v3

    .line 132
    :cond_32
    const-string v0, "init() not finished yet"

    return-object v0

    :cond_35
    return-object v3

    .line 134
    :cond_36
    const-string v0, "init() must be called first"

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->c:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 205
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/ironsource/C5;

    sget-object v2, Lcom/ironsource/D5;->r:Lcom/ironsource/D5;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 207
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    return-object p1

    .line 213
    :cond_24
    const-string p1, ""

    return-object p1
.end method

.method public declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    .line 58
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    .line 61
    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 63
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Y:Lcom/ironsource/b8;

    .line 67
    invoke-interface {v0, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyRewardedVideoListener;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$c;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;-><init>()V

    .line 71
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 76
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b()Lcom/ironsource/mediationsdk/demandOnly/h$d;

    move-result-object p1

    .line 81
    iget-object p3, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    invoke-interface {p3, p2}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public b(Lcom/ironsource/Ue;Landroid/content/Context;)V
    .registers 3

    .line 193
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/Ue;)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/Ue;Landroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .registers 5

    .line 226
    const-string v0, "addImpressionDataListener - listener is null"

    invoke-static {p1, v0}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 231
    :cond_9
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/ta;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 233
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add impression data listener to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 224
    new-instance v0, Lcom/ironsource/mediationsdk/t;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/t;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 225
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/t;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 216
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/c;->b(Z)V

    .line 218
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-virtual {v0, p1}, Lcom/ironsource/ba;->a(Z)V

    if-eqz p1, :cond_11

    .line 220
    sget-object p1, Lcom/ironsource/D5;->c:Lcom/ironsource/D5;

    goto :goto_13

    :cond_11
    sget-object p1, Lcom/ironsource/D5;->d:Lcom/ironsource/D5;

    :goto_13
    const/4 v0, 0x0

    .line 221
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/ironsource/C5;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 223
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 30
    :try_start_1
    new-instance v1, Lcom/ironsource/R3;

    invoke-direct {v1}, Lcom/ironsource/R3;-><init>()V

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Lcom/ironsource/R3;)V

    .line 34
    invoke-virtual {v1}, Lcom/ironsource/R3;->b()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 35
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/ironsource/C5;

    sget-object v4, Lcom/ironsource/D5;->k:Lcom/ironsource/D5;

    invoke-direct {v3, v4, v2}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 39
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return v1

    :catch_29
    move-exception v1

    goto :goto_3e

    .line 42
    :cond_2b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 45
    invoke-virtual {v1}, Lcom/ironsource/R3;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    .line 46
    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_29

    return v0

    .line 54
    :goto_3e
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 55
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public c()Lcom/ironsource/fc;
    .registers 8

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Ue;->k()Lcom/ironsource/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ld;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 10
    new-instance v1, Lcom/ironsource/fc;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 13
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/fc;-><init>(Ljava/util/List;Lcom/ironsource/Wb;Ljava/lang/String;Lcom/ironsource/ta;Lcom/ironsource/ia;)V

    return-object v1

    :cond_33
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x3f2

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/p;->a(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 21
    sget-object v1, Lcom/ironsource/D5;->O6:Lcom/ironsource/D5;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    .line 55
    sget-object v0, Lcom/ironsource/Nf;->a:Lcom/ironsource/Nf;

    invoke-virtual {v0}, Lcom/ironsource/Nf;->b()V

    .line 56
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->v()Z

    move-result v1

    if-nez v1, :cond_18

    const/16 p1, 0x6b9

    .line 57
    invoke-virtual {v0, p1}, Lcom/ironsource/Nf;->a(I)V

    .line 59
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched, SDK not initialized"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_18
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/p;->c(Lcom/ironsource/Ue;)Z

    move-result v1

    if-nez v1, :cond_2d

    const/16 p1, 0x6ba

    .line 63
    invoke-virtual {v0, p1}, Lcom/ironsource/Nf;->a(I)V

    .line 64
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched because the setMetadata flag is not enabled.\nTo fix this, call LevelPlay.setMetaData(\"is_test_suite\", \"enable\") before initializing the LevelPlay SDK."

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_2d
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_40

    const/16 p1, 0x6bd

    .line 68
    invoke-virtual {v0, p1}, Lcom/ironsource/Nf;->a(I)V

    .line 70
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "TestSuite cannot be launched, No network connectivity"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_40
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/p$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/p$a;-><init>(Lcom/ironsource/mediationsdk/p;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->X:Lcom/ironsource/b8;

    invoke-interface {v0, p1}, Lcom/ironsource/b8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    .line 29
    :try_start_21
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    const/16 v2, 0x1fc

    if-nez v1, :cond_39

    .line 30
    const-string v1, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    .line 32
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 33
    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :catch_37
    move-exception v1

    goto :goto_51

    .line 38
    :cond_39
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-nez v1, :cond_4d

    .line 39
    const-string v1, "Interstitial was not initiated"

    .line 40
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 41
    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v3}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 46
    :cond_4d
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->a(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_50} :catch_37

    return-void

    .line 48
    :goto_51
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 49
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v0, :cond_6e

    .line 53
    const-string v1, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    .line 54
    invoke-interface {v0, p1, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_6e
    return-void
.end method

.method public d()Lcom/ironsource/Ue;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->P:Lcom/ironsource/mediationsdk/demandOnly/f;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/f;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :catchall_d
    move-exception p1

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 4
    :try_start_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->R:Lcom/ironsource/mediationsdk/demandOnly/c;

    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/c;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyISDemandOnlyBanner()"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setMediationType(mediationType:"

    .line 1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v2, 0x40

    .line 5
    invoke-direct {p0, p1, v5, v2}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/p;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/ironsource/mediationsdk/p;->T:Lcom/ironsource/ba;

    invoke-virtual {v2, p1}, Lcom/ironsource/ba;->f(Ljava/lang/String;)V

    return-void

    :catch_39
    move-exception v2

    goto :goto_43

    .line 10
    :cond_3b
    const-string v2, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 12
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_39

    return-void

    .line 16
    :goto_43
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 17
    iget-object v3, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->h:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFailed(reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 4
    const-string p1, "Mediation init failed"

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->i:Lcom/ironsource/Bb;

    if-eqz p1, :cond_3f

    .line 7
    iget-object p1, p0, Lcom/ironsource/mediationsdk/p;->v:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$a;

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/IronSource$a;Z)V

    goto :goto_2d

    :catch_3d
    move-exception p1

    goto :goto_52

    .line 12
    :cond_3f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/p;->k()Lcom/ironsource/Kc;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 14
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v1, "Legacy init failed"

    const/16 v2, 0x80c

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ironsource/Kc;->onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_3d

    return-void

    .line 18
    :goto_52
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_62
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->m:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->Q:Lcom/ironsource/mediationsdk/demandOnly/k;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/demandOnly/k;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :catchall_d
    move-exception p1

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_d

    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/ironsource/hc;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->l:Lcom/ironsource/Ue;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/Wb;->e()Lcom/ironsource/hc;

    move-result-object p1

    return-object p1

    .line 12
    :cond_19
    invoke-virtual {v0, p1}, Lcom/ironsource/Wb;->a(Ljava/lang/String;)Lcom/ironsource/hc;

    move-result-object p1

    if-eqz p1, :cond_20

    return-object p1

    .line 16
    :cond_20
    invoke-virtual {v0}, Lcom/ironsource/Wb;->e()Lcom/ironsource/hc;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ironsource/C5;

    sget-object v2, Lcom/ironsource/D5;->k:Lcom/ironsource/D5;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->W:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    if-eqz v0, :cond_36

    .line 10
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->changeUserId(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public l()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->p:Ljava/util/Map;

    return-object v0
.end method

.method public m()Lcom/ironsource/ia;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->y:Lcom/ironsource/ia;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p;->u:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->B:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->C:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/p;->D:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

###### Class com.ironsource.mediationsdk.p.a (com.ironsource.mediationsdk.p$a)
.class Lcom/ironsource/mediationsdk/p$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/p;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ironsource/mediationsdk/p;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/p;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c;->b()Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v2, Lcom/ironsource/mediationsdk/p$a$a;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/mediationsdk/p$a$a;-><init>(Lcom/ironsource/mediationsdk/p$a;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)Lcom/ironsource/Ff$a;

    return-void
.end method

###### Class com.ironsource.mediationsdk.p.a.C1051a (com.ironsource.mediationsdk.p$a$a)
.class Lcom/ironsource/mediationsdk/p$a$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/p$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/ironsource/mediationsdk/p$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/p$a;Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p$a$a;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 1
    new-instance v0, Lcom/ironsource/Of;

    invoke-direct {v0}, Lcom/ironsource/Of;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    move-object v2, v1

    iget-object v1, v2, Lcom/ironsource/mediationsdk/p$a;->b:Landroid/content/Context;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/p;)Lcom/ironsource/Ue;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/p;)Lcom/ironsource/Ue;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/ironsource/S3;->g()Lcom/ironsource/ag;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Lcom/ironsource/ag;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p$a$a;->b:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v7, v7, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetJ(Lcom/ironsource/mediationsdk/p;)Z

    move-result v7

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/ironsource/Of;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fputV(Lcom/ironsource/mediationsdk/p;Z)V

    .line 23
    sget-object v0, Lcom/ironsource/Nf;->a:Lcom/ironsource/Nf;

    invoke-virtual {v0}, Lcom/ironsource/Nf;->c()V

    return-void
.end method

###### Class com.ironsource.mediationsdk.p.b (com.ironsource.mediationsdk.p$b)
.class synthetic Lcom/ironsource/mediationsdk/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/q$d;->values()[Lcom/ironsource/mediationsdk/q$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/p$b;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/ironsource/mediationsdk/q$d;->a:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/ironsource/mediationsdk/p$b;->b:[I

    sget-object v3, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/ironsource/mediationsdk/p$b;->b:[I

    sget-object v4, Lcom/ironsource/mediationsdk/q$d;->b:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/ironsource/mediationsdk/p$b;->b:[I

    sget-object v5, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 2
    :catch_33
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/ironsource/mediationsdk/p$b;->a:[I

    :try_start_3c
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v0, Lcom/ironsource/mediationsdk/p$b;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    return-void
.end method

###### Class com.ironsource.mediationsdk.p.c (com.ironsource.mediationsdk.p$c)
.class public interface abstract Lcom/ironsource/mediationsdk/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

###### Class com.ironsource.mediationsdk.p.d (com.ironsource.mediationsdk.p$d)
.class Lcom/ironsource/mediationsdk/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/mediationsdk/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/p;-><init>(Lcom/ironsource/mediationsdk/p-IA;)V

    sput-object v0, Lcom/ironsource/mediationsdk/p$d;->a:Lcom/ironsource/mediationsdk/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
