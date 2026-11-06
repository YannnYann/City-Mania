###### Class ads_mobile_sdk.n1 (ads_mobile_sdk.n1)
.class public final Lads_mobile_sdk/n1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 596
    invoke-static {}, Lads_mobile_sdk/o1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/o1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 23
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    .line 25
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 26
    invoke-static {v0, v1}, Lads_mobile_sdk/o1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o1;I)V

    .line 27
    invoke-static {v0, p1}, Lads_mobile_sdk/o1;->-$$Nest$fputandroidApiVersion_(Lads_mobile_sdk/o1;I)V

    return-void
.end method

.method public final a(J)V
    .registers 5

    .line 29
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    .line 31
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/o1;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 32
    invoke-static {v0, v1}, Lads_mobile_sdk/o1;->-$$Nest$fputbitField0_(Lads_mobile_sdk/o1;I)V

    .line 33
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/o1;->-$$Nest$fputversionCode_(Lads_mobile_sdk/o1;J)V

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

    check-cast v0, Lads_mobile_sdk/o1;

    .line 16
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 18
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o1;->-$$Nest$fputpools_(Lads_mobile_sdk/o1;Lads_mobile_sdk/ju1;)V

    .line 20
    :cond_1f
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/rx0;)V
    .registers 5

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_22

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o1;->-$$Nest$fputpools_(Lads_mobile_sdk/o1;Lads_mobile_sdk/ju1;)V

    .line 10
    :cond_22
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

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

    check-cast v0, Lads_mobile_sdk/o1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/o1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/o1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/o1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/o1;->-$$Nest$fputpools_(Lads_mobile_sdk/o1;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    .line 655
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/o1;

    .line 656
    invoke-static {v0}, Lads_mobile_sdk/o1;->-$$Nest$fgetpools_(Lads_mobile_sdk/o1;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 657
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 658
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
