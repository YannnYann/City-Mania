###### Class ads_mobile_sdk.sd0 (ads_mobile_sdk.sd0)
.class public final Lads_mobile_sdk/sd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nh3;


# instance fields
.field public final a:Lads_mobile_sdk/id0;

.field public final b:Lads_mobile_sdk/nd0;

.field public c:Landroid/content/Context;

.field public d:Landroid/view/View;

.field public e:Landroid/app/Activity;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;

.field public h:Lads_mobile_sdk/xf;

.field public i:Lads_mobile_sdk/fl3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/id0;Lads_mobile_sdk/nd0;)V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lads_mobile_sdk/sd0;->a:Lads_mobile_sdk/id0;

    .line 249
    iput-object p2, p0, Lads_mobile_sdk/sd0;->b:Lads_mobile_sdk/nd0;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/td0;
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/sd0;->c:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/sd0;->g:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/sd0;->h:Lads_mobile_sdk/xf;

    const-class v1, Lads_mobile_sdk/xf;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/sd0;->i:Lads_mobile_sdk/fl3;

    const-class v1, Lads_mobile_sdk/fl3;

    invoke-static {v0, v1}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    new-instance v2, Lads_mobile_sdk/td0;

    iget-object v3, p0, Lads_mobile_sdk/sd0;->a:Lads_mobile_sdk/id0;

    iget-object v4, p0, Lads_mobile_sdk/sd0;->b:Lads_mobile_sdk/nd0;

    iget-object v5, p0, Lads_mobile_sdk/sd0;->c:Landroid/content/Context;

    iget-object v6, p0, Lads_mobile_sdk/sd0;->d:Landroid/view/View;

    iget-object v7, p0, Lads_mobile_sdk/sd0;->e:Landroid/app/Activity;

    iget-object v8, p0, Lads_mobile_sdk/sd0;->f:Ljava/lang/String;

    iget-object v9, p0, Lads_mobile_sdk/sd0;->g:Ljava/util/Map;

    iget-object v10, p0, Lads_mobile_sdk/sd0;->h:Lads_mobile_sdk/xf;

    iget-object v11, p0, Lads_mobile_sdk/sd0;->i:Lads_mobile_sdk/fl3;

    invoke-direct/range {v2 .. v11}, Lads_mobile_sdk/td0;-><init>(Lads_mobile_sdk/id0;Lads_mobile_sdk/nd0;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lads_mobile_sdk/xf;Lads_mobile_sdk/fl3;)V

    return-object v2
.end method
