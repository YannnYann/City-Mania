###### Class io.bidmachine.analytics.internal.h.C4125e (io.bidmachine.analytics.internal.h.e)
.class public final Lio/bidmachine/analytics/internal/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/h/e$a;,
        Lio/bidmachine/analytics/internal/h/e$b;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/h/e;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Lio/bidmachine/analytics/internal/a/e;

.field private static e:Ljava/util/Map;

.field private static f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/h/e;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lio/bidmachine/analytics/internal/a/e;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/a/e;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->d:Lio/bidmachine/analytics/internal/a/e;

    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/h/e;->f:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lio/bidmachine/analytics/internal/a/e;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->d:Lio/bidmachine/analytics/internal/a/e;

    return-object v0
.end method

.method private final a(Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;)Lio/bidmachine/analytics/internal/i/a$a;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3943
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;

    if-eqz v1, :cond_18

    new-instance v1, Lio/bidmachine/analytics/internal/m/a$a;

    .line 3944
    check-cast p1, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;

    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->getIaaQuery()Ljava/lang/String;

    move-result-object v2

    .line 3945
    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->getRecordsTtl-UwyO8pc()J

    move-result-wide v3

    .line 3946
    invoke-direct {v1, v2, v3, v4, v0}, Lio/bidmachine/analytics/internal/m/a$a;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 3951
    :cond_18
    instance-of v1, p1, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;

    if-eqz v1, :cond_2f

    check-cast p1, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;

    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;->getConfig()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 3952
    sget-object v0, Lio/bidmachine/analytics/internal/i/b;->f:Lio/bidmachine/analytics/internal/i/b$a;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/i/b$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/i/b;

    move-result-object p1

    return-object p1

    :cond_2f
    return-object v0
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/h/d;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 3982
    instance-of v0, p2, Lio/bidmachine/analytics/internal/i/a;

    if-eqz v0, :cond_c

    .line 3985
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object p2

    .line 3986
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3992
    :cond_c
    instance-of p3, p2, Lio/bidmachine/analytics/internal/r/a;

    if-eqz p3, :cond_17

    .line 3993
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 16

    .line 3994
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 3995
    new-instance v1, Lio/bidmachine/analytics/internal/g/d;

    .line 3998
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v5

    .line 3999
    new-instance v8, Lio/bidmachine/analytics/internal/g/h;

    .line 4001
    sget-object p1, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    .line 4002
    invoke-static {p4}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    .line 4003
    invoke-direct {v8, p2, p1, p4}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    .line 4004
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/analytics/internal/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4005
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/g/d;)V

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 16

    .line 4006
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 4007
    new-instance v1, Lio/bidmachine/analytics/internal/g/e;

    .line 4009
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v4

    .line 4011
    new-instance v7, Lio/bidmachine/analytics/internal/g/e$a$a;

    const-string p1, ""

    invoke-direct {v7, p1, p1}, Lio/bidmachine/analytics/internal/g/e$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    new-instance v8, Lio/bidmachine/analytics/internal/g/h;

    .line 4014
    sget-object p1, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    .line 4015
    invoke-static {p3}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 4016
    invoke-direct {v8, p2, p1, p3}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    const/16 v10, 0x41

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 4017
    const-string v6, ""

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lio/bidmachine/analytics/internal/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;Lio/bidmachine/analytics/internal/g/h;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4018
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/g/e;)V

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .registers 11

    .line 3896
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/MonitorConfig;

    .line 3897
    invoke-virtual {v0}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3898
    :try_start_14
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3899
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/h/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    .line 3900
    instance-of v4, v2, Lio/bidmachine/analytics/internal/i/a;

    if-eqz v4, :cond_53

    .line 3901
    invoke-virtual {v0}, Lio/bidmachine/analytics/MonitorConfig;->getFilter()Lio/bidmachine/analytics/Filter;

    move-result-object v4

    if-eqz v4, :cond_37

    sget-object v5, Lio/bidmachine/analytics/internal/h/e;->d:Lio/bidmachine/analytics/internal/a/e;

    invoke-virtual {v5, v4}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter;)Z

    move-result v5

    if-eqz v5, :cond_37

    move-object v3, v4

    goto :goto_37

    :catchall_35
    move-exception v0

    goto :goto_5a

    :cond_37
    :goto_37
    if-nez v3, :cond_3c

    .line 3902
    invoke-virtual {v0}, Lio/bidmachine/analytics/MonitorConfig;->getFilter()Lio/bidmachine/analytics/Filter;

    .line 3905
    :cond_3c
    check-cast v2, Lio/bidmachine/analytics/internal/i/a;

    .line 3906
    new-instance v4, Lio/bidmachine/analytics/internal/i/a$b;

    .line 3908
    new-instance v5, Lio/bidmachine/analytics/internal/h/e$a;

    invoke-direct {v5, p1, v1, p2, v3}, Lio/bidmachine/analytics/internal/h/e$a;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/analytics/Filter;)V

    .line 3914
    invoke-virtual {v0}, Lio/bidmachine/analytics/MonitorConfig;->getConfigExtension()Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;)Lio/bidmachine/analytics/internal/i/a$a;

    move-result-object v0

    .line 3915
    invoke-direct {v4, p2, v5, v0}, Lio/bidmachine/analytics/internal/i/a$b;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/h/b;Lio/bidmachine/analytics/internal/i/a$a;)V

    .line 3916
    invoke-virtual {v2, v4}, Lio/bidmachine/analytics/internal/h/d;->a(Ljava/lang/Object;)V

    .line 3917
    :cond_53
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3918
    :cond_55
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_14 .. :try_end_59} :catchall_35

    goto :goto_64

    :goto_5a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3939
    :goto_64
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .line 3940
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3941
    :cond_70
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3942
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {v2, p1, v1, p2, v0}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7c
    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7

    .line 4019
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4020
    sget-object v1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/h/d;

    if-eqz v0, :cond_4

    .line 4021
    :try_start_1a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4022
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/h/d;->b(Landroid/content/Context;)V

    .line 4023
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4024
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    goto :goto_35

    :catchall_2a
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4026
    :goto_35
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4027
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {v2, p1, v0, p2, v1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/h/d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_41
    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Ljava/util/List;Ljava/util/Set;)V
    .registers 11

    .line 3953
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/ReaderConfig;

    .line 3954
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3955
    :try_start_14
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3956
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/h/d;

    if-eqz v2, :cond_41

    .line 3957
    instance-of v3, v2, Lio/bidmachine/analytics/internal/r/a;

    if-eqz v3, :cond_3e

    .line 3958
    check-cast v2, Lio/bidmachine/analytics/internal/r/a;

    .line 3959
    new-instance v3, Lio/bidmachine/analytics/internal/r/a$a;

    .line 3960
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getInterval()J

    move-result-wide v4

    .line 3961
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getRules()Ljava/util/List;

    move-result-object v0

    .line 3962
    new-instance v6, Lio/bidmachine/analytics/internal/h/e$b;

    invoke-direct {v6, p1, v1}, Lio/bidmachine/analytics/internal/h/e$b;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;)V

    .line 3963
    invoke-direct {v3, v4, v5, v0, v6}, Lio/bidmachine/analytics/internal/r/a$a;-><init>(JLjava/util/List;Lio/bidmachine/analytics/internal/h/c;)V

    .line 3964
    invoke-virtual {v2, v3}, Lio/bidmachine/analytics/internal/h/d;->a(Ljava/lang/Object;)V

    goto :goto_3e

    :catchall_3c
    move-exception v0

    goto :goto_47

    .line 3965
    :cond_3e
    :goto_3e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    .line 3966
    :goto_42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_3c

    goto :goto_51

    :goto_47
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3978
    :goto_51
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .line 3979
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3980
    :cond_5d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3981
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {v2, p1, v1, v0}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_69
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/h/e;Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/h/e;Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->f:Ljava/util/List;

    return-object v0
