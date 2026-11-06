###### Class ads_mobile_sdk.hs1 (ads_mobile_sdk.hs1)
.class public final Lads_mobile_sdk/hs1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8060
    invoke-static {}, Lads_mobile_sdk/is1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/is1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/hs1;
    .registers 3

    .line 8245
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 8246
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/is1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/is1;->a(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final b(Lads_mobile_sdk/du;)Lads_mobile_sdk/hs1;
    .registers 3

    .line 8174
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 8175
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/is1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/is1;->b(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final h()Lads_mobile_sdk/hs1;
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/is1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lads_mobile_sdk/is1;->-$$Nest$fputtype_(Lads_mobile_sdk/is1;I)V

    .line 5
    invoke-static {v0}, Lads_mobile_sdk/is1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/is1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lads_mobile_sdk/is1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/is1;I)V

    return-object p0
.end method
