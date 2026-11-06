###### Class info.flowersoft.theotown.city.components.ComponentType (info.flowersoft.theotown.city.components.ComponentType)
.class public interface abstract Linfo/flowersoft/theotown/city/components/ComponentType;
.super Ljava/lang/Object;
.source "ComponentType.java"


# static fields
.field public static final names:[Ljava/lang/String;

.field public static final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x18

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Linfo/flowersoft/theotown/city/components/ComponentType;->values:[I

    .line 40
    const-string v23, "Transportation System"

    const-string v24, "Scenario"

    const-string v1, "Budget"

    const-string v2, "Date"

    const-string v3, "Influence"

    const-string v4, "Management"

    const-string v5, "Notificator"

    const-string v6, "Power"

    const-string v7, "Catastrophe"

    const-string v8, "Traffic"

    const-string v9, "Water"

    const-string v10, "People"

    const-string v11, "Demand"

    const-string v12, "Requirement"

    const-string v13, "Weather"

    const-string v14, "Tool"

    const-string v15, "Build mask"

    const-string v16, "Sound"

    const-string v17, "Transportation"

    const-string v18, "Statistics"

    const-string v19, "Signs"

    const-string v20, "Airport"

    const-string v21, "Idle game"

    const-string v22, "Neighborhood"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/components/ComponentType;->names:[Ljava/lang/String;

    return-void

    :array_40
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data
.end method
