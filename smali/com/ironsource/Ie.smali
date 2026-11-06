###### Class com.ironsource.Ie (com.ironsource.Ie)
.class public final Lcom/ironsource/Ie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/Ie;

.field private static b:Ljava/lang/Boolean;

.field private static c:Lcom/ironsource/He;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/Ie;

    invoke-direct {v0}, Lcom/ironsource/Ie;-><init>()V

    sput-object v0, Lcom/ironsource/Ie;->a:Lcom/ironsource/Ie;

    .line 1
    sget-object v0, Lcom/ironsource/He;->a:Lcom/ironsource/He;

    sput-object v0, Lcom/ironsource/Ie;->c:Lcom/ironsource/He;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/ironsource/He;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/Ie;->c:Lcom/ironsource/He;
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

.method public final declared-synchronized a(Lcom/ironsource/He;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/ironsource/Ie;->c:Lcom/ironsource/He;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final a(Z)V
    .registers 2

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/Ie;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public final b()Lcom/ironsource/He;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/Ie;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1e

    .line 4
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/ironsource/Ie;->c:Lcom/ironsource/He;

    return-object v0

    .line 5
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 7
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/ironsource/He;->a:Lcom/ironsource/He;

    return-object v0
.end method
