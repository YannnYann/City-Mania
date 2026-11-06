###### Class ads_mobile_sdk.n6 (ads_mobile_sdk.n6)
.class public final Lads_mobile_sdk/n6;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1021
    invoke-static {}, Lads_mobile_sdk/o6;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/o6;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lads_mobile_sdk/n6;
    .registers 3

    .line 1083
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1084
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/o6;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(I)V
    .registers 4

    .line 18
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 20
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 21
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    .line 22
    invoke-static {v0, p1}, Lads_mobile_sdk/o6;->-$$Nest$fputadBounceCount_(Lads_mobile_sdk/o6;I)V

    return-void
.end method

.method public final a(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadClickTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$e;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputadClickTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadClickTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lads_mobile_sdk/yh1$e;->a(J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 12
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadQualityUrls_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 15
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputadQualityUrls_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$f;)V

    .line 16
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadQualityUrls_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$e;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lads_mobile_sdk/yh1$e;->a(J)V

    return-void
.end method

.method public final c(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappForegroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$e;)Lads_mobile_sdk/yh1$e;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputappForegroundTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappForegroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lads_mobile_sdk/yh1$e;->a(J)V

    return-void
.end method

.method public final d(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o6;->-$$Nest$fputadClosedTimestampMs_(Lads_mobile_sdk/o6;J)V

    return-void
.end method

.method public final e(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o6;->-$$Nest$fputadDurationInMs_(Lads_mobile_sdk/o6;J)V

    return-void
.end method

.method public final f(J)Lads_mobile_sdk/n6;
    .registers 4

    .line 1392
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1393
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1394
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o6;->-$$Nest$fputadStartTimestampMs_(Lads_mobile_sdk/o6;J)V

    return-object p0
.end method

.method public final g(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o6;->-$$Nest$fputappKillTimestampMs_(Lads_mobile_sdk/o6;J)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputadClickTimestampsMs_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$e;)V

    return-void
.end method

.method public final h(J)V
    .registers 5

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 9
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    .line 10
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o6;->-$$Nest$fputtotalDurationSpentOutsideAppInMs_(Lads_mobile_sdk/o6;J)V

    return-void
.end method

.method public final i()Lads_mobile_sdk/n6;
    .registers 3

    .line 1881
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1882
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1883
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputadQualityUrls_(Lads_mobile_sdk/o6;Lads_mobile_sdk/yh1$f;)V

    return-object p0
.end method

.method public final j()I
    .registers 2

    .line 1174
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1175
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadBounceCount_(Lads_mobile_sdk/o6;)I

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 2

    .line 1732
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1733
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadClickTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    .line 1734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final l()Ljava/util/List;
    .registers 2

    .line 1719
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1720
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadClickTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    .line 1721
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()J
    .registers 3

    .line 1380
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1381
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetadStartTimestampMs_(Lads_mobile_sdk/o6;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()I
    .registers 2

    .line 1538
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1539
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    .line 1540
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final o()Ljava/util/List;
    .registers 2

    .line 1525
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1526
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetappBackgroundTimestampsMs_(Lads_mobile_sdk/o6;)Lads_mobile_sdk/yh1$e;

    move-result-object v0

    .line 1527
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()J
    .registers 3

    .line 1340
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 1341
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgettotalDurationSpentOutsideAppInMs_(Lads_mobile_sdk/o6;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputisAdQuit_(Lads_mobile_sdk/o6;Z)V

    return-void
.end method

.method public final r()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o6;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o6;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o6;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o6;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/o6;->-$$Nest$fputisOsKill_(Lads_mobile_sdk/o6;Z)V

    return-void
.end method
