###### Class ads_mobile_sdk.v34 (ads_mobile_sdk.v34)
.class public final synthetic Lads_mobile_sdk/v34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic b:Lads_mobile_sdk/v34;

.field public static final synthetic c:Lads_mobile_sdk/v34;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/v34;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lads_mobile_sdk/v34;-><init>(I)V

    sput-object v0, Lads_mobile_sdk/v34;->c:Lads_mobile_sdk/v34;

    new-instance v0, Lads_mobile_sdk/v34;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/v34;-><init>(I)V

    sput-object v0, Lads_mobile_sdk/v34;->b:Lads_mobile_sdk/v34;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lads_mobile_sdk/v34;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lads_mobile_sdk/v34;->a:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lads_mobile_sdk/l44;->a(Ljava/lang/Object;)Lads_mobile_sdk/l44;

    move-result-object v0

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Lads_mobile_sdk/y34;

    invoke-direct {v0}, Lads_mobile_sdk/y34;-><init>()V

    return-object v0
.end method
