###### Class com.ironsource.C3920x1 (com.ironsource.x1)
.class public final Lcom/ironsource/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/n7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/x1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnrDetectionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnrDetectionService.kt\ncom/ironsource/services/anr/AnrDetectionService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n774#2:270\n865#2,2:271\n1056#2:273\n*S KotlinDebug\n*F\n+ 1 AnrDetectionService.kt\ncom/ironsource/services/anr/AnrDetectionService\n*L\n74#1:270\n74#1:271,2\n74#1:273\n*E\n"
.end annotation


# static fields
.field private static final k:Lcom/ironsource/x1$e;

.field public static final l:J = -0x1L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:J = 0x36ee80L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:J = 0x36ee80L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Ljava/lang/String; = "self"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:Ljava/lang/String; = "unknown"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/ironsource/D7;

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/C1;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/D1;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/z1;

.field private final e:Lcom/ironsource/F1;

.field private final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/ironsource/B1;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Runnable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$A8VL2ZN53X5cbxmSQHoo0h59o4k()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/x1;->a()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$JCHq-cTL7h_U7cmsPERT9Nmpe-4(Lcom/ironsource/x1;Lcom/ironsource/B1;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/x1;->a(Lcom/ironsource/x1;Lcom/ironsource/B1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2ry03zwbX5PYLImxhBNxWfOL4I(Ljava/lang/Runnable;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/x1;->a(Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/x1$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/x1$e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/x1;->k:Lcom/ironsource/x1$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/D7;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/C1;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/D1;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/ironsource/z1;",
            "Lcom/ironsource/F1;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/ironsource/B1;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Runnable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "epService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportAnr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportScan"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitInfoSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watermarkStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeMillis"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isExitInfoSupported"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processIdentity"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runInBackground"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/x1;->a:Lcom/ironsource/D7;

    .line 4
    iput-object p2, p0, Lcom/ironsource/x1;->b:Lkotlin/jvm/functions/Function1;

    .line 5
    iput-object p3, p0, Lcom/ironsource/x1;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object p4, p0, Lcom/ironsource/x1;->d:Lcom/ironsource/z1;

    .line 7
    iput-object p5, p0, Lcom/ironsource/x1;->e:Lcom/ironsource/F1;

    .line 8
    iput-object p6, p0, Lcom/ironsource/x1;->f:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-object p7, p0, Lcom/ironsource/x1;->g:Lkotlin/jvm/functions/Function0;

    .line 12
    iput-object p8, p0, Lcom/ironsource/x1;->h:Lkotlin/jvm/functions/Function0;

    .line 13
    iput-object p9, p0, Lcom/ironsource/x1;->i:Lkotlin/jvm/functions/Function1;

    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/x1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_e

    .line 19
    sget-object p1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object p1

    :cond_e
    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p11, :cond_1e

    .line 20
    new-instance p2, Lcom/ironsource/x1$a;

    new-instance p11, Lcom/ironsource/y1;

    invoke-direct {p11, v0, v1, v0}, Lcom/ironsource/y1;-><init>(Lcom/ironsource/G1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, p11}, Lcom/ironsource/x1$a;-><init>(Ljava/lang/Object;)V

    :cond_1e
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2c

    .line 21
    new-instance p3, Lcom/ironsource/x1$b;

    new-instance p11, Lcom/ironsource/y1;

    invoke-direct {p11, v0, v1, v0}, Lcom/ironsource/y1;-><init>(Lcom/ironsource/G1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p3, p11}, Lcom/ironsource/x1$b;-><init>(Ljava/lang/Object;)V

    :cond_2c
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_32

    .line 22
    sget-object p4, Lcom/ironsource/vd;->a:Lcom/ironsource/vd;

    :cond_32
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_38

    .line 23
    sget-object p5, Lcom/ironsource/rf;->a:Lcom/ironsource/rf;

    :cond_38
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_3e

    .line 24
    sget-object p6, Lcom/ironsource/x1$c;->a:Lcom/ironsource/x1$c;

    :cond_3e
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_47

    .line 25
    new-instance p7, Lcom/ironsource/x1$$ExternalSyntheticLambda0;

    invoke-direct {p7}, Lcom/ironsource/x1$$ExternalSyntheticLambda0;-><init>()V

    :cond_47
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_52

    .line 28
    new-instance p8, Lcom/ironsource/x1$d;

    sget-object p11, Lcom/ironsource/wd;->a:Lcom/ironsource/wd;

    invoke-direct {p8, p11}, Lcom/ironsource/x1$d;-><init>(Ljava/lang/Object;)V

    :cond_52
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_5b

    .line 29
    new-instance p9, Lcom/ironsource/x1$$ExternalSyntheticLambda1;

    invoke-direct {p9}, Lcom/ironsource/x1$$ExternalSyntheticLambda1;-><init>()V

    :cond_5b
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 30
    invoke-direct/range {p2 .. p11}, Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 498
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, "unknown"

    return-object p1

    .line 499
    :cond_9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const-string p1, "self"

    return-object p1

    :cond_12
    const/4 p2, 0x0

    const/16 v0, 0x3a

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 500
    invoke-static {p1, v0, p2, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-static {p1, v0, v2, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method private static final a(Ljava/lang/Runnable;)Lkotlin/Unit;
    .registers 8

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final a(Lcom/ironsource/x1;Lcom/ironsource/B1;)V
    .registers 2

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/B1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/x1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static final a()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final a(Lcom/ironsource/A1;JJ)Z
    .registers 8

    .line 497
    invoke-virtual {p1}, Lcom/ironsource/A1;->m()J

    move-result-wide v0

    sub-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-lez p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-string v1, "ownProcessName"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/ironsource/x1;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 6
    iget-object v1, v0, Lcom/ironsource/x1;->e:Lcom/ironsource/F1;

    invoke-interface {v1}, Lcom/ironsource/F1;->a()J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v1, v4, v7

    if-nez v1, :cond_2e

    .line 8
    iget-object v1, v0, Lcom/ironsource/x1;->e:Lcom/ironsource/F1;

    invoke-interface {v1, v2, v3}, Lcom/ironsource/F1;->a(J)V

    .line 9
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "anr reporter: watermark initialised, skipping backfill"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_2e
    const-wide/32 v7, 0x36ee80

    add-long v9, v2, v7

    cmp-long v1, v4, v9

    if-lez v1, :cond_60

    .line 13
    iget-object v1, v0, Lcom/ironsource/x1;->e:Lcom/ironsource/F1;

    invoke-interface {v1, v2, v3}, Lcom/ironsource/F1;->a(J)V

    .line 14
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anr reporter: watermark "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ahead of "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reset"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_60
    iget-object v1, v0, Lcom/ironsource/x1;->d:Lcom/ironsource/z1;

    invoke-interface {v1}, Lcom/ironsource/z1;->a()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6e

    goto/16 :goto_15f

    .line 217
    :cond_6e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_77
    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/ironsource/A1;

    .line 219
    invoke-virtual {v11}, Lcom/ironsource/A1;->m()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-lez v11, :cond_77

    .line 416
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 418
    :cond_90
    new-instance v1, Lcom/ironsource/x1$f;

    invoke-direct {v1}, Lcom/ironsource/x1$f;-><init>()V

    invoke-static {v9, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 419
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a1

    goto/16 :goto_15f

    .line 421
    :cond_a1
    iget-object v4, v0, Lcom/ironsource/x1;->e:Lcom/ironsource/F1;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/A1;

    invoke-virtual {v5}, Lcom/ironsource/A1;->m()J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, Lcom/ironsource/F1;->a(J)V

    .line 429
    iget-object v4, v0, Lcom/ironsource/x1;->a:Lcom/ironsource/D7;

    invoke-interface {v4}, Lcom/ironsource/u5;->q()I

    move-result v9

    .line 430
    iget-object v4, v0, Lcom/ironsource/x1;->a:Lcom/ironsource/D7;

    invoke-interface {v4}, Lcom/ironsource/u5;->g()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v7

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v1, 0x0

    move v8, v1

    move v11, v8

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_c9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/A1;

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/x1;->a(Lcom/ironsource/A1;JJ)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 433
    invoke-virtual {v1}, Lcom/ironsource/A1;->n()Z

    move-result v1

    if-eqz v1, :cond_e6

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_c9

    :cond_e6
    add-int/lit8 v15, v15, 0x1

    goto :goto_c9

    .line 444
    :cond_e9
    invoke-virtual {v1}, Lcom/ironsource/A1;->k()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/StackTraceElement;

    .line 445
    invoke-virtual {v1}, Lcom/ironsource/A1;->n()Z

    move-result v16

    if-nez v16, :cond_ff

    move-object/from16 v16, v1

    array-length v1, v10

    if-nez v1, :cond_101

    goto :goto_c9

    :cond_ff
    move-object/from16 v16, v1

    :cond_101
    add-int/lit8 v11, v11, 0x1

    .line 448
    array-length v1, v10

    if-nez v1, :cond_109

    add-int/lit8 v12, v12, 0x1

    goto :goto_c9

    .line 453
    :cond_109
    sget-object v1, Lcom/ironsource/ue;->a:Lcom/ironsource/ue;

    move-wide/from16 v32, v2

    invoke-virtual {v1, v10}, Lcom/ironsource/ue;->b([Ljava/lang/StackTraceElement;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_119

    add-int/lit8 v13, v13, 0x1

    :cond_116
    :goto_116
    move-wide/from16 v2, v32

    goto :goto_c9

    :cond_119
    if-ge v8, v9, :cond_116

    add-int/lit8 v31, v8, 0x1

    .line 461
    iget-object v3, v0, Lcom/ironsource/x1;->b:Lkotlin/jvm/functions/Function1;

    .line 462
    new-instance v17, Lcom/ironsource/C1;

    .line 463
    invoke-virtual {v1, v10, v2}, Lcom/ironsource/ue;->a([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v18

    .line 464
    invoke-virtual {v1, v10}, Lcom/ironsource/ue;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v19

    .line 465
    array-length v8, v10

    .line 467
    aget-object v10, v10, v2

    invoke-virtual {v1, v10}, Lcom/ironsource/ue;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v22

    .line 468
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->i()I

    move-result v23

    .line 469
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->m()J

    move-result-wide v24

    .line 470
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->m()J

    move-result-wide v20

    sub-long v26, v32, v20

    .line 471
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->h()Ljava/lang/String;

    move-result-object v28

    .line 472
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->l()I

    move-result v29

    .line 473
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/A1;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/ironsource/x1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move/from16 v21, v2

    move/from16 v20, v8

    .line 474
    invoke-direct/range {v17 .. v31}, Lcom/ironsource/C1;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IJJLjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v1, v17

    .line 475
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v31

    goto :goto_116

    :cond_15d
    if-nez v11, :cond_160

    :goto_15f
    return-void

    .line 494
    :cond_160
    iget-object v1, v0, Lcom/ironsource/x1;->c:Lkotlin/jvm/functions/Function1;

    .line 495
    new-instance v10, Lcom/ironsource/D1;

    move/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lcom/ironsource/D1;-><init>(IIIIII)V

    .line 496
    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/x1;->a:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->H()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4b

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/ironsource/x1;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4b

    .line 4
    :cond_18
    iget-object v0, p0, Lcom/ironsource/x1;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/B1;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/B1;->d()Z

    move-result v1

    if-nez v1, :cond_41

    .line 6
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/B1;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr reporter: skipping process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_41
    iget-object v1, p0, Lcom/ironsource/x1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_4c

    :goto_4b
    return-void

    .line 11
    :cond_4c
    iget-object v1, p0, Lcom/ironsource/x1;->i:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/ironsource/x1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/x1$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/x1;Lcom/ironsource/B1;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.ironsource.C3920x1.a (com.ironsource.x1$a)
.class final synthetic Lcom/ironsource/x1$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/ironsource/C1;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "report(Lcom/ironsource/services/anr/AnrReport;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/ironsource/y1;

    const-string v4, "report"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/C1;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/y1;

    invoke-virtual {v0, p1}, Lcom/ironsource/y1;->a(Lcom/ironsource/C1;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/C1;

    invoke-virtual {p0, p1}, Lcom/ironsource/x1$a;->a(Lcom/ironsource/C1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.ironsource.C3920x1.b (com.ironsource.x1$b)
.class final synthetic Lcom/ironsource/x1$b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/ironsource/D1;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "reportScan(Lcom/ironsource/services/anr/AnrScanSummary;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/ironsource/y1;

    const-string v4, "reportScan"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/D1;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/y1;

    invoke-virtual {v0, p1}, Lcom/ironsource/y1;->a(Lcom/ironsource/D1;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/D1;

    invoke-virtual {p0, p1}, Lcom/ironsource/x1$b;->a(Lcom/ironsource/D1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.ironsource.C3920x1.c (com.ironsource.x1$c)
.class final synthetic Lcom/ironsource/x1$c;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/x1$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/x1$c;

    invoke-direct {v0}, Lcom/ironsource/x1$c;-><init>()V

    sput-object v0, Lcom/ironsource/x1$c;->a:Lcom/ironsource/x1$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 1
    const-string v4, "currentTimeMillis()J"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/System;

    const-string v3, "currentTimeMillis"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/x1$c;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.C3920x1.d (com.ironsource.x1$d)
.class final synthetic Lcom/ironsource/x1$d;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;-><init>(Lcom/ironsource/D7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/ironsource/z1;Lcom/ironsource/F1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/ironsource/B1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "read()Lcom/ironsource/services/anr/AnrProcessIdentity;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/wd;

    const-string v4, "read"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/B1;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/wd;

    invoke-virtual {v0}, Lcom/ironsource/wd;->b()Lcom/ironsource/B1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/x1$d;->a()Lcom/ironsource/B1;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.C3920x1.e (com.ironsource.x1$e)
.class final Lcom/ironsource/x1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
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
    invoke-direct {p0}, Lcom/ironsource/x1$e;-><init>()V

    return-void
.end method

###### Class com.ironsource.C3920x1.f (com.ironsource.x1$f)
.class public final Lcom/ironsource/x1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 AnrDetectionService.kt\ncom/ironsource/services/anr/AnrDetectionService\n*L\n1#1,102:1\n74#2:103\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/ironsource/A1;

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/A1;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    check-cast p2, Lcom/ironsource/A1;

    .line 4
    invoke-virtual {p2}, Lcom/ironsource/A1;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class com.ironsource.x1$$ExternalSyntheticLambda0 (com.ironsource.x1$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/x1$$ExternalSyntheticLambda0;
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
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/x1;->$r8$lambda$A8VL2ZN53X5cbxmSQHoo0h59o4k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.x1$$ExternalSyntheticLambda1 (com.ironsource.x1$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/x1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/ironsource/x1;->$r8$lambda$Z2ry03zwbX5PYLImxhBNxWfOL4I(Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.x1$$ExternalSyntheticLambda2 (com.ironsource.x1$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/x1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/x1;

.field public final synthetic f$1:Lcom/ironsource/B1;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/x1;Lcom/ironsource/B1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/x1;

    iput-object p2, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/B1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/x1;

    iget-object v1, p0, Lcom/ironsource/x1$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/B1;

    invoke-static {v0, v1}, Lcom/ironsource/x1;->$r8$lambda$JCHq-cTL7h_U7cmsPERT9Nmpe-4(Lcom/ironsource/x1;Lcom/ironsource/B1;)V

    return-void
.end method
