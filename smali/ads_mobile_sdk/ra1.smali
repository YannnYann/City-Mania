###### Class ads_mobile_sdk.ra1 (ads_mobile_sdk.ra1)
.class public final Lads_mobile_sdk/ra1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/jb3;

.field public final synthetic b:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/jb3;)V
    .registers 3

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/ra1;->a:Lads_mobile_sdk/jb3;

    iput-object p1, p0, Lads_mobile_sdk/ra1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ra1;->a:Lads_mobile_sdk/jb3;

    iget-object v1, p0, Lads_mobile_sdk/ra1;->b:Lads_mobile_sdk/if1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "debugModeProvider"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
