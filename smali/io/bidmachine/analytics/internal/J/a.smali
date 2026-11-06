###### Class io.bidmachine.analytics.internal.J.a (io.bidmachine.analytics.internal.J.a)
.class public final Lio/bidmachine/analytics/internal/J/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/J/b;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/J/a;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    .line 3
    const-string p2, "BidMachinePrefExt"

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 4
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/J/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/J/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    :catchall_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/J/a;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/J/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_d

    invoke-direct {p0, p2}, Lio/bidmachine/analytics/internal/J/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    invoke-static {v0, p1, p2}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->putStringOrRemove(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/J/a;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/J/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/J/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_15

    :cond_14
    return-object p1

    :cond_15
    :goto_15
    return-object p2
.end method
