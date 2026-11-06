###### Class ads_mobile_sdk.ed (ads_mobile_sdk.ed)
.class public final Lads_mobile_sdk/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/sx0;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sx0;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/ed;->b:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/ed;->a:Lads_mobile_sdk/sx0;

    .line 41
    invoke-virtual {p0, p2}, Lads_mobile_sdk/ed;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/ed;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
