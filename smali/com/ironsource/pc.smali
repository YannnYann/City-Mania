###### Class com.ironsource.C3786pc (com.ironsource.pc)
.class public final Lcom/ironsource/pc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/pc$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/ironsource/pc$a;

.field private static volatile f:Lcom/ironsource/pc;


# instance fields
.field private a:Lcom/ironsource/Nd;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/S3;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/pc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/pc$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/pc;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/ironsource/pc;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/pc;->f:Lcom/ironsource/pc;

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/pc;)V
    .registers 1

    .line 2
    sput-object p0, Lcom/ironsource/pc;->f:Lcom/ironsource/pc;

    return-void
.end method

.method public static final d()Lcom/ironsource/pc;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    invoke-virtual {v0}, Lcom/ironsource/pc$a;->a()Lcom/ironsource/pc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ironsource/Nd;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/ironsource/pc;->a:Lcom/ironsource/Nd;

    return-void
.end method

.method public final a(Lcom/ironsource/S3;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/ironsource/pc;->d:Lcom/ironsource/S3;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/ironsource/S3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->d:Lcom/ironsource/S3;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final e()Lcom/ironsource/Nd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->a:Lcom/ironsource/Nd;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/pc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.ironsource.C3786pc.a (com.ironsource.pc$a)
.class public final Lcom/ironsource/pc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkConfigurationsHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkConfigurationsHolder.kt\ncom/unity3d/ironsourceads/internal/configurations/NetworkConfigurationsHolder$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/pc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/e1;
    .registers 5

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ironsource/pc;->a()Lcom/ironsource/pc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/pc;->b()Lcom/ironsource/S3;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v1

    .line 6
    :goto_12
    invoke-static {}, Lcom/ironsource/pc;->a()Lcom/ironsource/pc;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/ironsource/pc;->e()Lcom/ironsource/Nd;

    move-result-object v1

    :cond_1c
    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    .line 9
    new-instance v2, Lcom/ironsource/q3;

    invoke-direct {v2, v0, v1, p1}, Lcom/ironsource/q3;-><init>(Lcom/ironsource/S3;Lcom/ironsource/Nd;Lcom/ironsource/mediationsdk/IronSource$a;)V

    return-object v2

    .line 12
    :cond_26
    new-instance p1, Lcom/ironsource/n5;

    invoke-direct {p1}, Lcom/ironsource/n5;-><init>()V

    return-object p1
.end method

.method public final a()Lcom/ironsource/pc;
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/pc;->a()Lcom/ironsource/pc;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 2
    monitor-enter p0

    .line 3
    :try_start_7
    invoke-static {}, Lcom/ironsource/pc;->a()Lcom/ironsource/pc;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/ironsource/pc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/pc;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/ironsource/pc;->a(Lcom/ironsource/pc;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_1b

    .line 4
    :cond_19
    :goto_19
    monitor-exit p0

    return-object v0

    :goto_1b
    monitor-exit p0

    throw v0

    :cond_1d
    return-object v0
.end method
