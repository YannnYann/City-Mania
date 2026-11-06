###### Class ads_mobile_sdk.p (ads_mobile_sdk.p)
.class public final Lads_mobile_sdk/p;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Landroid/app/Activity;

.field public final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Landroid/view/View;Landroid/app/Activity;Lads_mobile_sdk/ts3;)V
    .registers 13

    .line 33
    sget-object v0, Lads_mobile_sdk/lq0;->p:Lads_mobile_sdk/lq0;

    .line 36
    invoke-virtual {p5, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 37
    const-string v2, "tXC+6Jm/Fr9MMTTWrGVRmjCRxQXB1wBBIW7URdo6dTIjKw/6PPrbFGVPystgMCjX"

    const-string v3, "IcAhweG2HC3QGfD4kIQwOT6WrAtTmjwAp/4H7506MIM="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 43
    iput-object p3, v1, Lads_mobile_sdk/p;->g:Landroid/view/View;

    .line 44
    iput-object p4, v1, Lads_mobile_sdk/p;->f:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 5

    .line 51
    iget-object v0, p0, Lads_mobile_sdk/p;->g:Landroid/view/View;

    iget-object v1, p0, Lads_mobile_sdk/p;->f:Landroid/app/Activity;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 53
    monitor-enter p2

    const/4 v0, 0x0

    .line 54
    :try_start_18
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->a(J)V

    const/4 v0, 0x1

    .line 55
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->b(J)V

    const/4 v0, 0x2

    .line 56
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->a(Ljava/lang/String;)V

    .line 57
    monitor-exit p2

    return-void

    :catchall_39
    move-exception p1

    .line 58
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_39

    throw p1
.end method
