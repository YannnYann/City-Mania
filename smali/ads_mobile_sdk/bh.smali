###### Class ads_mobile_sdk.bh (ads_mobile_sdk.bh)
.class public final Lads_mobile_sdk/bh;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10736
    invoke-static {}, Lads_mobile_sdk/ch;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ch;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 10
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    .line 11
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 12
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputpathDistanceSignal_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 5
    invoke-static {v0, p1}, Lads_mobile_sdk/ch;->-$$Nest$fputisPhysicalTouch_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    invoke-static {v0, p1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 10
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    .line 11
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 12
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputsource_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 5
    invoke-static {v0, p1}, Lads_mobile_sdk/ch;->-$$Nest$fputobscured_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    invoke-static {v0, p1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    return-void
.end method

.method public final c(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcd_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final d(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcp_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final e(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtctMs_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final f(J)Lads_mobile_sdk/bh;
    .registers 6

    .line 11681
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11682
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 11683
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 11684
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 11685
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcxDownSignal_(Lads_mobile_sdk/ch;J)V

    return-object p0
.end method

.method public final g(J)Lads_mobile_sdk/bh;
    .registers 5

    .line 10777
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 10778
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 10779
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 10780
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 10781
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcxSignal_(Lads_mobile_sdk/ch;J)V

    return-object p0
.end method

.method public final h(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcyDownSignal_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final i(J)Lads_mobile_sdk/bh;
    .registers 5

    .line 10818
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 10819
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 10820
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 10821
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 10822
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtcySignal_(Lads_mobile_sdk/ch;J)V

    return-object p0
.end method

.method public final j(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputtoolType_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final k(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputviewDxSignal_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final l(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputviewDySignal_(Lads_mobile_sdk/ch;J)V

    return-void
.end method

.method public final m(J)Lads_mobile_sdk/bh;
    .registers 5

    .line 11497
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11498
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 11499
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 11500
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 11501
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputviewXSignal_(Lads_mobile_sdk/ch;J)V

    return-object p0
.end method

.method public final n(J)Lads_mobile_sdk/bh;
    .registers 5

    .line 11538
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11539
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ch;

    .line 11540
    invoke-static {v0}, Lads_mobile_sdk/ch;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ch;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    .line 11541
    invoke-static {v0, v1}, Lads_mobile_sdk/ch;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ch;I)V

    .line 11542
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ch;->-$$Nest$fputviewYSignal_(Lads_mobile_sdk/ch;J)V

    return-object p0
.end method
