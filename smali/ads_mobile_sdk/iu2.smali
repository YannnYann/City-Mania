###### Class ads_mobile_sdk.iu2 (ads_mobile_sdk.iu2)
.class public final Lads_mobile_sdk/iu2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lads_mobile_sdk/pt1;

.field public static final d:Landroid/content/Intent;


# instance fields
.field public final a:Lads_mobile_sdk/lc3;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/pt1;

    const-string v1, "PrewarmService"

    invoke-direct {v0, v1}, Lads_mobile_sdk/pt1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/iu2;->c:Lads_mobile_sdk/pt1;

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.prewarm.BIND_PREWARM_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/iu2;->d:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lads_mobile_sdk/in2;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    new-instance v0, Lads_mobile_sdk/lc3;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/iu2;->c:Lads_mobile_sdk/pt1;

    sget-object v3, Lads_mobile_sdk/iu2;->d:Landroid/content/Intent;

    new-instance v4, Lads_mobile_sdk/iu2$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lads_mobile_sdk/iu2$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lads_mobile_sdk/lc3;-><init>(Landroid/content/Context;Lads_mobile_sdk/pt1;Landroid/content/Intent;Lads_mobile_sdk/hc3;)V

    iput-object v0, p0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    goto :goto_21

    :cond_1e
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    .line 57
    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/iu2;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lads_mobile_sdk/mq2;)Ljava/util/ArrayList;
    .registers 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lads_mobile_sdk/mq2;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    return-object v0
.end method

###### Class ads_mobile_sdk.iu2$$ExternalSyntheticLambda0 (ads_mobile_sdk.iu2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/iu2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/hc3;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lads_mobile_sdk/w81;->a(Landroid/os/IBinder;)Lads_mobile_sdk/x81;

    move-result-object p1

    return-object p1
.end method
