.class Lcom/android/settings/fuelgauge/BluetoothSipper;
.super Lcom/android/settings/fuelgauge/BatterySipper;
.source "BatterySipper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/fuelgauge/BluetoothSipper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings/fuelgauge/BluetoothSipper$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BluetoothSipper$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BluetoothSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    sget-object v0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090345

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    const v0, 0x7f02004e

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    sget-object v0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPingCount:I

    return-void
.end method


# virtual methods
.method public compute(J)V
    .locals 6
    .parameter "uSecNow"

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v1, Lcom/android/settings/fuelgauge/BluetoothSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v2, Lcom/android/settings/fuelgauge/BluetoothSipper;->mStatsType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    aput-wide v1, v0, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v1, v1, v5

    div-long/2addr v1, v3

    long-to-double v1, v1

    sget-object v3, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "bluetooth.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    aput-wide v1, v0, v5

    sget-object v0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPingCount:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPingCount:I

    int-to-double v2, v2

    sget-object v4, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BluetoothSipper;->sumTimeAndPower()V

    return-void
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "parent"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BluetoothSipper;->fillTimeAndPower()V

    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BluetoothSipper;->fillPowerSlices(I)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090359

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatterySipper;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/settings/fuelgauge/BluetoothSipper;->mPingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
