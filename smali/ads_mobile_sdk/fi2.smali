###### Class ads_mobile_sdk.fi2 (ads_mobile_sdk.fi2)
.class public final Lads_mobile_sdk/fi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Landroid/content/Context;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;)V
    .registers 4

    .line 2
    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/fi2;->a:Lads_mobile_sdk/ex0;

    iput-object p1, p0, Lads_mobile_sdk/fi2;->b:Landroid/content/Context;

    .line 28
    new-instance p1, Lads_mobile_sdk/di2;

    invoke-direct {p1, p0}, Lads_mobile_sdk/di2;-><init>(Lads_mobile_sdk/fi2;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fi2;->c:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lads_mobile_sdk/ei2;

    invoke-direct {p1, p0}, Lads_mobile_sdk/ei2;-><init>(Lads_mobile_sdk/fi2;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fi2;->d:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lads_mobile_sdk/ci2;

    invoke-direct {p1, p0}, Lads_mobile_sdk/ci2;-><init>(Lads_mobile_sdk/fi2;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fi2;->e:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/fi2;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/hi2;

    .line 3
    check-cast v0, Lads_mobile_sdk/ii2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-class v1, Lads_mobile_sdk/ii2;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_28

    .line 5
    :try_start_15
    iget-object v2, v0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object v3, v0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/x41;->a(Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object v0, v0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/x41;->a(Ljava/lang/String;)V

    .line 7
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    .line 8
    const-string v1, "Exception while clearing PAIDV1"

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final b()V
    .registers 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/fi2;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ji2;

    .line 3
    check-cast v0, Lads_mobile_sdk/ki2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-class v1, Lads_mobile_sdk/ki2;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_36

    .line 5
    :try_start_15
    iget-object v2, v0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object v3, v0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    .line 6
    iget-object v2, v2, Lads_mobile_sdk/x41;->b:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 8
    iget-object v2, v0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object v3, v0, Lads_mobile_sdk/bi2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/x41;->a(Ljava/lang/String;)V

    .line 9
    iget-object v2, v0, Lads_mobile_sdk/bi2;->f:Lads_mobile_sdk/x41;

    iget-object v0, v0, Lads_mobile_sdk/bi2;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/x41;->a(Ljava/lang/String;)V

    goto :goto_32

    :catchall_30
    move-exception v0

    goto :goto_34

    .line 10
    :cond_32
    :goto_32
    monitor-exit v1

    return-void

    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_30

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    .line 11
    const-string v1, "Exception while clearing PAIDV2"

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method
