###### Class ads_mobile_sdk.dr3 (ads_mobile_sdk.dr3)
.class public final Lads_mobile_sdk/dr3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lads_mobile_sdk/dr3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/dr3;

    invoke-direct {v0}, Lads_mobile_sdk/dr3;-><init>()V

    sput-object v0, Lads_mobile_sdk/dr3;->a:Lads_mobile_sdk/dr3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    const-string v0, "Creating Thread with default priority"

    return-object v0
.end method
