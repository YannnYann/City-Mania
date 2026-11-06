###### Class ads_mobile_sdk.cf2 (ads_mobile_sdk.cf2)
.class public final Lads_mobile_sdk/cf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rn;
.implements Lads_mobile_sdk/mn0;


# static fields
.field public static f:Lads_mobile_sdk/cf2;


# instance fields
.field public a:F

.field public final b:Lads_mobile_sdk/qn0;

.field public final c:Lads_mobile_sdk/ln0;

.field public d:Lads_mobile_sdk/pn0;

.field public e:Lads_mobile_sdk/q9;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn0;Lads_mobile_sdk/ln0;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lads_mobile_sdk/cf2;->a:F

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/cf2;->b:Lads_mobile_sdk/qn0;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/cf2;->c:Lads_mobile_sdk/ln0;

    return-void
.end method

.method public static a()Lads_mobile_sdk/cf2;
    .registers 3

    .line 13
    sget-object v0, Lads_mobile_sdk/cf2;->f:Lads_mobile_sdk/cf2;

    if-nez v0, :cond_15

    .line 14
    new-instance v0, Lads_mobile_sdk/ln0;

    invoke-direct {v0}, Lads_mobile_sdk/ln0;-><init>()V

    .line 16
    new-instance v1, Lads_mobile_sdk/qn0;

    invoke-direct {v1}, Lads_mobile_sdk/qn0;-><init>()V

    .line 18
    new-instance v2, Lads_mobile_sdk/cf2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/cf2;-><init>(Lads_mobile_sdk/qn0;Lads_mobile_sdk/ln0;)V

    sput-object v2, Lads_mobile_sdk/cf2;->f:Lads_mobile_sdk/cf2;

    .line 21
    :cond_15
    sget-object v0, Lads_mobile_sdk/cf2;->f:Lads_mobile_sdk/cf2;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    if-eqz p1, :cond_25

    .line 2
    sget-object p1, Lads_mobile_sdk/rt3;->g:Lads_mobile_sdk/rt3;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p1, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    if-nez p1, :cond_36

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    .line 6
    sget-object v0, Lads_mobile_sdk/rt3;->j:Lads_mobile_sdk/pt3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    sget-object p1, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    sget-object v0, Lads_mobile_sdk/rt3;->k:Lads_mobile_sdk/qt3;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 8
    :cond_25
    sget-object p1, Lads_mobile_sdk/rt3;->g:Lads_mobile_sdk/rt3;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object p1, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    if-eqz p1, :cond_36

    .line 11
    sget-object v0, Lads_mobile_sdk/rt3;->k:Lads_mobile_sdk/qt3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 12
    sput-object p1, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    :cond_36
    return-void
.end method
