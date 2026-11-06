###### Class ads_mobile_sdk.rc3 (ads_mobile_sdk.rc3)
.class public final Lads_mobile_sdk/rc3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lads_mobile_sdk/ud0;->b(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/rc3;->a:Ljava/util/List;

    .line 69
    invoke-static {p2}, Lads_mobile_sdk/ud0;->b(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/rc3;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/sc3;
    .registers 4

    .line 4
    sget-boolean v0, Lads_mobile_sdk/rc3;->c:Z

    const-string v1, "Codegen error?  Duplicates in the provider list"

    if-nez v0, :cond_15

    iget-object v2, p0, Lads_mobile_sdk/rc3;->a:Ljava/util/List;

    invoke-static {v2}, Lads_mobile_sdk/ud0;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_15
    if-nez v0, :cond_26

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/rc3;->b:Ljava/util/List;

    invoke-static {v0}, Lads_mobile_sdk/ud0;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_26

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 9
    :cond_26
    :goto_26
    new-instance v0, Lads_mobile_sdk/sc3;

    iget-object v1, p0, Lads_mobile_sdk/rc3;->a:Ljava/util/List;

    iget-object v2, p0, Lads_mobile_sdk/rc3;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/sc3;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 1
    sget-boolean v0, Lads_mobile_sdk/rc3;->c:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Codegen error? Null provider"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_f
    :goto_f
    iget-object v0, p0, Lads_mobile_sdk/rc3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
