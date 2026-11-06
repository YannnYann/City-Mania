###### Class ads_mobile_sdk.an0 (ads_mobile_sdk.an0)
.class public final Lads_mobile_sdk/an0;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Landroid/content/pm/PackageManager;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;

.field public final h:Lkotlin/Lazy;

.field public final i:Lkotlin/Lazy;

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Lkotlin/Lazy;

.field public final m:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ur3;)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lads_mobile_sdk/s11;->C:Lads_mobile_sdk/s11;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 39
    iput-object p1, p0, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lads_mobile_sdk/an0;->d:Lads_mobile_sdk/ur3;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->e:Landroid/content/pm/PackageManager;

    .line 58
    new-instance p1, Lads_mobile_sdk/tm0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/tm0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->f:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lads_mobile_sdk/xm0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/xm0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->g:Lkotlin/Lazy;

    .line 71
    sget-object p1, Lads_mobile_sdk/vm0;->a:Lads_mobile_sdk/vm0;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->h:Lkotlin/Lazy;

    .line 73
    new-instance p1, Lads_mobile_sdk/zm0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/zm0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->i:Lkotlin/Lazy;

    .line 91
    new-instance p1, Lads_mobile_sdk/ym0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/ym0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->j:Lkotlin/Lazy;

    .line 107
    new-instance p1, Lads_mobile_sdk/um0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/um0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->k:Lkotlin/Lazy;

    .line 126
    new-instance p1, Lads_mobile_sdk/sm0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/sm0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->l:Lkotlin/Lazy;

    .line 147
    new-instance p1, Lads_mobile_sdk/wm0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wm0;-><init>(Lads_mobile_sdk/an0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/an0;->m:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/an0;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/an0;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance p0, Landroid/content/Intent;

    .line 70
    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000

    .line 72
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .registers 7

    .line 279
    iget-object v0, p0, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "queryIntentActivities(...)"

    if-lt v2, v3, :cond_25

    const-wide/16 v2, 0x0

    .line 281
    invoke-static {v2, v3}, Lads_mobile_sdk/an0$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lads_mobile_sdk/an0$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_32

    .line 283
    :cond_25
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    :goto_32
    const/4 p1, 0x1

    return p1

    :cond_34
    return v1
.end method

.method public final g()Z
    .registers 2

    .line 150
    iget-object v0, p0, Lads_mobile_sdk/an0;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1c

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/an0;->f:Lkotlin/Lazy;

    .line 3
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lads_mobile_sdk/an0;->h:Lkotlin/Lazy;

    .line 5
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lads_mobile_sdk/an0;->g:Lkotlin/Lazy;

    .line 7
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lads_mobile_sdk/an0;->i:Lkotlin/Lazy;

    .line 9
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lads_mobile_sdk/an0;->j:Lkotlin/Lazy;

    .line 11
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lads_mobile_sdk/an0;->k:Lkotlin/Lazy;

    .line 13
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lads_mobile_sdk/an0;->l:Lkotlin/Lazy;

    .line 15
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lads_mobile_sdk/an0;->m:Lkotlin/Lazy;

    .line 17
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 18
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
