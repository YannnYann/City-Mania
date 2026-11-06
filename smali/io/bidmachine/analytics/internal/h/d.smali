###### Class io.bidmachine.analytics.internal.h.AbstractC4124d (io.bidmachine.analytics.internal.h.d)
.class public abstract Lio/bidmachine/analytics/internal/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/h/d$a;,
        Lio/bidmachine/analytics/internal/h/d$b;
    }
.end annotation


# static fields
.field public static final c:Lio/bidmachine/analytics/internal/h/d$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lio/bidmachine/analytics/internal/h/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/h/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d;->c:Lio/bidmachine/analytics/internal/h/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->a:Ljava/lang/Object;

    .line 5
    sget-object v0, Lio/bidmachine/analytics/internal/h/d$b;->a:Lio/bidmachine/analytics/internal/h/d$b;

    iput-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->a:Lio/bidmachine/analytics/internal/h/d$b;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    if-eq v1, v2, :cond_b

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/d;->d(Landroid/content/Context;)V

    .line 6
    sget-object p1, Lio/bidmachine/analytics/internal/h/d$b;->b:Lio/bidmachine/analytics/internal/h/d$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_16

    .line 9
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    .line 10
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->b:Lio/bidmachine/analytics/internal/h/d$b;

    if-eq v1, v2, :cond_11

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    if-eq v1, v2, :cond_11

    .line 12
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_1c

    .line 14
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/d;->b(Ljava/lang/Object;)V

    .line 15
    sget-object p1, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_f

    .line 18
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0

    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->c:Lio/bidmachine/analytics/internal/h/d$b;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_28

    if-eq v1, v2, :cond_b

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_b
    :try_start_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/d;->e(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p1

    :try_start_17
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_20
    sget-object p1, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_28

    .line 9
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public final c(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_28

    if-eq v1, v2, :cond_b

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_b
    :try_start_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/h/d;->f(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p1

    :try_start_17
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_20
    sget-object p1, Lio/bidmachine/analytics/internal/h/d$b;->c:Lio/bidmachine/analytics/internal/h/d$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/d;->b:Lio/bidmachine/analytics/internal/h/d$b;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_28

    .line 9
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public abstract d(Landroid/content/Context;)V
.end method

.method public abstract e(Landroid/content/Context;)V
.end method

.method public abstract f(Landroid/content/Context;)V
.end method

###### Class io.bidmachine.analytics.internal.h.AbstractC4124d.a (io.bidmachine.analytics.internal.h.d$a)
.class public final Lio/bidmachine/analytics/internal/h/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/h/d$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.h.AbstractC4124d.b (io.bidmachine.analytics.internal.h.d$b)
.class public final enum Lio/bidmachine/analytics/internal/h/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/analytics/internal/h/d$b;

.field public static final enum b:Lio/bidmachine/analytics/internal/h/d$b;

.field public static final enum c:Lio/bidmachine/analytics/internal/h/d$b;

.field public static final enum d:Lio/bidmachine/analytics/internal/h/d$b;

.field public static final enum e:Lio/bidmachine/analytics/internal/h/d$b;

.field private static final synthetic f:[Lio/bidmachine/analytics/internal/h/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$b;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->a:Lio/bidmachine/analytics/internal/h/d$b;

    .line 5
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$b;

    const-string v1, "CREATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->b:Lio/bidmachine/analytics/internal/h/d$b;

    .line 9
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$b;

    const-string v1, "ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->c:Lio/bidmachine/analytics/internal/h/d$b;

    .line 13
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$b;

    const-string v1, "DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;

    .line 17
    new-instance v0, Lio/bidmachine/analytics/internal/h/d$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->e:Lio/bidmachine/analytics/internal/h/d$b;

    invoke-static {}, Lio/bidmachine/analytics/internal/h/d$b;->a()[Lio/bidmachine/analytics/internal/h/d$b;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/h/d$b;->f:[Lio/bidmachine/analytics/internal/h/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/h/d$b;
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/d$b;->a:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v1, Lio/bidmachine/analytics/internal/h/d$b;->b:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v2, Lio/bidmachine/analytics/internal/h/d$b;->c:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v3, Lio/bidmachine/analytics/internal/h/d$b;->d:Lio/bidmachine/analytics/internal/h/d$b;

    sget-object v4, Lio/bidmachine/analytics/internal/h/d$b;->e:Lio/bidmachine/analytics/internal/h/d$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/analytics/internal/h/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/h/d$b;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/h/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/internal/h/d$b;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/h/d$b;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/d$b;->f:[Lio/bidmachine/analytics/internal/h/d$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/internal/h/d$b;

    return-object v0
.end method
