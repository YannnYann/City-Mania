###### Class io.bidmachine.analytics.internal.G.b (io.bidmachine.analytics.internal.G.b)
.class public abstract Lio/bidmachine/analytics/internal/G/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/G/b$a;
    }
.end annotation


# direct methods
.method private static final a(Lio/bidmachine/analytics/internal/g/a;)I
    .registers 2

    .line 3
    sget-object v0, Lio/bidmachine/analytics/internal/G/b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-ne p0, v0, :cond_15

    return v0

    .line 7
    :cond_15
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1b
    return v0
.end method

.method private static final a(Lio/bidmachine/analytics/internal/g/g;)I
    .registers 2

    .line 8
    sget-object v0, Lio/bidmachine/analytics/internal/G/b$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    return v0

    .line 10
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_15
    return v0
.end method

.method private static final a(Lio/bidmachine/analytics/internal/g/c;)J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->d()F

    move-result v0

    const-wide v1, 0xe8d4a51000L

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(F)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->c()J

    move-result-wide v4

    const/16 p0, 0x3e8

    int-to-long v6, p0

    rem-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static final b(Lio/bidmachine/analytics/internal/g/c;)Lio/bidmachine/analytics/internal/G/a;
    .registers 9

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/G/a;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->c()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->a()Lio/bidmachine/analytics/internal/g/a;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/analytics/internal/G/b;->a(Lio/bidmachine/analytics/internal/g/a;)I

    move-result v4

    .line 6
    invoke-static {p0}, Lio/bidmachine/analytics/internal/G/b;->a(Lio/bidmachine/analytics/internal/g/c;)J

    move-result-wide v5

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/c;->e()Lio/bidmachine/analytics/internal/g/g;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/analytics/internal/G/b;->a(Lio/bidmachine/analytics/internal/g/g;)I

    move-result v7

    .line 8
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/analytics/internal/G/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.G.b.a (io.bidmachine.analytics.internal.G.b$a)
.class public abstract synthetic Lio/bidmachine/analytics/internal/G/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/G/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/g/a;->values()[Lio/bidmachine/analytics/internal/g/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/analytics/internal/g/a;->a:Lio/bidmachine/analytics/internal/g/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/analytics/internal/g/a;->b:Lio/bidmachine/analytics/internal/g/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v3, Lio/bidmachine/analytics/internal/g/a;->c:Lio/bidmachine/analytics/internal/g/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v3, Lio/bidmachine/analytics/internal/g/a;->d:Lio/bidmachine/analytics/internal/g/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v0, v3
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/analytics/internal/G/b$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/analytics/internal/g/g;->values()[Lio/bidmachine/analytics/internal/g/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_34
    sget-object v3, Lio/bidmachine/analytics/internal/g/g;->a:Lio/bidmachine/analytics/internal/g/g;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v1, Lio/bidmachine/analytics/internal/g/g;->b:Lio/bidmachine/analytics/internal/g/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    sput-object v0, Lio/bidmachine/analytics/internal/G/b$a;->$EnumSwitchMapping$1:[I

    return-void
.end method
