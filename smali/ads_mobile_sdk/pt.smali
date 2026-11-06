###### Class ads_mobile_sdk.pt (ads_mobile_sdk.pt)
.class public final Lads_mobile_sdk/pt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/pt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/pt;

    invoke-direct {v0}, Lads_mobile_sdk/pt;-><init>()V

    sput-object v0, Lads_mobile_sdk/pt;->a:Lads_mobile_sdk/pt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    goto :goto_c

    .line 2
    :cond_7
    sget-object p1, Lads_mobile_sdk/qt;->c:Lads_mobile_sdk/qt;

    goto :goto_c

    .line 3
    :cond_a
    sget-object p1, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    :goto_c
    if-eqz p1, :cond_f

    return v0

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
