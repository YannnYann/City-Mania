###### Class ads_mobile_sdk.pi3 (ads_mobile_sdk.pi3)
.class public final Lads_mobile_sdk/pi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/pi3;->a:Lads_mobile_sdk/dw2;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/pi3;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/pi3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/zq0;

    iget-object v0, p0, Lads_mobile_sdk/pi3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ex0;

    .line 3
    const-string v1, "experimentIdsSignalSource"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v1, Lads_mobile_sdk/jb2;

    .line 261
    sget-object v3, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    .line 262
    sget-object v4, Lads_mobile_sdk/qf3;->a:Lads_mobile_sdk/qf3;

    .line 263
    sget-object v5, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 264
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lads_mobile_sdk/y11;->A:Lads_mobile_sdk/y11;

    invoke-static {v0, v5}, Lads_mobile_sdk/fk3;->a(Lads_mobile_sdk/ex0;Lads_mobile_sdk/y11;)J

    move-result-wide v5

    .line 265
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jb2;-><init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;J)V

    return-object v1
.end method
