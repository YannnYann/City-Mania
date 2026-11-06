###### Class io.bidmachine.analytics.internal.H.b (io.bidmachine.analytics.internal.H.b)
.class public final Lio/bidmachine/analytics/internal/H/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/H/a;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/H/b$a;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/H/b$a;-><init>(Lio/bidmachine/analytics/internal/H/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/H/b;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/H/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private final a()Lio/bidmachine/analytics/internal/F/a;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/F/a;

    return-object v0
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .registers 7

    .line 5
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/b;->a()Lio/bidmachine/analytics/internal/F/a;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/bidmachine/analytics/internal/g/c;)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/b;->a()Lio/bidmachine/analytics/internal/F/a;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/analytics/internal/G/b;->b(Lio/bidmachine/analytics/internal/g/c;)Lio/bidmachine/analytics/internal/G/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/a;->a(Lio/bidmachine/analytics/internal/G/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 4
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/b;->a()Lio/bidmachine/analytics/internal/F/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.H.b.a (io.bidmachine.analytics.internal.H.b$a)
.class final Lio/bidmachine/analytics/internal/H/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/H/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/H/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/H/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/b$a;->a:Lio/bidmachine/analytics/internal/H/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/F/a;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/F/a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/H/b$a;->a:Lio/bidmachine/analytics/internal/H/b;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/H/b;->a(Lio/bidmachine/analytics/internal/H/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/F/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/H/b$a;->a()Lio/bidmachine/analytics/internal/F/a;

    move-result-object v0

    return-object v0
.end method
