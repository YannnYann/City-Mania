###### Class ads_mobile_sdk.vh1 (ads_mobile_sdk.vh1)
.class public final Lads_mobile_sdk/vh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;
.implements Lads_mobile_sdk/ks1;


# static fields
.field public static final b:Lads_mobile_sdk/vh1;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/vh1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/vh1;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/vh1;->b:Lads_mobile_sdk/vh1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lads_mobile_sdk/vh1;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;
    .registers 2

    .line 2
    new-instance v0, Lads_mobile_sdk/vh1;

    if-eqz p0, :cond_8

    invoke-direct {v0, p0}, Lads_mobile_sdk/vh1;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "instance cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 61
    iget-object v0, p0, Lads_mobile_sdk/vh1;->a:Ljava/lang/Object;

    return-object v0
.end method
