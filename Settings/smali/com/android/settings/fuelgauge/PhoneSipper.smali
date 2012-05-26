.class Lcom/android/settings/fuelgauge/PhoneSipper;
.super Lcom/android/settings/fuelgauge/BatterySipper;
.source "BatterySipper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/fuelgauge/PhoneSipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings/fuelgauge/PhoneSipper$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PhoneSipper$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PhoneSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    sget-object v0, Lcom/android/settings/fuelgauge/PhoneSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090347

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    const v0, 0x7f02006f

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    sget-object v0, Lcom/android/settings/fuelgauge/PhoneSipper;->mContext:Landroid/content/Context;

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
    .locals 6
    .parameter "uSecNow"

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    sget-object v1, Lcom/android/settings/fuelgauge/PhoneSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v2, Lcom/android/settings/fuelgauge/PhoneSipper;->mStatsType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    aput-wide v1, v0, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    sget-object v1, Lcom/android/settings/fuelgauge/PhoneSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "radio.active"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v3, v3, v5

    long-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    aput-wide v1, v0, v5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PhoneSipper;->sumTimeAndPower()V

    return-void
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PhoneSipper;->fillTimeAndPower()V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/PhoneSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090351

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method