###### Class io.bidmachine.ProtoExtConstants (io.bidmachine.ProtoExtConstants)
.class public Lio/bidmachine/ProtoExtConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ProtoExtConstants$Source;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID:Ljava/lang/String; = "bm_ad_unit_id"

.field static final NETWORK:Ljava/lang/String; = "network"

.field static final NETWORKS_INFO:Ljava/lang/String; = "networks_info"

.field static final NETWORK_ADAPTER_VERSION:Ljava/lang/String; = "network_adapter_version"

.field static final NETWORK_VERSION:Ljava/lang/String; = "network_version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.ProtoExtConstants.Source (io.bidmachine.ProtoExtConstants$Source)
.class public final Lio/bidmachine/ProtoExtConstants$Source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ProtoExtConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation


# static fields
.field public static final OMID_PN:Ljava/lang/String; = "omidpn"

.field public static final OMID_PV:Ljava/lang/String; = "omidpv"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
