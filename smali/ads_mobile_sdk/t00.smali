###### Class ads_mobile_sdk.t00 (ads_mobile_sdk.t00)
.class public final Lads_mobile_sdk/t00;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 857
    invoke-static {}, Lads_mobile_sdk/u00;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/u00;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/s00;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/u00;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/u00;->a(Lads_mobile_sdk/s00;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/u00;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/u00;->-$$Nest$fgetallowedApis_(Lads_mobile_sdk/u00;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/yh1$c;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/u00;->-$$Nest$fputallowedApis_(Lads_mobile_sdk/u00;Lads_mobile_sdk/yh1$c;)V

    .line 8
    :cond_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/s00;

    .line 9
    invoke-static {v0}, Lads_mobile_sdk/u00;->-$$Nest$fgetallowedApis_(Lads_mobile_sdk/u00;)Lads_mobile_sdk/yh1$c;

    move-result-object v2

    invoke-virtual {v1}, Lads_mobile_sdk/s00;->getNumber()I

    move-result v1

    invoke-interface {v2, v1}, Lads_mobile_sdk/yh1$c;->b(I)V

    goto :goto_1c

    :cond_34
    return-void
.end method

.method public final h()Lads_mobile_sdk/yh1$d;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/u00;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lads_mobile_sdk/yh1$d;

    invoke-static {v0}, Lads_mobile_sdk/u00;->-$$Nest$fgetallowedApis_(Lads_mobile_sdk/u00;)Lads_mobile_sdk/yh1$c;

    move-result-object v0

    invoke-static {}, Lads_mobile_sdk/u00;->-$$Nest$sfgetallowedApis_converter_()Lads_mobile_sdk/yh1$d$a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/yh1$d;-><init>(Lads_mobile_sdk/yh1$c;Lads_mobile_sdk/yh1$d$a;)V

    return-object v1
.end method
