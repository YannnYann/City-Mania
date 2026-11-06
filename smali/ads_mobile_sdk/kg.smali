###### Class ads_mobile_sdk.kg (ads_mobile_sdk.kg)
.class public final Lads_mobile_sdk/kg;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14778
    invoke-static {}, Lads_mobile_sdk/lg;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/lg;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/kg;
    .registers 5

    .line 29728
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 29729
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/lg;

    .line 29730
    invoke-static {v0}, Lads_mobile_sdk/lg;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/lg;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 29731
    invoke-static {v0, v1}, Lads_mobile_sdk/lg;->-$$Nest$fputbitField0_(Lads_mobile_sdk/lg;I)V

    .line 29732
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/lg;->-$$Nest$fputsource_(Lads_mobile_sdk/lg;J)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/rh;)Lads_mobile_sdk/kg;
    .registers 3

    .line 14896
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14897
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/lg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14898
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 14899
    invoke-static {v0, p1}, Lads_mobile_sdk/lg;->-$$Nest$fputisPhysicalInput_(Lads_mobile_sdk/lg;I)V

    .line 14900
    invoke-static {v0}, Lads_mobile_sdk/lg;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/lg;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lads_mobile_sdk/lg;->-$$Nest$fputbitField0_(Lads_mobile_sdk/lg;I)V

    return-object p0
.end method

.method public final b(Lads_mobile_sdk/rh;)Lads_mobile_sdk/kg;
    .registers 3

    .line 14958
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14959
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/lg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14960
    iget p1, p1, Lads_mobile_sdk/rh;->a:I

    .line 14961
    invoke-static {v0, p1}, Lads_mobile_sdk/lg;->-$$Nest$fputverified_(Lads_mobile_sdk/lg;I)V

    .line 14962
    invoke-static {v0}, Lads_mobile_sdk/lg;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/lg;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Lads_mobile_sdk/lg;->-$$Nest$fputbitField0_(Lads_mobile_sdk/lg;I)V

    return-object p0
.end method
