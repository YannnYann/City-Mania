###### Class ads_mobile_sdk.xf (ads_mobile_sdk.xf)
.class public final Lads_mobile_sdk/xf;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23890
    invoke-static {}, Lads_mobile_sdk/fh;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/fh;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final A(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcpSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final B(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtctSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final C(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcuSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final D(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcxSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final E(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcySignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final F(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtimeSinceVpnOnMs_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final G(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputuhSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final H(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputuptSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final I(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputusgSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final J(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fpututzSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final K(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputuwSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final L(J)Lads_mobile_sdk/xf;
    .registers 6

    .line 25383
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25384
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 25385
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 25386
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 25387
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputvcdSignal_(Lads_mobile_sdk/fh;J)V

    return-object p0
.end method

.method public final a(J)V
    .registers 6

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 9
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputactivityIntentSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/bh;)V
    .registers 3

    .line 32
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ch;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->b(Lads_mobile_sdk/ch;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/ch;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->a(Lads_mobile_sdk/ch;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/eh;)V
    .registers 3

    .line 35
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->a(Lads_mobile_sdk/eh;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/lg;)V
    .registers 3

    .line 20
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->a(Lads_mobile_sdk/lg;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/rg;)V
    .registers 4

    .line 23
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget p1, p1, Lads_mobile_sdk/rg;->a:I

    .line 26
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputnavigationTriggerType_(Lads_mobile_sdk/fh;I)V

    .line 27
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result p1

    const/high16 v1, 0x1000000

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 17
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputadbEnabledSignal_(Lads_mobile_sdk/fh;I)V

    .line 18
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result p1

    or-int/lit16 p1, p1, 0x800

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/xh;)V
    .registers 3

    .line 29
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->a(Lads_mobile_sdk/xh;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputactivityStackSizeSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 14
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputisLauncherSignal_(Lads_mobile_sdk/fh;I)V

    .line 15
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField3_(Lads_mobile_sdk/fh;)I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField3_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputadeventToVpnOffMs_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final c(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 14
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputlauncherActivityEnabled_(Lads_mobile_sdk/fh;I)V

    .line 15
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result p1

    or-int/lit8 p1, p1, 0x20

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Lads_mobile_sdk/xf;
    .registers 3

    .line 25886
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25887
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(J)V
    .registers 5

    .line 25889
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25890
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 25891
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 25892
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 25893
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputatvSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final d(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 25895
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25896
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25897
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 25898
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputproxyDetectedSignal_(Lads_mobile_sdk/fh;I)V

    .line 25899
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lads_mobile_sdk/xf;
    .registers 3

    .line 25145
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25146
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->f(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputbatteryTemperatureSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final e(Lads_mobile_sdk/rh;)V
    .registers 3

    .line 25148
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25149
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25150
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 25151
    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputusbConnectedSignal_(Lads_mobile_sdk/fh;I)V

    .line 25152
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    invoke-static {v0, p1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    return-void
.end method

.method public final f(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputbootCountSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Lads_mobile_sdk/xf;
    .registers 3

    .line 25979
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25980
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputbtlSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final h(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputbtsSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final i(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputcpuSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)Lads_mobile_sdk/xf;
    .registers 3

    .line 25342
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 25343
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fh;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public final j(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputdeviceElapsedRealTimeSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final k(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputdeviceUptimeSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final l(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField3_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField3_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputevtTime_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final m(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputgmscoreVersionSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final n(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputimpressionDurationHighAttentionMs_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final o(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField2_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField2_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputimpressionDurationMs_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final p(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputjbkSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final q(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputnetSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final r(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputornSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final s(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputprocessImportanceSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final t(J)Lads_mobile_sdk/xf;
    .registers 6

    .line 24865
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 24866
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 24867
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 24868
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 24869
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputpsnSignal_(Lads_mobile_sdk/fh;J)V

    return-object p0
.end method

.method public final u(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputrecentForegroundTimeSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final v(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputscreenStateSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final w(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtccSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final x(J)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/fh;)I

    move-result v1

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcdSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final y(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcdnSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method

.method public final z(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/fh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/fh;->-$$Nest$fgetbitField1_(Lads_mobile_sdk/fh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/fh;->-$$Nest$fputbitField1_(Lads_mobile_sdk/fh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/fh;->-$$Nest$fputtcmSignal_(Lads_mobile_sdk/fh;J)V

    return-void
.end method
