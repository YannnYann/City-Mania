###### Class ads_mobile_sdk.b81 (ads_mobile_sdk.b81)
.class public final Lads_mobile_sdk/b81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/b81;->a:Lads_mobile_sdk/dw2;

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/b81;->b:Lads_mobile_sdk/dw2;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/b81;->c:Lads_mobile_sdk/dw2;

    .line 44
    iput-object p4, p0, Lads_mobile_sdk/b81;->d:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/b81;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ex0;

    iget-object v1, p0, Lads_mobile_sdk/b81;->b:Lads_mobile_sdk/dw2;

    iget-object v2, p0, Lads_mobile_sdk/b81;->c:Lads_mobile_sdk/dw2;

    iget-object v3, p0, Lads_mobile_sdk/b81;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ja1;

    .line 3
    new-instance v4, Lads_mobile_sdk/a81;

    invoke-direct {v4, v0, v1, v2, v3}, Lads_mobile_sdk/a81;-><init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ja1;)V

    return-object v4
.end method
