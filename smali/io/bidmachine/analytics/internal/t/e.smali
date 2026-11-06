###### Class io.bidmachine.analytics.internal.t.e (io.bidmachine.analytics.internal.t.e)
.class public final Lio/bidmachine/analytics/internal/t/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/t/e$a;
    }
.end annotation


# static fields
.field private static final d:Lio/bidmachine/analytics/internal/t/e$a;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/t/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/t/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/t/e;->d:Lio/bidmachine/analytics/internal/t/e$a;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/analytics/internal/t/e;->a:I

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/e;->b:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/high16 p1, 0x200000

    .line 8
    :cond_6
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/t/e;-><init>(I)V

    return-void
.end method

.method private final a()Lio/bidmachine/analytics/internal/t/g;
    .registers 4

    .line 222
    new-instance v0, Lio/bidmachine/analytics/internal/t/g;

    iget v1, p0, Lio/bidmachine/analytics/internal/t/e;->a:I

    div-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2, v1}, Lio/bidmachine/analytics/internal/t/g;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/e;->c:Ljava/lang/Object;

    .line 37
    monitor-enter v0

    const/4 v1, 0x0

    .line 38
    :try_start_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 40
    iget-object v3, p0, Lio/bidmachine/analytics/internal/t/e;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/t/g;

    if-eqz p1, :cond_19

    .line 41
    invoke-static {p1}, Lio/bidmachine/analytics/internal/t/h;->a(Lio/bidmachine/analytics/internal/t/g;)[B

    move-result-object p1

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_22

    :cond_19
    move-object p1, v1

    .line 42
    :goto_1a
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_17

    goto :goto_2c

    :goto_22
    :try_start_22
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_38

    .line 79
    :goto_2c
    monitor-exit v0

    .line 80
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move-object v1, p1

    :goto_35
    check-cast v1, Ljava/io/InputStream;

    return-object v1

    :catchall_38
    move-exception p1

    .line 110
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 111
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/e;->c:Ljava/lang/Object;

    .line 136
    monitor-enter v0

    .line 137
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 138
    iget-object v1, p0, Lio/bidmachine/analytics/internal/t/e;->b:Ljava/util/Map;

    .line 164
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    .line 165
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/t/e;->a()Lio/bidmachine/analytics/internal/t/g;

    move-result-object v2

    .line 194
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_22

    .line 195
    :cond_17
    :goto_17
    check-cast v2, Lio/bidmachine/analytics/internal/t/g;

    .line 196
    invoke-virtual {v2, p2}, Lio/bidmachine/analytics/internal/t/g;->a(Ljava/lang/String;)V

    .line 197
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 220
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_15

    goto :goto_2b

    :goto_22
    :try_start_22
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2d

    .line 221
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/e;->c:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    const/4 v1, 0x0

    .line 31
    :try_start_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 32
    iget-object v2, p0, Lio/bidmachine/analytics/internal/t/e;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/t/g;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/t/g;->a()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :catchall_1b
    move-exception p1

    goto :goto_23

    :cond_1d
    move-object p1, v1

    .line 61
    :goto_1e
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_1b

    goto :goto_2d

    :goto_23
    :try_start_23
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_39

    .line 62
    :goto_2d
    monitor-exit v0

    .line 63
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move-object v1, p1

    :goto_36
    check-cast v1, Ljava/lang/String;

    return-object v1

    :catchall_39
    move-exception p1

    .line 89
    monitor-exit v0

    throw p1
.end method

###### Class io.bidmachine.analytics.internal.t.e.a (io.bidmachine.analytics.internal.t.e$a)
.class final Lio/bidmachine/analytics/internal/t/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/t/e;
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
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/t/e$a;-><init>()V

    return-void
.end method
