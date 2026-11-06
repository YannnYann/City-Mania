###### Class ads_mobile_sdk.jk3 (ads_mobile_sdk.jk3)
.class public final Lads_mobile_sdk/jk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dw2;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lads_mobile_sdk/dw2;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/jk3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/jr0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lads_mobile_sdk/jk3;->c:Ljava/lang/Object;

    iput-object v0, p0, Lads_mobile_sdk/jk3;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/jk3;->a:Lads_mobile_sdk/dw2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/jr0;)Lads_mobile_sdk/dw2;
    .registers 2

    .line 2
    instance-of v0, p0, Lads_mobile_sdk/jk3;

    if-nez v0, :cond_f

    instance-of v0, p0, Lads_mobile_sdk/do0;

    if-eqz v0, :cond_9

    goto :goto_f

    .line 5
    :cond_9
    new-instance v0, Lads_mobile_sdk/jk3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/jk3;-><init>(Lads_mobile_sdk/jr0;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/jk3;->b:Ljava/lang/Object;

    .line 44
    sget-object v1, Lads_mobile_sdk/jk3;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 46
    iget-object v0, p0, Lads_mobile_sdk/jk3;->a:Lads_mobile_sdk/dw2;

    if-nez v0, :cond_d

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/jk3;->b:Ljava/lang/Object;

    return-object v0

    .line 51
    :cond_d
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lads_mobile_sdk/jk3;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lads_mobile_sdk/jk3;->a:Lads_mobile_sdk/dw2;

    :cond_16
    return-object v0
.end method
