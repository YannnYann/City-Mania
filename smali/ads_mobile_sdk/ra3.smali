###### Class ads_mobile_sdk.ra3 (ads_mobile_sdk.ra3)
.class public final Lads_mobile_sdk/ra3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lads_mobile_sdk/ra3;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ra3;

    invoke-direct {v0}, Lads_mobile_sdk/ra3;-><init>()V

    sput-object v0, Lads_mobile_sdk/ra3;->d:Lads_mobile_sdk/ra3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->b:Z

    .line 27
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/ra3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_b

    goto :goto_15

    .line 61
    :cond_b
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_16

    :goto_15
    return-void

    .line 68
    :cond_16
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    .line 73
    iget-boolean v1, p0, Lads_mobile_sdk/ra3;->b:Z

    invoke-virtual {p0, v1, v0}, Lads_mobile_sdk/ra3;->a(ZZ)V

    .line 74
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->c:Z

    return-void
.end method

.method public final a(ZZ)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_9

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    move v2, v1

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    .line 154
    :goto_a
    iget-boolean v3, p0, Lads_mobile_sdk/ra3;->c:Z

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lads_mobile_sdk/ra3;->b:Z

    if-eqz v3, :cond_13

    goto :goto_15

    :cond_13
    move v3, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v0

    :goto_16
    if-ne v2, v3, :cond_19

    goto :goto_5e

    .line 155
    :cond_19
    sget-object v2, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 156
    iget-object v2, v2, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    .line 157
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/p9;

    .line 159
    iget-object v3, v3, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    if-nez p2, :cond_3a

    if-eqz p1, :cond_38

    goto :goto_3a

    :cond_38
    move v4, v1

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v4, v0

    .line 160
    :goto_3b
    iget-object v5, v3, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_25

    if-eqz v4, :cond_48

    .line 161
    const-string v4, "locked"

    goto :goto_4a

    :cond_48
    const-string v4, "unlocked"

    .line 162
    :goto_4a
    sget-object v5, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 163
    iget-object v3, v3, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 164
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "setDeviceLockState"

    invoke-virtual {v5, v3, v6, v4}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_5e
    :goto_5e
    return-void
.end method
