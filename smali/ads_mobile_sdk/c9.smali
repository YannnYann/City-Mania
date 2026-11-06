###### Class ads_mobile_sdk.c9 (ads_mobile_sdk.c9)
.class public final Lads_mobile_sdk/c9;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 569
    invoke-static {}, Lads_mobile_sdk/d9;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/d9;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/d9;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/d9;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/d9;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/d9;->-$$Nest$fputbitField0_(Lads_mobile_sdk/d9;I)V

    .line 9
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/d9;->-$$Nest$fputcreateTimeMs_(Lads_mobile_sdk/d9;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/b9;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/d9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Lads_mobile_sdk/b9;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/d9;->-$$Nest$fputstatus_(Lads_mobile_sdk/d9;I)V

    .line 14
    invoke-static {v0}, Lads_mobile_sdk/d9;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/d9;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {v0, p1}, Lads_mobile_sdk/d9;->-$$Nest$fputbitField0_(Lads_mobile_sdk/d9;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/d9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/d9;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/d9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/d9;->c(Ljava/lang/String;)V

    return-void
.end method
