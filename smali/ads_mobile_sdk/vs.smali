###### Class ads_mobile_sdk.vs (ads_mobile_sdk.vs)
.class public final Lads_mobile_sdk/vs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ss;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ss;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/ts;
    .registers 3

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ts;

    return-object v0
.end method

.method public final synthetic a(Lads_mobile_sdk/no0;Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 37
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ss;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 39
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ss;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 178
    iget-object v0, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ss;->a(Z)V

    return-void
.end method

.method public final synthetic b()Lads_mobile_sdk/no0;
    .registers 4

    .line 189
    new-instance v0, Lads_mobile_sdk/no0;

    .line 190
    iget-object v1, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v1}, Lads_mobile_sdk/ss;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getServerParametersMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {v0, v1}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ss;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/vs;->a:Lads_mobile_sdk/ss;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ss;->b(Z)V

    return-void
.end method
