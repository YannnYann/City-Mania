###### Class ads_mobile_sdk.ft1 (ads_mobile_sdk.ft1)
.class public final Lads_mobile_sdk/ft1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 535
    invoke-static {}, Lads_mobile_sdk/gt1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/gt1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/ft1;
    .registers 5

    .line 818
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 819
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    .line 820
    invoke-static {v0}, Lads_mobile_sdk/gt1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/gt1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 821
    invoke-static {v0, v1}, Lads_mobile_sdk/gt1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/gt1;I)V

    .line 822
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/gt1;->-$$Nest$fputeventCount_(Lads_mobile_sdk/gt1;J)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/vl3;)V
    .registers 3

    .line 824
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 825
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    iget p1, p1, Lads_mobile_sdk/vl3;->a:I

    .line 827
    invoke-static {v0, p1}, Lads_mobile_sdk/gt1;->-$$Nest$fputstatus_(Lads_mobile_sdk/gt1;I)V

    .line 828
    invoke-static {v0}, Lads_mobile_sdk/gt1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/gt1;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Lads_mobile_sdk/gt1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/gt1;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/gt1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)Lads_mobile_sdk/ft1;
    .registers 5

    .line 573
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 574
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    .line 575
    invoke-static {v0}, Lads_mobile_sdk/gt1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/gt1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 576
    invoke-static {v0, v1}, Lads_mobile_sdk/gt1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/gt1;I)V

    .line 577
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/gt1;->-$$Nest$fputeventId_(Lads_mobile_sdk/gt1;J)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/ft1;
    .registers 3

    .line 1288
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1289
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/gt1;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(J)Lads_mobile_sdk/ft1;
    .registers 5

    .line 625
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 626
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    .line 627
    invoke-static {v0}, Lads_mobile_sdk/gt1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/gt1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 628
    invoke-static {v0, v1}, Lads_mobile_sdk/gt1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/gt1;I)V

    .line 629
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/gt1;->-$$Nest$fputruntimeMs_(Lads_mobile_sdk/gt1;J)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 631
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 632
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/gt1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/gt1;->d(Ljava/lang/String;)V

    return-void
.end method
