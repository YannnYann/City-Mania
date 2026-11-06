###### Class ads_mobile_sdk.k34 (ads_mobile_sdk.k34)
.class public final synthetic Lads_mobile_sdk/k34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/d44;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lads_mobile_sdk/k34;->a:J

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-wide v0, p0, Lads_mobile_sdk/k34;->a:J

    check-cast p1, Lads_mobile_sdk/g44;

    :try_start_4
    iget-object p1, p1, Lads_mobile_sdk/g44;->a:Lads_mobile_sdk/c44;

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object v0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/c44;->a(Lads_mobile_sdk/l44;)V
    :try_end_d
    .catch Lads_mobile_sdk/b44; {:try_start_4 .. :try_end_d} :catch_12

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :catch_12
    sget-object p1, Lads_mobile_sdk/wu2;->b:Lads_mobile_sdk/wu2;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
