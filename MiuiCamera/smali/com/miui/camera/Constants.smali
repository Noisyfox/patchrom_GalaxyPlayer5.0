.class public Lcom/miui/camera/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/Constants$FOCUS_TYPE;,
        Lcom/miui/camera/Constants$FOCUS_STATE;,
        Lcom/miui/camera/Constants$ZOOM_STATE;,
        Lcom/miui/camera/Constants$CAMERA_STATE;,
        Lcom/miui/camera/Constants$DEVICE;
    }
.end annotation


# static fields
.field public static final CAMERA_SETTING_ITEM_IDS:[I

.field public static final VIDEO_DURATION_MMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/camera/Constants;->CAMERA_SETTING_ITEM_IDS:[I

    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    sput v0, Lcom/miui/camera/Constants;->VIDEO_DURATION_MMS:I

    return-void

    .line 197
    nop

    :array_0
    .array-data 0x4
        0x1ct 0x0t 0xdt 0x7ft
        0x1dt 0x0t 0xdt 0x7ft
        0x1et 0x0t 0xdt 0x7ft
        0x1ft 0x0t 0xdt 0x7ft
        0x20t 0x0t 0xdt 0x7ft
        0x21t 0x0t 0xdt 0x7ft
        0x22t 0x0t 0xdt 0x7ft
        0x23t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
