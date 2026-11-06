###### Class ads_mobile_sdk.jj3 (ads_mobile_sdk.jj3)
.class public abstract Lads_mobile_sdk/jj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/cf3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/yw1;

.field public final d:Lads_mobile_sdk/xf;

.field public final e:Lads_mobile_sdk/qr3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/jj3;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lads_mobile_sdk/jj3;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lads_mobile_sdk/jj3;->d:Lads_mobile_sdk/xf;

    .line 34
    iput-object p4, p0, Lads_mobile_sdk/jj3;->c:Lads_mobile_sdk/yw1;

    .line 35
    iput-object p5, p0, Lads_mobile_sdk/jj3;->e:Lads_mobile_sdk/qr3;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
.end method

.method public final call()Ljava/lang/Object;
    .registers 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/jj3;->e:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->b()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/jj3;->c:Lads_mobile_sdk/yw1;

    iget-object v1, p0, Lads_mobile_sdk/jj3;->a:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/jj3;->b:Ljava/lang/String;

    check-cast v0, Lads_mobile_sdk/zw1;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/zw1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5
    iget-object v1, p0, Lads_mobile_sdk/jj3;->d:Lads_mobile_sdk/xf;

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/jj3;->a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_22

    .line 11
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lads_mobile_sdk/jj3;->e:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    const/4 v0, 0x0

    return-object v0

    .line 12
    :goto_22
    :try_start_22
    iget-object v1, p0, Lads_mobile_sdk/jj3;->e:Lads_mobile_sdk/qr3;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 13
    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    .line 15
    iget-object v1, p0, Lads_mobile_sdk/jj3;->e:Lads_mobile_sdk/qr3;

    invoke-virtual {v1}, Lads_mobile_sdk/qr3;->a()V

    .line 16
    throw v0
.end method
