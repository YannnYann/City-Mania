###### Class com.ironsource.Q3 (com.ironsource.Q3)
.class public Lcom/ironsource/Q3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Q3$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/Q3$a;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/Q3$a;->a:Lcom/ironsource/Q3$a;

    iput-object v0, p0, Lcom/ironsource/Q3;->a:Lcom/ironsource/Q3$a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Q3;->b:Ljava/util/ArrayList;

    .line 7
    iput-object p1, p0, Lcom/ironsource/Q3;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Q3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 11
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Runnable;

    .line 12
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    .line 13
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_18
    move-exception v0

    goto :goto_21

    .line 16
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/Q3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_18

    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_18

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Q3;->a:Lcom/ironsource/Q3$a;

    sget-object v1, Lcom/ironsource/Q3$a;->b:Lcom/ironsource/Q3$a;

    if-eq v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lcom/ironsource/Q3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_15

    .line 7
    :cond_10
    :try_start_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_e

    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_e

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/Q3$a;->a:Lcom/ironsource/Q3$a;

    iput-object v0, p0, Lcom/ironsource/Q3;->a:Lcom/ironsource/Q3$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/Q3$a;->b:Lcom/ironsource/Q3$a;

    iput-object v0, p0, Lcom/ironsource/Q3;->a:Lcom/ironsource/Q3$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

###### Class com.ironsource.Q3.a (com.ironsource.Q3$a)
.class final enum Lcom/ironsource/Q3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Q3$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/Q3$a;

.field public static final enum b:Lcom/ironsource/Q3$a;

.field private static final synthetic c:[Lcom/ironsource/Q3$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/Q3$a;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Q3$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/Q3$a;->a:Lcom/ironsource/Q3$a;

    .line 2
    new-instance v0, Lcom/ironsource/Q3$a;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Q3$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/Q3$a;->b:Lcom/ironsource/Q3$a;

    .line 3
    invoke-static {}, Lcom/ironsource/Q3$a;->a()[Lcom/ironsource/Q3$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Q3$a;->c:[Lcom/ironsource/Q3$a;

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

.method private static synthetic a()[Lcom/ironsource/Q3$a;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/Q3$a;->a:Lcom/ironsource/Q3$a;

    sget-object v1, Lcom/ironsource/Q3$a;->b:Lcom/ironsource/Q3$a;

    filled-new-array {v0, v1}, [Lcom/ironsource/Q3$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Q3$a;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/Q3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/Q3$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Q3$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/Q3$a;->c:[Lcom/ironsource/Q3$a;

    invoke-virtual {v0}, [Lcom/ironsource/Q3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/Q3$a;

    return-object v0
.end method
