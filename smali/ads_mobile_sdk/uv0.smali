###### Class ads_mobile_sdk.uv0 (ads_mobile_sdk.uv0)
.class public final Lads_mobile_sdk/uv0;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 606
    invoke-static {}, Lads_mobile_sdk/vv0;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vv0;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 26
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 27
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 28
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/vv0;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 29
    invoke-static {v0, v1}, Lads_mobile_sdk/vv0;->-$$Nest$fputbitField0_(Lads_mobile_sdk/vv0;I)V

    .line 30
    invoke-static {v0, p1}, Lads_mobile_sdk/vv0;->-$$Nest$fputsessionsSinceUpdate_(Lads_mobile_sdk/vv0;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/k30;)V
    .registers 3

    .line 23
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/vv0;->a(Lads_mobile_sdk/k30;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 16
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 18
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/vv0;->-$$Nest$fputstoredSdkCoreData_(Lads_mobile_sdk/vv0;Lads_mobile_sdk/ju1;)V

    .line 20
    :cond_1f
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_22

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/vv0;->-$$Nest$fputstoredSdkCoreData_(Lads_mobile_sdk/vv0;Lads_mobile_sdk/ju1;)V

    .line 10
    :cond_22
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/vv0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/vv0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h()I
    .registers 2

    .line 727
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 728
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetsessionsSinceUpdate_(Lads_mobile_sdk/vv0;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    .line 883
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 884
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 885
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 886
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vv0;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/vv0;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/vv0;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/vv0;->-$$Nest$fputbitField0_(Lads_mobile_sdk/vv0;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/vv0;->-$$Nest$fputhasSdkInitializedPreviously_(Lads_mobile_sdk/vv0;Z)V

    return-void
.end method
