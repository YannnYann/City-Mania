###### Class ads_mobile_sdk.x90 (ads_mobile_sdk.x90)
.class public final Lads_mobile_sdk/x90;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51555
    invoke-static {}, Lads_mobile_sdk/y90;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/y90;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lads_mobile_sdk/x90;
    .registers 4

    .line 38007
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 38008
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/y90;

    .line 38009
    invoke-static {v0}, Lads_mobile_sdk/y90;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/y90;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 38010
    invoke-static {v0, v1}, Lads_mobile_sdk/y90;->-$$Nest$fputbitField0_(Lads_mobile_sdk/y90;I)V

    .line 38011
    invoke-static {v0, p1}, Lads_mobile_sdk/y90;->-$$Nest$fputid_(Lads_mobile_sdk/y90;I)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/a90;)Lads_mobile_sdk/x90;
    .registers 3

    .line 24161
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 24162
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/y90;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/y90;->a(Lads_mobile_sdk/a90;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/w90;)Lads_mobile_sdk/x90;
    .registers 3

    .line 51946
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 51947
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/y90;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51948
    iget p1, p1, Lads_mobile_sdk/w90;->a:I

    .line 51949
    invoke-static {v0, p1}, Lads_mobile_sdk/y90;->-$$Nest$fputadResourceType_(Lads_mobile_sdk/y90;I)V

    .line 51950
    invoke-static {v0}, Lads_mobile_sdk/y90;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/y90;)I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    invoke-static {v0, p1}, Lads_mobile_sdk/y90;->-$$Nest$fputbitField0_(Lads_mobile_sdk/y90;I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lads_mobile_sdk/x90;
    .registers 3

    .line 10269
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 10270
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/y90;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/y90;->b(Ljava/lang/String;)V

    return-object p0
.end method
