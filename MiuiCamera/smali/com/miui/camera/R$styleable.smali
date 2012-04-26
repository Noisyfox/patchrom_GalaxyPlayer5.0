.class public final Lcom/miui/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I

.field public static final ProgressBar:[I

.field public static final SeekBar:[I

.field public static final Theme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 746
    new-array v0, v4, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v3

    sput-object v0, Lcom/miui/camera/R$styleable;->CameraPreference:[I

    .line 775
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/camera/R$styleable;->IconIndicator:[I

    .line 810
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/camera/R$styleable;->IconListPreference:[I

    .line 849
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/camera/R$styleable;->ListPreference:[I

    .line 924
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/camera/R$styleable;->ProgressBar:[I

    .line 988
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/camera/R$styleable;->SeekBar:[I

    .line 1013
    new-array v0, v4, [I

    const v1, 0x1010033

    aput v1, v0, v3

    sput-object v0, Lcom/miui/camera/R$styleable;->Theme:[I

    return-void

    .line 775
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 810
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data

    .line 849
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data

    .line 924
    :array_3
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
        0x36t 0x1t 0x1t 0x1t
        0x37t 0x1t 0x1t 0x1t
        0x38t 0x1t 0x1t 0x1t
        0x3ct 0x1t 0x1t 0x1t
        0x3ft 0x1t 0x1t 0x1t
        0x40t 0x1t 0x1t 0x1t
    .end array-data

    .line 988
    :array_4
    .array-data 0x4
        0x42t 0x1t 0x1t 0x1t
        0x43t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
