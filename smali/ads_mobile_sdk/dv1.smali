###### Class ads_mobile_sdk.dv1 (ads_mobile_sdk.dv1)
.class public final Lads_mobile_sdk/dv1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 479
    invoke-static {}, Lads_mobile_sdk/ev1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ev1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetadapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ev1;->-$$Nest$fputadapters_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetadapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 12
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetdata_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 14
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetdata_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ev1;->-$$Nest$fputdata_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/ju1;)V

    .line 16
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetdata_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetwaterfallAdapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ev1;->-$$Nest$fputwaterfallAdapters_(Lads_mobile_sdk/ev1;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetwaterfallAdapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .line 494
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 495
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetadapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 496
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    .line 788
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 789
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetdata_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 790
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 791
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2

    .line 622
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ev1;

    .line 623
    invoke-static {v0}, Lads_mobile_sdk/ev1;->-$$Nest$fgetwaterfallAdapters_(Lads_mobile_sdk/ev1;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 624
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
