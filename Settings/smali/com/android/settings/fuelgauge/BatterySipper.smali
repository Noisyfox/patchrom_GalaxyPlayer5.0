.class abstract Lcom/android/settings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;

.field protected static mMaxPower:D

.field protected static mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field protected static mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field protected static mStatsType:I

.field protected static mTotalPower:D


# instance fields
.field private mDetailsView:Landroid/view/ViewGroup;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mName:Ljava/lang/String;

.field protected mPower:D

.field protected mPowerSlices:[D

.field protected mTime:J

.field protected mTimeSlices:[J

.field protected mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->resolveIcon()V

    return-void
.end method

.method public static setup(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 2
    .parameter "context"
    .parameter "profile"
    .parameter "stats"
    .parameter "statsType"

    .prologue
    const-wide/16 v0, 0x0

    sput-object p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    sput-object p2, Lcom/android/settings/fuelgauge/BatterySipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput p3, Lcom/android/settings/fuelgauge/BatterySipper;->mStatsType:I

    sput-wide v0, Lcom/android/settings/fuelgauge/BatterySipper;->mMaxPower:D

    sput-wide v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    iget-wide v0, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Lcom/android/settings/fuelgauge/BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public abstract compute(J)V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "parent"

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mDetailsView:Landroid/view/ViewGroup;

    return-void
.end method

.method final fillItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "label"
    .parameter "value"

    .prologue
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, item:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x7f0c0003

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, labelView:Landroid/widget/TextView;
    const v3, 0x7f0c00d4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, valueView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final fillPowerSlices(I)V
    .locals 5
    .parameter "labelsId"

    .prologue
    sget-object v2, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, labels:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    aget-wide v3, v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fuelgauge/BatterySipper;->formatPower(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatterySipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final fillTimeAndPower()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    long-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/BatterySipper;->formatTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    const v1, 0x7f090493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/BatterySipper;->formatPower(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final formatBytes(D)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settings/fuelgauge/Utils;->formatBytes(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final formatPercentage(D)Ljava/lang/String;
    .locals 5
    .parameter "percent"

    .prologue
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final formatPower(D)Ljava/lang/String;
    .locals 6
    .parameter "power"

    .prologue
    const-wide v4, 0x40ac200000000000L

    const-wide v2, 0x408f400000000000L

    mul-double v0, p1, v2

    div-double/2addr v0, v4

    double-to-int v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v1, p1, v2

    div-double/2addr v1, v4

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final formatTime(D)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckInDetails()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected resolveIcon()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method protected sumTimeAndPower()V
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    aget-wide v3, v3, v0

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    sget-wide v3, Lcom/android/settings/fuelgauge/BatterySipper;->mMaxPower:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    sput-wide v1, Lcom/android/settings/fuelgauge/BatterySipper;->mMaxPower:D

    :cond_2
    sget-wide v1, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    add-double/2addr v1, v3

    sput-wide v1, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    iget v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return-void
.end method
