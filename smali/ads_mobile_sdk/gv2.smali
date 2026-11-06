###### Class ads_mobile_sdk.gv2 (ads_mobile_sdk.gv2)
.class public final Lads_mobile_sdk/gv2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 420
    invoke-static {}, Lads_mobile_sdk/iv2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/iv2;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/hh2;)Lads_mobile_sdk/gv2;
    .registers 3

    .line 1535
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1536
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/iv2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/iv2;->a(Lads_mobile_sdk/hh2;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/jv2;)Lads_mobile_sdk/gv2;
    .registers 3

    .line 1032
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1033
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/iv2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/iv2;->a(Lads_mobile_sdk/jv2;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/gv2;
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/iv2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/iv2;->-$$Nest$fgetactiveExperimentIds_(Lads_mobile_sdk/iv2;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/iv2;->-$$Nest$fputactiveExperimentIds_(Lads_mobile_sdk/iv2;Lads_mobile_sdk/yh1$c;)V

    .line 8
    :cond_18
    invoke-static {v0}, Lads_mobile_sdk/iv2;->-$$Nest$fgetactiveExperimentIds_(Lads_mobile_sdk/iv2;)Lads_mobile_sdk/yh1$c;

    move-result-object v0

    invoke-static {p1, v0}, Lads_mobile_sdk/f;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/yn;)Lads_mobile_sdk/gv2;
    .registers 3

    .line 574
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 575
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/iv2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    iget p1, p1, Lads_mobile_sdk/yn;->a:I

    .line 577
    invoke-static {v0, p1}, Lads_mobile_sdk/iv2;->-$$Nest$fputarchitecture_(Lads_mobile_sdk/iv2;I)V

    .line 578
    invoke-static {v0}, Lads_mobile_sdk/iv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/iv2;)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lads_mobile_sdk/iv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/iv2;I)V

    return-object p0
.end method
