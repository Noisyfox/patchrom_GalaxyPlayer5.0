.class Lcom/android/settings/fuelgauge/RadioSipper;
.super Lcom/android/settings/fuelgauge/BatterySipper;
.source "BatterySipper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/fuelgauge/RadioSipper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mNoCoveragePercent:D

.field private mSignalTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings/fuelgauge/RadioSipper$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/RadioSipper$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/RadioSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    sget-object v0, Lcom/android/settings/fuelgauge/RadioSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090346

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    const v0, 0x7f020053

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    sget-object v0, Lcom/android/settings/fuelgauge/RadioSipper;->mContext:Landroid/content/Context;

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/os/Parcel;)V

    iput v5, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v1, v1, v5

    long-to-double v1, v1

    iget v3, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mNoCoveragePercent:D

    :cond_1
    return-void
.end method


# virtual methods
.method public compute(J)V
    .locals 9
    .parameter "uSecNow"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x5

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v2, Lcom/android/settings/fuelgauge/RadioSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v3, Lcom/android/settings/fuelgauge/RadioSipper;->mStatsType:I

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    div-long/2addr v2, v7

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v2, v2, v0

    div-long/2addr v2, v7

    long-to-double v2, v2

    sget-object v4, Lcom/android/settings/fuelgauge/RadioSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "radio.on"

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    iget v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v2, Lcom/android/settings/fuelgauge/RadioSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v3, Lcom/android/settings/fuelgauge/RadioSipper;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    aput-wide v2, v1, v6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v2, v2, v6

    div-long/2addr v2, v7

    long-to-double v2, v2

    sget-object v4, Lcom/android/settings/fuelgauge/RadioSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "radio.scanning"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v6

    iget v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mSignalTime:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mNoCoveragePercent:D

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RadioSipper;->sumTimeAndPower()V

    return-void
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "parent"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RadioSipper;->fillTimeAndPower()V

    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/RadioSipper;->fillPowerSlices(I)V

    sget-object v0, Lcom/android/settings/fuelgauge/RadioSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f09034f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/RadioSipper;->mNoCoveragePercent:D

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/RadioSipper;->formatPercentage(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/RadioSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/RadioSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090353

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
