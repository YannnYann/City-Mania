###### Class com.ironsource.S6 (com.ironsource.S6)
.class public Lcom/ironsource/S6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/S6$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/B7;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/S6;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/S6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$me(Lcom/ironsource/S6;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/S6;->e(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/S6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/S6;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/S6-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/S6;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/ironsource/S6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 52
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ironsource/S6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/S6$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/S6$a;-><init>(Lcom/ironsource/S6;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 67
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 68
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/ironsource/S6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_2c

    if-nez p2, :cond_5

    goto :goto_2c

    .line 38
    :cond_5
    :try_start_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 39
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_16

    :catch_14
    move-exception p1

    goto :goto_1c

    .line 42
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_14

    return-void

    .line 44
    :goto_1c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 45
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 46
    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public static b()Lcom/ironsource/S6;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/S6$b;->a:Lcom/ironsource/S6;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_c

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/ironsource/S6;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "make"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lnchr"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 13
    const-string v1, "adqv"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_53
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 19
    const-string v1, "[^0-9/.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "osv"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string v1, "osvf"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_6d
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apilvl"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 29
    const-string v1, "carrier"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_8d
    invoke-static {p1}, Lcom/ironsource/M1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 34
    const-string v1, "instlr"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_9c
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 39
    const-string v1, "dt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_ad
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->r(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mem"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v0, "tkv"

    const-string v1, "2.0"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lcom/ironsource/M1;->f(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tsu"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/ironsource/M1;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tai"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {p1}, Lcom/ironsource/M1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apv"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lcom/ironsource/X3;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ptype"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-static {p1}, Lcom/ironsource/X3;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "simop"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v0, "platform"

    const-string v1, "android"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osArch"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->o(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->a(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "mThreshold"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    sget-object p1, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {p1}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlinVersion"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/ironsource/S6;->a()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_41

    .line 1
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4
    const-string v1, "gaid"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :catch_15
    move-exception p1

    goto :goto_31

    .line 8
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    const-string v0, "lat"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_15

    return-void

    .line 16
    :goto_31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 17
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/S6;->a(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "asid"

    if-nez v1, :cond_18

    .line 6
    invoke-direct {p0, v2, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    .line 8
    :cond_18
    invoke-direct {p0, v2}, Lcom/ironsource/S6;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9
    invoke-virtual {p0, v2}, Lcom/ironsource/S6;->b(Ljava/lang/String;)V

    .line 13
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "idfi"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_45
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lcntry"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->d()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 26
    const-string v1, "tz"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_61
    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 32
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 33
    const-string v1, "connt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_78
    invoke-static {p1}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 39
    const-string v1, "conntr"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_87
    invoke-static {p1}, Lcom/ironsource/Y3;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vpn"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 50
    const-string v1, "icc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_a5
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->t(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_b6

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tca"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_b6
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcs"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcac"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->F(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "vol"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    .line 64
    invoke-interface {v0}, Lcom/ironsource/B7;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "dfs"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scrnw"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scrnh"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ltime"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tzoff"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {p1}, Lcom/ironsource/X3;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mcc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/ironsource/X3;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mnc"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sdcrd"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->D(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "chrg"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->E(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chrgt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "apm"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "owp"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "rt"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->r()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sscl"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->l(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bat"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->J(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lpm"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "apor"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/ironsource/S6;->a:Lcom/ironsource/B7;

    invoke-interface {p1}, Lcom/ironsource/B7;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ua"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance p1, Lcom/ironsource/z;

    .line 86
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ironsource/z;-><init>(Lcom/ironsource/Q8;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-virtual {p1, v0}, Lcom/ironsource/z;->a(Ljava/util/Map;)V

    .line 89
    const-string p1, "impctr"

    invoke-direct {p0, p1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "plugin"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "plv"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "plfv"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/ironsource/f1;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 72
    sget-object v1, Lcom/ironsource/sg;->a:Lcom/ironsource/sg;

    invoke-virtual {v1}, Lcom/ironsource/sg;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v3, "UnityAds"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_23

    .line 76
    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    :cond_23
    const-string v4, "sdk"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 82
    const-string v1, "networks"

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/S6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    if-nez p2, :cond_3

    goto :goto_3a

    .line 10
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_13

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_11
    move-exception p1

    goto :goto_2a

    .line 15
    :cond_13
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    .line 16
    :goto_16
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 17
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 19
    :cond_26
    invoke-direct {p0, p1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_11

    return-void

    .line 21
    :goto_2a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 22
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_41

    .line 23
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_13

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_11
    move-exception p1

    goto :goto_31

    .line 28
    :cond_13
    check-cast v0, Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_19

    .line 34
    :cond_2d
    invoke-direct {p0, p1, v0}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_11

    return-void

    .line 36
    :goto_31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 37
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_36

    .line 1
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_b

    :catch_25
    move-exception p1

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/S6;->f(Landroid/content/Context;)V

    .line 8
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/ironsource/U6;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_1a

    .line 3
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/S6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/S6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/S6;->d(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/S6;->f(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.S6.a (com.ironsource.S6$a)
.class Lcom/ironsource/S6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/S6;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/S6;


# direct methods
.method public constructor <init>(Lcom/ironsource/S6;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/S6$a;->b:Lcom/ironsource/S6;

    iput-object p2, p0, Lcom/ironsource/S6$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/S6$a;->b:Lcom/ironsource/S6;

    iget-object v1, p0, Lcom/ironsource/S6$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/S6;->-$$Nest$me(Lcom/ironsource/S6;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_19

    :catch_8
    move-exception v0

    .line 3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 4
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 6
    :goto_19
    iget-object v0, p0, Lcom/ironsource/S6$a;->b:Lcom/ironsource/S6;

    invoke-static {v0}, Lcom/ironsource/S6;->-$$Nest$fgetc(Lcom/ironsource/S6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.ironsource.S6.b (com.ironsource.S6$b)
.class Lcom/ironsource/S6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/S6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/S6;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/S6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/S6;-><init>(Lcom/ironsource/S6-IA;)V

    sput-object v0, Lcom/ironsource/S6$b;->a:Lcom/ironsource/S6;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
