###### Class ads_mobile_sdk.ji3 (ads_mobile_sdk.ji3)
.class public final Lads_mobile_sdk/ji3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zv;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ji3;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ji3;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ji3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/yv;

    iget-object v0, p0, Lads_mobile_sdk/ji3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ex0;

    .line 3
    const-string v1, "cldSignalSource"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lads_mobile_sdk/jb2;

    .line 233
    sget-object v3, Lads_mobile_sdk/lg3;->b:Lads_mobile_sdk/lg3;

    .line 234
    sget-object v4, Lads_mobile_sdk/qf3;->b:Lads_mobile_sdk/qf3;

    .line 235
    sget-object v5, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lads_mobile_sdk/y11;->s:Lads_mobile_sdk/y11;

    invoke-static {v0, v5}, Lads_mobile_sdk/fk3;->a(Lads_mobile_sdk/ex0;Lads_mobile_sdk/y11;)J

    move-result-wide v5

    .line 237
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jb2;-><init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;J)V

    return-object v1
.end method
