###### Class com.ironsource.J3 (com.ironsource.J3)
.class public final Lcom/ironsource/J3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t7;
.implements Lcom/ironsource/t7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/J3$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/ed;

.field private final b:Lcom/ironsource/wf;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/J3;-><init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;)V
    .registers 5

    const-string v0, "currentTimeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacingDataRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showCountDataRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/ironsource/ed;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/ed;-><init>(Lcom/ironsource/t4;Lcom/ironsource/N7;)V

    iput-object v0, p0, Lcom/ironsource/J3;->a:Lcom/ironsource/ed;

    .line 21
    new-instance p2, Lcom/ironsource/wf;

    invoke-direct {p2, p1, p3}, Lcom/ironsource/wf;-><init>(Lcom/ironsource/t4;Lcom/ironsource/U8;)V

    iput-object p2, p0, Lcom/ironsource/J3;->b:Lcom/ironsource/wf;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_9

    .line 22
    new-instance p1, Lcom/ironsource/t4$a;

    invoke-direct {p1}, Lcom/ironsource/t4$a;-><init>()V

    :cond_9
    and-int/lit8 p5, p4, 0x2

    const-string v0, "getApplicationContext(...)"

    if-eqz p5, :cond_29

    .line 24
    new-instance p2, Lcom/ironsource/fd;

    .line 26
    new-instance v1, Lcom/ironsource/qf;

    .line 27
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 28
    const-string v3, "pacing_service"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/qf;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/O8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    invoke-direct {p2, v1}, Lcom/ironsource/fd;-><init>(Lcom/ironsource/G3;)V

    :cond_29
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_47

    .line 35
    new-instance p3, Lcom/ironsource/uf;

    .line 37
    new-instance v1, Lcom/ironsource/qf;

    .line 38
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 39
    const-string v3, "capping_service"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/qf;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/O8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    invoke-direct {p3, v1}, Lcom/ironsource/uf;-><init>(Lcom/ironsource/G3;)V

    .line 41
    :cond_47
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/J3;-><init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/ironsource/L3;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/J3;->a:Lcom/ironsource/ed;

    invoke-virtual {v0, p1}, Lcom/ironsource/ed;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/L3;->d()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1c

    if-eqz v1, :cond_14

    monitor-exit p0

    return-object v0

    .line 6
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/ironsource/J3;->b:Lcom/ironsource/wf;

    invoke-virtual {v0, p1}, Lcom/ironsource/wf;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/ironsource/J3$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2c

    .line 10
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3f

    :catchall_2a
    move-exception p1

    goto :goto_41

    .line 11
    :cond_2c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 13
    :cond_32
    iget-object v0, p0, Lcom/ironsource/J3;->b:Lcom/ironsource/wf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/wf;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3f

    .line 14
    :cond_39
    iget-object v0, p0, Lcom/ironsource/J3;->a:Lcom/ironsource/ed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/ed;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_2a

    :goto_3f
    monitor-exit p0

    return-object p1

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2a

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/J3;->a:Lcom/ironsource/ed;

    invoke-virtual {v0, p1}, Lcom/ironsource/ed;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/J3;->b:Lcom/ironsource/wf;

    invoke-virtual {v0, p1}, Lcom/ironsource/wf;->b(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

###### Class com.ironsource.J3.a (com.ironsource.J3$a)
.class public final synthetic Lcom/ironsource/J3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/J3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/N3;->values()[Lcom/ironsource/N3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/N3;->a:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/N3;->c:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/ironsource/J3$a;->a:[I

    return-void
.end method