.end method

.method private final b(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7

    .line 8664
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8665
    sget-object v1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/h/d;

    if-eqz v0, :cond_4

    .line 8666
    :try_start_1a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8667
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/h/d;->c(Landroid/content/Context;)V

    .line 8668
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8669
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    goto :goto_35

    :catchall_2a
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8671
    :goto_35
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8672
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {v2, p1, v0, p2, v1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/h/d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_41
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 3891
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 3892
    const-class v1, Lio/bidmachine/analytics/internal/h/a;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->filterIsInstance(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 3893
    new-instance v1, Lio/bidmachine/analytics/internal/h/e$d;

    invoke-direct {v1, p1}, Lio/bidmachine/analytics/internal/h/e$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 3895
    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/analytics/internal/a/a;)Ljava/util/Map;
    .registers 2

    .line 4
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/analytics/internal/g/a;)Ljava/util/Map;
    .registers 12

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    sget-object v1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    .line 444
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_122

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/h/d;

    .line 446
    instance-of v4, v2, Lio/bidmachine/analytics/internal/m/a;

    if-nez v4, :cond_2c

    goto :goto_f

    .line 449
    :cond_2c
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 450
    check-cast v2, Lio/bidmachine/analytics/internal/m/a;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/m/a;->b()Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v5

    if-eqz v5, :cond_c6

    .line 451
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "imd"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/m/a$b;->c()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_59

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 868
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 869
    const-string v7, "wp"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_59
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/m/a$b;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 1286
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_66

    goto :goto_6b

    .line 1287
    :cond_66
    const-string v7, "agency"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :goto_6b
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1707
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_78
    :goto_78
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v9, :cond_78

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 1717
    :cond_8a
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/m/a$b;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c6

    .line 2148
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_97

    goto :goto_a7

    .line 2149
    :cond_97
    const-string v7, "imcurl"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/m/a$b;->i()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 2151
    const-string v5, "clcurl"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    :cond_a7
    :goto_a7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 2583
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b4
    :goto_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v8, :cond_b4

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 2593
    :cond_c6
    invoke-virtual {v2, p1}, Lio/bidmachine/analytics/internal/m/a;->a(Lio/bidmachine/analytics/internal/g/a;)Lio/bidmachine/analytics/internal/m/a$b;

    move-result-object v2

    if-eqz v2, :cond_11d

    .line 2594
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/m/a$b;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "imimd"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/m/a$b;->c()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_ec

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 3000
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3001
    const-string v6, "imwp"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    :cond_ec
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/m/a$b;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11d

    .line 3439
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f9

    goto :goto_fe

    .line 3440
    :cond_f9
    const-string v5, "imagency"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    :goto_fe
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 3880
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3889
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10b
    :goto_10b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v7, :cond_10b

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 3890
    :cond_11d
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_122
    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .registers 6

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/Set;)V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-direct {p0, p1, v1, v2, v0}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 18
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Ljava/util/List;Ljava/util/Set;)V

    .line 20
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/analytics/internal/h/e;->b(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final b(Lio/bidmachine/analytics/internal/a/a;)Ljava/util/Map;
    .registers 16

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 367
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 368
    new-instance v0, Lio/bidmachine/analytics/internal/p/a;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/p/a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    .line 734
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 735
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 737
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    goto :goto_30

    :catchall_25
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 743
    :goto_30
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 744
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lio/bidmachine/analytics/internal/h/f;

    const-string v5, "mimp"

    invoke-direct {v4, p1, v5, v0}, Lio/bidmachine/analytics/internal/h/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1124
    :try_start_46
    new-instance v0, Lio/bidmachine/analytics/internal/o/a;

    invoke-direct {v0, p1, v4, v3, v4}, Lio/bidmachine/analytics/internal/o/a;-><init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1505
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 1506
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1508
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_60

    goto :goto_6b

    :catchall_60
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1514
    :goto_6b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1515
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lio/bidmachine/analytics/internal/h/f;

    const-string v7, "isimp"

    invoke-direct {v6, p1, v7, v0}, Lio/bidmachine/analytics/internal/h/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    :cond_7f
    :try_start_7f
    new-instance v8, Lio/bidmachine/analytics/internal/n/a;
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_a1

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p1

    :try_start_86
    invoke-direct/range {v8 .. v13}, Lio/bidmachine/analytics/internal/n/a;-><init>(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/n/a$j;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2306
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v8, p1}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 2307
    invoke-virtual {v8}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2309
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_9e

    goto :goto_ae

    :catchall_9e
    move-exception v0

    :goto_9f
    move-object p1, v0

    goto :goto_a4

    :catchall_a1
    move-exception v0

    move-object v9, p1

    goto :goto_9f

    :goto_a4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2315
    :goto_ae
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c2

    .line 2316
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v5, Lio/bidmachine/analytics/internal/h/f;

    const-string v6, "bic"

    invoke-direct {v5, v9, v6, p1}, Lio/bidmachine/analytics/internal/h/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2726
    :cond_c2
    :try_start_c2
    new-instance p1, Lio/bidmachine/analytics/internal/k/a;

    invoke-direct {p1, v9}, Lio/bidmachine/analytics/internal/k/a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    .line 3137
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 3138
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3140
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_db
    .catchall {:try_start_c2 .. :try_end_db} :catchall_dc

    goto :goto_e8

    :catchall_dc
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3146
    :goto_e8
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_fc

    .line 3147
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v5, Lio/bidmachine/analytics/internal/h/f;

    const-string v6, "mia"

    invoke-direct {v5, v9, v6, p1}, Lio/bidmachine/analytics/internal/h/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3572
    :cond_fc
    :try_start_fc
    new-instance p1, Lio/bidmachine/analytics/internal/l/a;

    invoke-direct {p1, v9}, Lio/bidmachine/analytics/internal/l/a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    .line 3998
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 3999
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4001
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_116

    goto :goto_122

    :catchall_116
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4007
    :goto_122
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_136

    .line 4008
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v5, Lio/bidmachine/analytics/internal/h/f;

    const-string v6, "mip"

    invoke-direct {v5, v9, v6, p1}, Lio/bidmachine/analytics/internal/h/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4448
    :cond_136
    :try_start_136
    new-instance p1, Lio/bidmachine/analytics/internal/y/a;

    new-instance v0, Lio/bidmachine/analytics/internal/h/e$c;

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/h/e$c;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/internal/y/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4889
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 4890
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4891
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4892
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_154
    .catchall {:try_start_136 .. :try_end_154} :catchall_155

    goto :goto_161

    :catchall_155
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4898
    :goto_161
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_175

    .line 4899
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/bidmachine/analytics/internal/h/g;

    const-string v5, "aints"

    invoke-direct {v1, v9, v5, p1}, Lio/bidmachine/analytics/internal/h/g;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5349
    :cond_175
    :try_start_175
    new-instance p1, Lio/bidmachine/analytics/internal/x/a;

    invoke-direct {p1}, Lio/bidmachine/analytics/internal/x/a;-><init>()V

    .line 5800
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 5801
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5802
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5803
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18e
    .catchall {:try_start_175 .. :try_end_18e} :catchall_18f

    goto :goto_19b

    :catchall_18f
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5809
    :goto_19b
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1af

    .line 5810
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/bidmachine/analytics/internal/h/g;

    const-string v5, "aexs"

    invoke-direct {v1, v9, v5, p1}, Lio/bidmachine/analytics/internal/h/g;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6270
    :cond_1af
    :try_start_1af
    new-instance p1, Lio/bidmachine/analytics/internal/t/c;

    invoke-direct {p1, v9, v4, v3, v4}, Lio/bidmachine/analytics/internal/t/c;-><init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6731
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 6732
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6733
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6734
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c8
    .catchall {:try_start_1af .. :try_end_1c8} :catchall_1c9

    goto :goto_1d5

    :catchall_1c9
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6740
    :goto_1d5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1e9

    .line 6741
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/bidmachine/analytics/internal/h/g;

    const-string v5, "alog"

    invoke-direct {v1, v9, v5, p1}, Lio/bidmachine/analytics/internal/h/g;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7211
    :cond_1e9
    :try_start_1e9
    new-instance p1, Lio/bidmachine/analytics/internal/u/f;

    invoke-direct {p1, v9, v4, v3, v4}, Lio/bidmachine/analytics/internal/u/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7682
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 7683
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7684
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7685
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_202
    .catchall {:try_start_1e9 .. :try_end_202} :catchall_203

    goto :goto_20f

    :catchall_203
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7691
    :goto_20f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_223

    .line 7692
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/bidmachine/analytics/internal/h/g;

    const-string v3, "apur"

    invoke-direct {v1, v9, v3, p1}, Lio/bidmachine/analytics/internal/h/g;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8172
    :cond_223
    :try_start_223
    new-instance p1, Lio/bidmachine/analytics/internal/s/a;

    invoke-direct {p1, v9}, Lio/bidmachine/analytics/internal/s/a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    .line 8653
    invoke-virtual {v9}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/h/d;->a(Landroid/content/Context;)V

    .line 8654
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8655
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8656
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_23c
    .catchall {:try_start_223 .. :try_end_23c} :catchall_23d

    goto :goto_249

    :catchall_23d
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8662
    :goto_249
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_25d

    .line 8663
    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/bidmachine/analytics/internal/h/g;

    const-string v3, "aapp"

    invoke-direct {v1, v9, v3, p1}, Lio/bidmachine/analytics/internal/h/g;-><init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25d
    return-object v2
.end method

.method public final c(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 6
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_15
    return-void

    .line 10
    :cond_16
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    return-void
.end method

.method public final d(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 6
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_15
    return-void

    .line 10
    :cond_16
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/e;->b(Lio/bidmachine/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lio/bidmachine/analytics/internal/h/e;->e:Ljava/util/Map;

    .line 11
    sget-object p1, Lio/bidmachine/analytics/internal/h/e;->f:Ljava/util/List;

    .line 395
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 396
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_28

    .line 397
    :cond_38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lio/bidmachine/analytics/internal/h/e;->f:Ljava/util/List;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.h.C4125e.a (io.bidmachine.analytics.internal.h.e$a)
.class final Lio/bidmachine/analytics/internal/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/a/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lio/bidmachine/analytics/Filter;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/analytics/Filter;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/e$a;->a:Lio/bidmachine/analytics/internal/a/a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/h/e$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/h/e$a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/internal/h/e$a;->d:Lio/bidmachine/analytics/Filter;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/g/h;)V
    .registers 13

    .line 12
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 13
    new-instance v1, Lio/bidmachine/analytics/internal/g/d;

    .line 14
    iget-object v3, p0, Lio/bidmachine/analytics/internal/h/e$a;->b:Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lio/bidmachine/analytics/internal/h/e$a;->c:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lio/bidmachine/analytics/internal/h/e$a;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object v2

    invoke-interface {v2}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v5

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    .line 17
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/analytics/internal/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/g/d;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/e$a;->d:Lio/bidmachine/analytics/Filter;

    if-eqz v0, :cond_f

    invoke-static {}, Lio/bidmachine/analytics/internal/h/e;->a()Lio/bidmachine/analytics/internal/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lio/bidmachine/analytics/internal/a/e;->a(Lio/bidmachine/analytics/Filter;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5
    :cond_f
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 6
    new-instance v1, Lio/bidmachine/analytics/internal/g/d;

    .line 7
    iget-object v3, p0, Lio/bidmachine/analytics/internal/h/e$a;->b:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lio/bidmachine/analytics/internal/h/e$a;->c:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lio/bidmachine/analytics/internal/h/e$a;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object v2

    invoke-interface {v2}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v5

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .line 10
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/analytics/internal/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/g/d;)V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.h.C4125e.b (io.bidmachine.analytics.internal.h.e$b)
.class final Lio/bidmachine/analytics/internal/h/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/a/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/e$b;->a:Lio/bidmachine/analytics/internal/a/a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/h/e$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lio/bidmachine/analytics/internal/h/c$a;

    .line 4
    new-instance v2, Lio/bidmachine/analytics/internal/g/e;

    .line 5
    iget-object v4, p0, Lio/bidmachine/analytics/internal/h/e$b;->b:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lio/bidmachine/analytics/internal/h/e$b;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object v3

    invoke-interface {v3}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v5

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/h/c$a;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const-string v3, ""

    :cond_31
    move-object v7, v3

    .line 8
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/h/c$a;->c()Lio/bidmachine/analytics/ReaderConfig$Rule;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/analytics/internal/g/f;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v8

    .line 9
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/h/c$a;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v9

    const/16 v11, 0x41

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 10
    invoke-direct/range {v2 .. v12}, Lio/bidmachine/analytics/internal/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;Lio/bidmachine/analytics/internal/g/h;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 26
    :cond_4a
    sget-object p1, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/e$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/bidmachine/analytics/internal/z/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.h.C4125e.c (io.bidmachine.analytics.internal.h.e$c)
.class final Lio/bidmachine/analytics/internal/h/e$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/h/e;->b(Lio/bidmachine/analytics/internal/a/a;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/e$c;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/e$c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/h/e$c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.h.C4125e.d (io.bidmachine.analytics.internal.h.e$d)
.class final Lio/bidmachine/analytics/internal/h/e$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/h/e;->a(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/e$d;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/internal/h/a;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/e$d;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/bidmachine/analytics/internal/h/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/h/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/e$d;->a(Lio/bidmachine/analytics/internal/h/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
