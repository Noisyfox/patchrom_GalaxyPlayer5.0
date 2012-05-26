.class Lcom/android/settings/fuelgauge/ScreenSipper;
.super Lcom/android/settings/fuelgauge/BatterySipper;
.source "BatterySipper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/fuelgauge/ScreenSipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings/fuelgauge/ScreenSipper$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/ScreenSipper$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/ScreenSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    sget-object v0, Lcom/android/settings/fuelgauge/ScreenSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090343

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    sget-object v0, Lcom/android/settings/fuelgauge/ScreenSipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compute(J)V
    .locals 11
    .parameter "uSecNow"

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x3e8

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v4, Lcom/android/settings/fuelgauge/ScreenSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v5, Lcom/android/settings/fuelgauge/ScreenSipper;->mStatsType:I

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v8

    aput-wide v4, v3, v10

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v4, v4, v10

    div-long/2addr v4, v8

    long-to-double v4, v4

    sget-object v6, Lcom/android/settings/fuelgauge/ScreenSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v3, v10

    sget-object v3, Lcom/android/settings/fuelgauge/ScreenSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "screen.full"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    .local v1, screenFullPower:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v4, Lcom/android/settings/fuelgauge/ScreenSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v5, Lcom/android/settings/fuelgauge/ScreenSipper;->mStatsType:I

    invoke-virtual {v4, v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v4

    div-long/2addr v4, v8

    aput-wide v4, v3, v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v4, v4, v0

    div-long/2addr v4, v8

    long-to-double v4, v4

    mul-double/2addr v4, v1

    int-to-float v6, v0

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4014

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ScreenSipper;->sumTimeAndPower()V

    return-void
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "parent"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ScreenSipper;->fillTimeAndPower()V

    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/ScreenSipper;->fillPowerSlices(I)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/ScreenSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090355

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
