###### Class ads_mobile_sdk.g83 (ads_mobile_sdk.g83)
.class public final Lads_mobile_sdk/g83;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/f0;

.field public final b:Lads_mobile_sdk/ur3;

.field public final c:Lads_mobile_sdk/tx;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f0;Lads_mobile_sdk/ur3;Lads_mobile_sdk/tx;)V
    .registers 5

    .line 1
    const-string v0, "activityTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/g83;->a:Lads_mobile_sdk/f0;

    .line 24
    iput-object p2, p0, Lads_mobile_sdk/g83;->b:Lads_mobile_sdk/ur3;

    .line 25
    iput-object p3, p0, Lads_mobile_sdk/g83;->c:Lads_mobile_sdk/tx;

    return-void
.end method

.method public static a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;
    .registers 16

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "cuiName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "traceMetaSet"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lads_mobile_sdk/g83;->c:Lads_mobile_sdk/tx;

    .line 73
    iget-object v7, p0, Lads_mobile_sdk/g83;->b:Lads_mobile_sdk/ur3;

    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v5, Lads_mobile_sdk/su2;

    invoke-direct {v5}, Lads_mobile_sdk/su2;-><init>()V

    .line 208
    new-instance v0, Lads_mobile_sdk/tu2;

    .line 211
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v1, "randomUUID(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v11, 0x500

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 212
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/tu2;-><init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;Lads_mobile_sdk/su2;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;ILads_mobile_sdk/rr3;ZI)V

    .line 213
    const-string p1, "trace"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object p1, v5, Lads_mobile_sdk/su2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 382
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p2

    invoke-static {p2, p1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    .line 383
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p1

    invoke-static {p1, v0}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    .line 384
    iget-object p1, v0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 385
    iget-object p0, p0, Lads_mobile_sdk/g83;->a:Lads_mobile_sdk/f0;

    invoke-virtual {p0}, Lads_mobile_sdk/f0;->i()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 386
    sget-object p0, Lads_mobile_sdk/w11;->d:Lads_mobile_sdk/w11;

    goto :goto_6c

    .line 388
    :cond_6a
    sget-object p0, Lads_mobile_sdk/w11;->c:Lads_mobile_sdk/w11;

    .line 389
    :goto_6c
    iput-object p0, p1, Lads_mobile_sdk/uj2;->x:Lads_mobile_sdk/w11;

    return-object v0
.end method
