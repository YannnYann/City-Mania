###### Class ads_mobile_sdk.qn2 (ads_mobile_sdk.qn2)
.class public final Lads_mobile_sdk/qn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;)V
    .registers 3

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 6

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 28
    const-string v2, "key"

    const/16 v3, 0x12c

    const-string v4, "gads:picture_in_picture:animation_duration_ms"

    invoke-static {v3, v1, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 29
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .registers 5

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v1, 0x20

    .line 46
    const-string v2, "key"

    const-string v3, "gads:picture_in_picture:bottom_padding_dp"

    invoke-static {v0, v3, v2, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 47
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 5

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/4 v1, 0x5

    .line 25
    const-string v2, "key"

    const-string v3, "gads:picture_in_picture:max_layout_retries"

    invoke-static {v0, v3, v2, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 26
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 5

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v1, 0x14

    .line 22
    const-string v2, "key"

    const-string v3, "gads:picture_in_picture:offset_dp"

    invoke-static {v0, v3, v2, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 23
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 5

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v1, 0xc

    .line 49
    const-string v2, "key"

    const-string v3, "gads:picture_in_picture:outer_clipping_radius_dp"

    invoke-static {v0, v3, v2, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 5

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/4 v1, 0x4

    .line 43
    const-string v2, "key"

    const-string v3, "gads:picture_in_picture:padding_dp"

    invoke-static {v0, v3, v2, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
