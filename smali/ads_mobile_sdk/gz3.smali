###### Class ads_mobile_sdk.gz3 (ads_mobile_sdk.gz3)
.class public final Lads_mobile_sdk/gz3;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 460
    invoke-static {}, Lads_mobile_sdk/hz3;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hz3;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 12
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/hz3;->-$$Nest$fputmaxTimePerTaskInUiThreadMs_(Lads_mobile_sdk/hz3;J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/hz3;->-$$Nest$fputnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b(J)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 12
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/hz3;->-$$Nest$fputtotalTimeInUiThreadMs_(Lads_mobile_sdk/hz3;J)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/hz3;->-$$Nest$fputuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;Lads_mobile_sdk/yh1$f;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .line 637
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 638
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetnonUiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 639
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 2

    .line 729
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hz3;

    .line 730
    invoke-static {v0}, Lads_mobile_sdk/hz3;->-$$Nest$fgetuiThreadBlockingStartupLocations_(Lads_mobile_sdk/hz3;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 731
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
