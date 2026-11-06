###### Class ads_mobile_sdk.fg2 (ads_mobile_sdk.fg2)
.class public final Lads_mobile_sdk/fg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/kd2;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/o21;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Ljava/lang/String;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;)V
    .registers 6

    .line 1
    const-string v0, "omid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/fg2;->a:Lads_mobile_sdk/kd2;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/fg2;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lads_mobile_sdk/fg2;->c:Lads_mobile_sdk/ex0;

    .line 23
    iput-object p4, p0, Lads_mobile_sdk/fg2;->d:Lads_mobile_sdk/o21;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->J:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/fg2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->i0()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/fg2;->a:Lads_mobile_sdk/kd2;

    invoke-virtual {v0}, Lads_mobile_sdk/kd2;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 31
    iget-object p1, p0, Lads_mobile_sdk/fg2;->d:Lads_mobile_sdk/o21;

    invoke-virtual {p1}, Lads_mobile_sdk/o21;->c()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    move-object v0, p1

    goto :goto_3a

    .line 36
    :cond_1d
    iget-object p1, p0, Lads_mobile_sdk/fg2;->a:Lads_mobile_sdk/kd2;

    invoke-virtual {p1}, Lads_mobile_sdk/kd2;->g()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/fg2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->j0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/fg2;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_3a
    new-instance v1, Lads_mobile_sdk/q01;

    new-instance v2, Lads_mobile_sdk/eg2;

    iget-object v3, p0, Lads_mobile_sdk/fg2;->a:Lads_mobile_sdk/kd2;

    invoke-virtual {v3}, Lads_mobile_sdk/kd2;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lads_mobile_sdk/eg2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
