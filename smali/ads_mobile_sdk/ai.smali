###### Class ads_mobile_sdk.ai (ads_mobile_sdk.ai)
.class public final Lads_mobile_sdk/ai;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34536
    invoke-static {}, Lads_mobile_sdk/bi;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/bi;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/ai;
    .registers 3

    .line 34619
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 34620
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/bi;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bi;->a(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/ph;)Lads_mobile_sdk/ai;
    .registers 3

    .line 3876
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3877
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/bi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3878
    iget p1, p1, Lads_mobile_sdk/ph;->a:I

    .line 3879
    invoke-static {v0, p1}, Lads_mobile_sdk/bi;->-$$Nest$fputencryptionMethod_(Lads_mobile_sdk/bi;I)V

    .line 3880
    invoke-static {v0}, Lads_mobile_sdk/bi;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/bi;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Lads_mobile_sdk/bi;->-$$Nest$fputbitField0_(Lads_mobile_sdk/bi;I)V

    return-object p0
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/bi;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bi;->b(Lads_mobile_sdk/du;)V

    return-void
.end method

.method public final h()Lads_mobile_sdk/ai;
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/bi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Lads_mobile_sdk/bi;->-$$Nest$fputprotoName_(Lads_mobile_sdk/bi;I)V

    .line 5
    invoke-static {v0}, Lads_mobile_sdk/bi;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/bi;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lads_mobile_sdk/bi;->-$$Nest$fputbitField0_(Lads_mobile_sdk/bi;I)V

    return-object p0
.end method
