###### Class com.ironsource.C3619ga (com.ironsource.ga)
.class public final Lcom/ironsource/ga;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/ga;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/ga;

    invoke-direct {v0}, Lcom/ironsource/ga;-><init>()V

    sput-object v0, Lcom/ironsource/ga;->a:Lcom/ironsource/ga;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 0
    if-nez p0, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static final a(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v2, v0, v1, v2}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5

    .line 2
    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .registers 4

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    if-eq p2, v0, :cond_1a

    if-nez p2, :cond_14

    .line 5
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 7
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_6

    .line 3
    const-string p1, "reference is null"

    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    const/4 p2, 0x0

    .line 4
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/ironsource/ga;->a(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
