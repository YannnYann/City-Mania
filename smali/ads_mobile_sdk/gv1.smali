###### Class ads_mobile_sdk.gv1 (ads_mobile_sdk.gv1)
.class public final Lads_mobile_sdk/gv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/dv1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dv1;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/ev1;
    .registers 3

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ev1;

    return-object v0
.end method

.method public final synthetic a(Lads_mobile_sdk/lo0;Ljava/util/ArrayList;)V
    .registers 4

    .line 37
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dv1;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic a(Lads_mobile_sdk/no0;Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 39
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dv1;->a(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final b()Lads_mobile_sdk/lo0;
    .registers 4

    .line 3
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 4
    iget-object v1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {v1}, Lads_mobile_sdk/dv1;->h()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAdaptersList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic b(Lads_mobile_sdk/lo0;Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dv1;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic c()Lads_mobile_sdk/no0;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/no0;

    .line 2
    iget-object v1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {v1}, Lads_mobile_sdk/dv1;->i()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getDataMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final d()Lads_mobile_sdk/lo0;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 2
    iget-object v1, p0, Lads_mobile_sdk/gv1;->a:Lads_mobile_sdk/dv1;

    invoke-virtual {v1}, Lads_mobile_sdk/dv1;->j()Ljava/util/List;

    move-result-object v1

    const-string v2, "getWaterfallAdaptersList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    return-object v0
.end method
