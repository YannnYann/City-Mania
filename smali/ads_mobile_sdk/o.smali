###### Class ads_mobile_sdk.o (ads_mobile_sdk.o)
.class public final Lads_mobile_sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rn;


# static fields
.field public static final f:Lads_mobile_sdk/o;


# instance fields
.field public final a:Lads_mobile_sdk/hg2;

.field public b:Ljava/util/Date;

.field public c:Z

.field public final d:Lads_mobile_sdk/sn;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/o;

    new-instance v1, Lads_mobile_sdk/sn;

    invoke-direct {v1}, Lads_mobile_sdk/sn;-><init>()V

    invoke-direct {v0, v1}, Lads_mobile_sdk/o;-><init>(Lads_mobile_sdk/sn;)V

    sput-object v0, Lads_mobile_sdk/o;->f:Lads_mobile_sdk/o;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/sn;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lads_mobile_sdk/hg2;

    invoke-direct {v0}, Lads_mobile_sdk/hg2;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/o;->a:Lads_mobile_sdk/hg2;

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/o;->d:Lads_mobile_sdk/sn;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 8

    .line 53
    iget-boolean v0, p0, Lads_mobile_sdk/o;->e:Z

    if-nez v0, :cond_72

    if-eqz p1, :cond_72

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/o;->a:Lads_mobile_sdk/hg2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 56
    iget-object v1, p0, Lads_mobile_sdk/o;->b:Ljava/util/Date;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 57
    :cond_1a
    iput-object v0, p0, Lads_mobile_sdk/o;->b:Ljava/util/Date;

    .line 58
    iget-boolean v0, p0, Lads_mobile_sdk/o;->c:Z

    if-eqz v0, :cond_72

    .line 59
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 60
    iget-object v0, v0, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 63
    iget-object v1, v1, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    .line 64
    iget-object v2, p0, Lads_mobile_sdk/o;->b:Ljava/util/Date;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    .line 65
    :goto_46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_4c

    goto :goto_2c

    .line 66
    :cond_4c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 67
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "timestamp"

    invoke-static {v3, v4, v2}, Lads_mobile_sdk/pe2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v2, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 69
    iget-object v1, v1, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 70
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setLastActivity"

    invoke-virtual {v2, v1, v4, v3}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    .line 71
    :cond_72
    iput-boolean p1, p0, Lads_mobile_sdk/o;->e:Z

    return-void
.end method
