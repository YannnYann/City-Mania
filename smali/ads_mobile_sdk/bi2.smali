###### Class ads_mobile_sdk.bi2 (ads_mobile_sdk.bi2)
.class public abstract Lads_mobile_sdk/bi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lads_mobile_sdk/x41;

.field public final g:Lads_mobile_sdk/w41;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lads_mobile_sdk/x41;->a(Landroid/content/Context;)Lads_mobile_sdk/x41;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    .line 40
    invoke-static {p1}, Lads_mobile_sdk/w41;->a(Landroid/content/Context;)Lads_mobile_sdk/w41;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bi2;->g:Lads_mobile_sdk/w41;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    .line 42
    const-string p1, "_3p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/bi2;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bi2;->d:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lads_mobile_sdk/bi2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/u41;
    .registers 11

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_68

    .line 12
    iget-object v2, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    .line 13
    iget-object v3, p0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    .line 14
    iget-object v2, v2, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    const-wide/16 v4, -0x1

    .line 15
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-nez v6, :cond_1c

    goto :goto_3e

    :cond_1c
    cmp-long v6, v0, v2

    if-gez v6, :cond_2c

    .line 16
    iget-object p1, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object p2, p0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/x41;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3e

    :cond_2c
    add-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3e

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, v7}, Lads_mobile_sdk/bi2;->a(Ljava/lang/String;Z)Lads_mobile_sdk/u41;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3e
    :goto_3e
    iget-object p1, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object p2, p0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iget-object p1, p1, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    .line 21
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_58

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, v7}, Lads_mobile_sdk/bi2;->a(Ljava/lang/String;Z)Lads_mobile_sdk/u41;

    move-result-object p1

    return-object p1

    .line 24
    :cond_58
    new-instance p2, Lads_mobile_sdk/u41;

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    .line 26
    iget-object v1, p0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    .line 27
    iget-object v0, v0, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    .line 28
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    invoke-direct {p2, v0, v1, p1}, Lads_mobile_sdk/u41;-><init>(JLjava/lang/String;)V

    return-object p2

    .line 30
    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lads_mobile_sdk/bi2;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)Lads_mobile_sdk/u41;
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2c

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    if-eqz p2, :cond_11

    iget-object v3, p0, Lads_mobile_sdk/bi2;->d:Ljava/lang/String;

    goto :goto_13

    :cond_11
    iget-object v3, p0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lads_mobile_sdk/x41;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lads_mobile_sdk/bi2;->b:Ljava/lang/String;

    goto :goto_23

    :cond_21
    iget-object p2, p0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    :goto_23
    invoke-virtual {v2, p1, p2}, Lads_mobile_sdk/x41;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p2, Lads_mobile_sdk/u41;

    invoke-direct {p2, v0, v1, p1}, Lads_mobile_sdk/u41;-><init>(JLjava/lang/String;)V

    return-object p2

    .line 9
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lads_mobile_sdk/bi2;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
