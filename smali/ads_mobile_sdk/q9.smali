###### Class ads_mobile_sdk.q9 (ads_mobile_sdk.q9)
.class public final Lads_mobile_sdk/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lads_mobile_sdk/q9;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/q9;

    invoke-direct {v0}, Lads_mobile_sdk/q9;-><init>()V

    sput-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lads_mobile_sdk/q9;
    .registers 1

    .line 37
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/p9;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
