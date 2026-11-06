###### Class ads_mobile_sdk.vi3 (ads_mobile_sdk.vi3)
.class public final Lads_mobile_sdk/vi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/qw1;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/vi3;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/vi3;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vi3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ex0;

    iget-object v1, p0, Lads_mobile_sdk/vi3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/pw1;

    .line 3
    const-string v1, "flags"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "memorySignalSource"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v2, Lads_mobile_sdk/jb2;

    .line 289
    sget-object v4, Lads_mobile_sdk/lg3;->b:Lads_mobile_sdk/lg3;

    .line 290
    sget-object v5, Lads_mobile_sdk/qf3;->b:Lads_mobile_sdk/qf3;

    .line 291
    sget-object v1, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 292
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lads_mobile_sdk/y11;->H:Lads_mobile_sdk/y11;

    invoke-static {v0, v1}, Lads_mobile_sdk/fk3;->a(Lads_mobile_sdk/ex0;Lads_mobile_sdk/y11;)J

    move-result-wide v6

    .line 293
    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/jb2;-><init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;J)V

    return-object v2
.end method
