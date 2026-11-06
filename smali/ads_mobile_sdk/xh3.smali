###### Class ads_mobile_sdk.xh3 (ads_mobile_sdk.xh3)
.class public final Lads_mobile_sdk/xh3;
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lads_mobile_sdk/xh3;->a:Lads_mobile_sdk/dw2;

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/xh3;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xh3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/a4;

    iget-object v1, p0, Lads_mobile_sdk/xh3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ex0;

    .line 3
    const-string v2, "adIdInfoSignalSource"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flags"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v2, Lads_mobile_sdk/pu;

    .line 51
    sget-object v3, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    .line 52
    sget-object v3, Lads_mobile_sdk/qf3;->a:Lads_mobile_sdk/qf3;

    .line 53
    sget-object v3, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lads_mobile_sdk/y11;->d:Lads_mobile_sdk/y11;

    invoke-static {v1, v3}, Lads_mobile_sdk/fk3;->a(Lads_mobile_sdk/ex0;Lads_mobile_sdk/y11;)J

    move-result-wide v3

    .line 55
    invoke-direct {v2, v0, v3, v4}, Lads_mobile_sdk/pu;-><init>(Lads_mobile_sdk/ou;J)V

    return-object v2
.end method
