###### Class ads_mobile_sdk.wa (ads_mobile_sdk.wa)
.class public final Lads_mobile_sdk/wa;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1157
    invoke-static {}, Lads_mobile_sdk/xa;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xa;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/wa;
    .registers 5

    .line 1314
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1315
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    .line 1316
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 1317
    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    .line 1318
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/xa;->-$$Nest$fputapiLevel_(Lads_mobile_sdk/xa;J)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/j61;)Lads_mobile_sdk/wa;
    .registers 3

    .line 3375
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3376
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3377
    invoke-virtual {p1}, Lads_mobile_sdk/j61;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/xa;->-$$Nest$fputhostType_(Lads_mobile_sdk/xa;I)V

    .line 3378
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result p1

    or-int/lit16 p1, p1, 0x800

    invoke-static {v0, p1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/gt1;)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->a(Lads_mobile_sdk/gt1;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/in0;)V
    .registers 3

    .line 1320
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1321
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1322
    iget p1, p1, Lads_mobile_sdk/in0;->a:I

    .line 1323
    invoke-static {v0, p1}, Lads_mobile_sdk/xa;->-$$Nest$fputdeviceType_(Lads_mobile_sdk/xa;I)V

    .line 1324
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-static {v0, p1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/yh1$c;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetexperimentIds_(Lads_mobile_sdk/xa;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputexperimentIds_(Lads_mobile_sdk/xa;Lads_mobile_sdk/yh1$c;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetexperimentIds_(Lads_mobile_sdk/xa;)Lads_mobile_sdk/yh1$c;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/wa;
    .registers 3

    .line 1662
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1663
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(J)V
    .registers 5

    .line 1665
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1666
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    .line 1667
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    .line 1668
    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    .line 1669
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/xa;->-$$Nest$fputappVersionCode_(Lads_mobile_sdk/xa;J)V

    return-void
.end method

.method public final c(J)Lads_mobile_sdk/wa;
    .registers 5

    .line 3457
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3458
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    .line 3459
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    .line 3460
    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    .line 3461
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/xa;->-$$Nest$fputrequestedAdshieldVersion_(Lads_mobile_sdk/xa;J)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lads_mobile_sdk/wa;
    .registers 3

    .line 1529
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1530
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lads_mobile_sdk/wa;
    .registers 3

    .line 1779
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1780
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(J)V
    .registers 5

    .line 1782
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1783
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    .line 1784
    invoke-static {v0}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    .line 1785
    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    .line 1786
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/xa;->-$$Nest$fputsamplingDenominator_(Lads_mobile_sdk/xa;J)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lads_mobile_sdk/wa;
    .registers 3

    .line 1448
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1449
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->f(Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lads_mobile_sdk/wa;
    .registers 3

    .line 1367
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1368
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xa;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/xa;->-$$Nest$fputlogEvents_(Lads_mobile_sdk/xa;Lads_mobile_sdk/yh1$f;)V

    return-void
.end method

.method public final i()Lads_mobile_sdk/wa;
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/mh2;->b:Lads_mobile_sdk/mh2;

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v1, Lads_mobile_sdk/xa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/mh2;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lads_mobile_sdk/xa;->-$$Nest$fputosType_(Lads_mobile_sdk/xa;I)V

    .line 5
    invoke-static {v1}, Lads_mobile_sdk/xa;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/xa;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    invoke-static {v1, v0}, Lads_mobile_sdk/xa;->-$$Nest$fputbitField0_(Lads_mobile_sdk/xa;I)V

    return-object p0
.end method
