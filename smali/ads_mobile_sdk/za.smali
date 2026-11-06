###### Class ads_mobile_sdk.za (ads_mobile_sdk.za)
.class public final Lads_mobile_sdk/za;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 597
    invoke-static {}, Lads_mobile_sdk/ab;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ab;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/za;
    .registers 5

    .line 687
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 688
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    .line 689
    invoke-static {v0}, Lads_mobile_sdk/ab;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ab;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 690
    invoke-static {v0, v1}, Lads_mobile_sdk/ab;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ab;I)V

    .line 691
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ab;->-$$Nest$fputapiLevel_(Lads_mobile_sdk/ab;J)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/za;
    .registers 3

    .line 3162
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3163
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ab;->a(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/j61;)Lads_mobile_sdk/za;
    .registers 3

    .line 2524
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 2525
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2526
    invoke-virtual {p1}, Lads_mobile_sdk/j61;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/ab;->-$$Nest$fputhostType_(Lads_mobile_sdk/ab;I)V

    .line 2527
    invoke-static {v0}, Lads_mobile_sdk/ab;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ab;)I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-static {v0, p1}, Lads_mobile_sdk/ab;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ab;I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lads_mobile_sdk/za;
    .registers 3

    .line 1485
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1486
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ab;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(J)Lads_mobile_sdk/za;
    .registers 5

    .line 841
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 842
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    .line 843
    invoke-static {v0}, Lads_mobile_sdk/ab;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ab;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 844
    invoke-static {v0, v1}, Lads_mobile_sdk/ab;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ab;I)V

    .line 845
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ab;->-$$Nest$fputappVersionCode_(Lads_mobile_sdk/ab;J)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/za;
    .registers 3

    .line 1752
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1753
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ab;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lads_mobile_sdk/za;
    .registers 3

    .line 737
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 738
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ab;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ab;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Lads_mobile_sdk/za;
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/mh2;->b:Lads_mobile_sdk/mh2;

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v1, Lads_mobile_sdk/ab;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/mh2;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lads_mobile_sdk/ab;->-$$Nest$fputosType_(Lads_mobile_sdk/ab;I)V

    .line 5
    invoke-static {v1}, Lads_mobile_sdk/ab;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ab;)I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-static {v1, v0}, Lads_mobile_sdk/ab;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ab;I)V

    return-object p0
.end method
