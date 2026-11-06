###### Class ads_mobile_sdk.or0 (ads_mobile_sdk.or0)
.class public final Lads_mobile_sdk/or0;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 366
    invoke-static {}, Lads_mobile_sdk/pr0;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/pr0;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/or0;
    .registers 3

    .line 475
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 476
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/pr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/pr0;->a(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/iv2;)Lads_mobile_sdk/or0;
    .registers 3

    .line 876
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 877
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/pr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/pr0;->a(Lads_mobile_sdk/iv2;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;
    .registers 3

    .line 1456
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1457
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/pr0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    iget p1, p1, Lads_mobile_sdk/ul3;->a:I

    .line 1459
    invoke-static {v0, p1}, Lads_mobile_sdk/pr0;->-$$Nest$fputstatus_(Lads_mobile_sdk/pr0;I)V

    .line 1460
    invoke-static {v0}, Lads_mobile_sdk/pr0;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/pr0;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {v0, p1}, Lads_mobile_sdk/pr0;->-$$Nest$fputbitField0_(Lads_mobile_sdk/pr0;I)V

    return-object p0
.end method

.method public final b(Lads_mobile_sdk/du;)Lads_mobile_sdk/or0;
    .registers 3

    .line 527
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 528
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/pr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/pr0;->b(Lads_mobile_sdk/du;)V

    return-object p0
.end method
