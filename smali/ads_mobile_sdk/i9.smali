###### Class ads_mobile_sdk.i9 (ads_mobile_sdk.i9)
.class public final Lads_mobile_sdk/i9;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 322
    invoke-static {}, Lads_mobile_sdk/j9;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/j9;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(ILads_mobile_sdk/d9;)V
    .registers 4

    .line 19
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/j9;->a(ILads_mobile_sdk/d9;)V

    return-void
.end method

.method public final a(J)V
    .registers 5

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    .line 15
    invoke-static {v0}, Lads_mobile_sdk/j9;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/j9;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lads_mobile_sdk/j9;->-$$Nest$fputbitField0_(Lads_mobile_sdk/j9;I)V

    .line 17
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/j9;->-$$Nest$fputlastAccessTimeMs_(Lads_mobile_sdk/j9;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/d9;)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/j9;->a(Lads_mobile_sdk/d9;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/j9;->-$$Nest$fgetresponses_(Lads_mobile_sdk/j9;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/j9;->-$$Nest$fputresponses_(Lads_mobile_sdk/j9;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/j9;->-$$Nest$fgetresponses_(Lads_mobile_sdk/j9;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/j9;->-$$Nest$fputresponses_(Lads_mobile_sdk/j9;Lads_mobile_sdk/yh1$f;)V

    return-void
.end method

.method public final i()Ljava/util/List;
    .registers 2

    .line 335
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j9;

    .line 336
    invoke-static {v0}, Lads_mobile_sdk/j9;->-$$Nest$fgetresponses_(Lads_mobile_sdk/j9;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 337
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
