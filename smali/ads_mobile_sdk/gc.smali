###### Class ads_mobile_sdk.gc (ads_mobile_sdk.gc)
.class public final Lads_mobile_sdk/gc;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 486
    invoke-static {}, Lads_mobile_sdk/hc;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hc;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hc;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hc;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hc;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetexcludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/hc;->-$$Nest$fputexcludingRegexes_(Lads_mobile_sdk/hc;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetexcludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hc;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetincludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/hc;->-$$Nest$fputincludingRegexes_(Lads_mobile_sdk/hc;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetincludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .line 630
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hc;

    .line 631
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetexcludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 632
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 2

    .line 501
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hc;

    .line 502
    invoke-static {v0}, Lads_mobile_sdk/hc;->-$$Nest$fgetincludingRegexes_(Lads_mobile_sdk/hc;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 503
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
