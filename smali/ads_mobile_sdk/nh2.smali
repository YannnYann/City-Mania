###### Class ads_mobile_sdk.nh2 (ads_mobile_sdk.nh2)
.class public abstract Lads_mobile_sdk/nh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/h0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/nh2;->a(Landroidx/activity/ComponentActivity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public abstract a(Landroidx/activity/ComponentActivity;Landroid/widget/LinearLayout;)V
.end method
