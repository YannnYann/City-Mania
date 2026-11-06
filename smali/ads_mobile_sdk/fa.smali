###### Class ads_mobile_sdk.fa (ads_mobile_sdk.fa)
.class public final Lads_mobile_sdk/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Lads_mobile_sdk/fa;


# instance fields
.field public final a:Lads_mobile_sdk/ia;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/fa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/id0;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lads_mobile_sdk/id0;->a()Lads_mobile_sdk/ia;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fa;->a:Lads_mobile_sdk/ia;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/InputEvent;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lads_mobile_sdk/fa;->a:Lads_mobile_sdk/ia;

    .line 206
    iget-object v0, v0, Lads_mobile_sdk/ia;->b:Lads_mobile_sdk/wj3;

    .line 207
    iget-object v1, v0, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 208
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/qj3;

    if-nez v1, :cond_16

    .line 211
    iget-object p1, v0, Lads_mobile_sdk/wj3;->e:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->j:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return-void

    .line 213
    :cond_16
    invoke-interface {v1, p1}, Lads_mobile_sdk/qj3;->a(Landroid/view/InputEvent;)V

    return-void
.end method
