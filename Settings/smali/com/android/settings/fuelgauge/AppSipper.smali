.class Lcom/android/settings/fuelgauge/AppSipper;
.super Lcom/android/settings/fuelgauge/BatterySipper;
.source "BatterySipper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/fuelgauge/AppSipper;",
            ">;"
        }
    .end annotation
.end field

.field private static mAverageDataCost:D

.field private static mCpuSpeedStepTimes:[J

.field private static mInitialized:Z

.field private static mPowerCpuNormal:[D

.field private static mSpeedSteps:I


# instance fields
.field private mCpuFgTime:J

.field private mCpuTime:J

.field private mDefaultPackage:Ljava/lang/String;

.field private mGpsTime:J

.field private mRxBytes:J

.field private mTxBytes:J

.field private mUidStat:Landroid/os/BatteryStats$Uid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fuelgauge/AppSipper;->mInitialized:Z

    new-instance v0, Lcom/android/settings/fuelgauge/AppSipper$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/AppSipper$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/AppSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/BatteryStats$Uid;)V
    .locals 2
    .parameter "uid"

    .prologue
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppSipper;->resolveIcon()V

    sget-object v4, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    .local v3, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .local v2, uidStat:Landroid/os/BatteryStats$Uid;
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    if-ne v4, v5, :cond_1

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    .end local v2           #uidStat:Landroid/os/BatteryStats$Uid;
    :cond_0
    return-void

    .restart local v2       #uidStat:Landroid/os/BatteryStats$Uid;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getAverageDataCost(J)D
    .locals 14
    .parameter "uSecNow"

    .prologue
    const-wide/32 v0, 0xf4240

    .local v0, WIFI_BPS:J
    const-wide/32 v0, 0x30d40

    .local v0, MOBILE_BPS:J
    sget-object v0, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .end local v0           #MOBILE_BPS:J
    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .local v2, WIFI_POWER:D
    sget-object v0, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double/2addr v0, v4

    .local v0, MOBILE_POWER:D
    sget-object v4, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v5, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v4

    sget-object v6, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v7, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .local v4, mobileData:J
    sget-object v6, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v7, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v6

    sget-object v8, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v9, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long v8, v6, v4

    .local v8, wifiData:J
    sget-object v6, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    .local v6, radioDataUptimeMs:J
    sget-object v10, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v11, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual {v10, p0, p1, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v10

    .local v10, wifiUptimeMs:J
    const-wide/16 p0, 0x0

    cmp-long p0, v6, p0

    if-eqz p0, :cond_0

    .end local p0
    const-wide/16 p0, 0x8

    mul-long/2addr p0, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr p0, v12

    div-long/2addr p0, v6

    .local p0, mobileBps:J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-eqz v6, :cond_1

    .end local v6           #radioDataUptimeMs:J
    const-wide/16 v6, 0x8

    mul-long/2addr v6, v8

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    div-long/2addr v6, v10

    .local v6, wifiBps:J
    :goto_1
    const-wide/16 v6, 0x8

    div-long/2addr p0, v6

    .end local v6           #wifiBps:J
    .end local p0           #mobileBps:J
    long-to-double p0, p0

    div-double p0, v0, p0

    .local p0, mobileCostPerByte:D
    const-wide v0, 0x40fe848000000000L

    div-double v0, v2, v0

    .local v0, wifiCostPerByte:D
    add-long v2, v8, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .end local v2           #WIFI_POWER:D
    long-to-double v2, v4

    mul-double/2addr p0, v2

    long-to-double v2, v8

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    add-long v0, v4, v8

    long-to-double v0, v0

    div-double/2addr p0, v0

    .end local v0           #wifiCostPerByte:D
    .end local p0           #mobileCostPerByte:D
    :goto_2
    return-wide p0

    .local v0, MOBILE_POWER:D
    .restart local v2       #WIFI_POWER:D
    .local v6, radioDataUptimeMs:J
    :cond_0
    const-wide/32 p0, 0x30d40

    goto :goto_0

    .end local v6           #radioDataUptimeMs:J
    .local p0, mobileBps:J
    :cond_1
    const-wide/32 v6, 0xf4240

    goto :goto_1

    .end local v2           #WIFI_POWER:D
    .local v0, wifiCostPerByte:D
    .local p0, mobileCostPerByte:D
    :cond_2
    const-wide/16 p0, 0x0

    goto :goto_2
.end method

.method private static initialize(J)V
    .locals 4
    .parameter "uSecNow"

    .prologue
    sget-boolean v1, Lcom/android/settings/fuelgauge/AppSipper;->mInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v1

    sput v1, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    sget v1, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    new-array v1, v1, [D

    sput-object v1, Lcom/android/settings/fuelgauge/AppSipper;->mPowerCpuNormal:[D

    sget v1, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/settings/fuelgauge/AppSipper;->mCpuSpeedStepTimes:[J

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/settings/fuelgauge/AppSipper;->mPowerCpuNormal:[D

    sget-object v2, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "cpu.active"

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/AppSipper;->getAverageDataCost(J)D

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/fuelgauge/AppSipper;->mAverageDataCost:D

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fuelgauge/AppSipper;->mInitialized:Z

    goto :goto_0
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    const-string v0, "*wakelock*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*wifi*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*lost*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compute(J)V
    .locals 45
    .parameter "uSecNow"

    .prologue
    sget-object v37, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    const-string v38, "sensor"

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/SensorManager;

    .local v24, sensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {p1 .. p2}, Lcom/android/settings/fuelgauge/AppSipper;->initialize(J)V

    const-wide/16 v13, 0x0

    .local v13, power:D
    const-wide/16 v7, 0x0

    .local v7, highestDrain:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v17

    .local v17, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v39, v0

    sget v40, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v39

    move-wide/from16 v1, p1

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTime(JI)J

    move-result-wide v39

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-wide v39, v39, v40

    const-wide/16 v41, 0x3e8

    div-long v39, v39, v41

    move-wide/from16 v0, v39

    long-to-double v0, v0

    move-wide/from16 v39, v0

    sget-object v41, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v42, "dsp.audio"

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v41

    mul-double v39, v39, v41

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v39, v0

    sget v40, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v39

    move-wide/from16 v1, p1

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTime(JI)J

    move-result-wide v39

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget-wide v39, v39, v40

    const-wide/16 v41, 0x3e8

    div-long v39, v39, v41

    move-wide/from16 v0, v39

    long-to-double v0, v0

    move-wide/from16 v39, v0

    sget-object v41, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v42, "dsp.video"

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v41

    mul-double v39, v39, v41

    aput-wide v39, v37, v38

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v37

    if-lez v37, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    .local v18, ps:Landroid/os/BatteryStats$Uid$Proc;
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v35

    .local v35, userTime:J
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v29

    .local v29, systemTime:J
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v5

    .local v5, foregroundTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0xa

    mul-long v39, v39, v5

    add-long v37, v37, v39

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    add-long v37, v35, v29

    const-wide/16 v39, 0xa

    mul-long v32, v37, v39

    .local v32, tmpCpuTime:J
    const/16 v34, 0x0

    .local v34, totalTimeAtSpeeds:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    move v0, v9

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    sget-object v37, Lcom/android/settings/fuelgauge/AppSipper;->mCpuSpeedStepTimes:[J

    sget v38, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v18

    move v1, v9

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v38

    aput-wide v38, v37, v9

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v37, v0

    sget-object v39, Lcom/android/settings/fuelgauge/AppSipper;->mCpuSpeedStepTimes:[J

    aget-wide v39, v39, v9

    add-long v37, v37, v39

    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v34, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-nez v34, :cond_2

    const/16 v34, 0x1

    :cond_2
    const-wide/16 v15, 0x0

    .local v15, processPower:D
    const/4 v9, 0x0

    :goto_2
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mSpeedSteps:I

    move v0, v9

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    sget-object v37, Lcom/android/settings/fuelgauge/AppSipper;->mCpuSpeedStepTimes:[J

    aget-wide v37, v37, v9

    move-wide/from16 v0, v37

    long-to-double v0, v0

    move-wide/from16 v37, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v39, v0

    div-double v19, v37, v39

    .local v19, ratio:D
    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v19

    sget-object v39, Lcom/android/settings/fuelgauge/AppSipper;->mPowerCpuNormal:[D

    aget-wide v39, v39, v9

    mul-double v37, v37, v39

    add-double v15, v15, v37

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v19           #ratio:D
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    move-wide/from16 v37, v0

    add-long v37, v37, v32

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    add-double/2addr v13, v15

    cmpg-double v37, v7, v15

    if-gez v37, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #foregroundTime:J
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppSipper;->isValidName(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_0

    move-wide v7, v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #processPower:D
    .end local v18           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v29           #systemTime:J
    .end local v32           #tmpCpuTime:J
    .end local v34           #totalTimeAtSpeeds:I
    .end local v35           #userTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    move-wide/from16 v39, v0

    cmp-long v37, v37, v39

    if-lez v37, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    move-wide/from16 v37, v0

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    move-wide/from16 v39, v0

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x2

    const-wide v39, 0x408f400000000000L

    div-double v13, v13, v39

    aput-wide v13, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v37, v0

    sget v38, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual/range {v37 .. v38}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mTxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v37, v0

    sget v38, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    invoke-virtual/range {v37 .. v38}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mRxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const-wide/16 v39, 0x0

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mTxBytes:J

    move-wide/from16 v39, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mRxBytes:J

    move-wide/from16 v41, v0

    add-long v39, v39, v41

    move-wide/from16 v0, v39

    long-to-double v0, v0

    move-wide/from16 v39, v0

    sget-wide v41, Lcom/android/settings/fuelgauge/AppSipper;->mAverageDataCost:D

    mul-double v39, v39, v41

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x4

    const-wide/16 v39, 0x0

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x4

    const-wide/16 v39, 0x0

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v25

    .local v25, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .local v23, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/BatteryStats$Uid$Sensor;

    .local v21, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v28

    .local v28, sensorType:I
    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .local v31, timer:Landroid/os/BatteryStats$Timer;
    sget v37, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    move-object/from16 v0, v31

    move-wide/from16 v1, p1

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v37

    const-wide/16 v39, 0x3e8

    div-long v26, v37, v39

    .local v26, sensorTime:J
    const-wide/16 v11, 0x0

    .local v11, multiplier:D
    packed-switch v28, :pswitch_data_0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v22

    .local v22, sensorData:Landroid/hardware/Sensor;
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Sensor;->getPower()F

    move-result v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide v11, v0

    .end local v22           #sensorData:Landroid/hardware/Sensor;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mTimeSlices:[J

    move-object/from16 v37, v0

    const/16 v38, 0x4

    aget-wide v39, v37, v38

    add-long v39, v39, v26

    aput-wide v39, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPowerSlices:[D

    move-object/from16 v37, v0

    const/16 v38, 0x4

    aget-wide v39, v37, v38

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v41, v0

    mul-double v41, v41, v11

    const-wide v43, 0x408f400000000000L

    div-double v41, v41, v43

    add-double v39, v39, v41

    aput-wide v39, v37, v38

    goto :goto_3

    :pswitch_0
    sget-object v37, Lcom/android/settings/fuelgauge/AppSipper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v38, "gps.on"

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v11

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/AppSipper;->mGpsTime:J

    goto :goto_4

    .end local v11           #multiplier:D
    .end local v21           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v23           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v26           #sensorTime:J
    .end local v28           #sensorType:I
    .end local v31           #timer:Landroid/os/BatteryStats$Timer;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/AppSipper;->resolveNameIcon()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/AppSipper;->sumTimeAndPower()V

    return-void

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public fillDetails(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "parent"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    sget-object v1, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mGpsTime:J

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mTxBytes:J

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatBytes(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mRxBytes:J

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatBytes(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f090493

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/AppSipper;->formatPower(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/AppSipper;->fillItem(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/AppSipper;->fillPowerSlices(I)V

    return-void
.end method

.method public getCheckInDetails()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .local v1, result:Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v0, printWriter:Ljava/io/PrintWriter;
    sget-object v2, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sget v3, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    const v1, 0x7f09035b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .local v1, result:Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v0, printWriter:Ljava/io/PrintWriter;
    sget-object v2, Lcom/android/settings/fuelgauge/AppSipper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v3, ""

    sget v4, Lcom/android/settings/fuelgauge/AppSipper;->mStatsType:I

    iget v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUid()Landroid/os/BatteryStats$Uid;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mUidStat:Landroid/os/BatteryStats$Uid;

    return-object v0
.end method

.method protected resolveIcon()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->resolveIcon()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method resolveNameIcon()V
    .locals 23

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    move/from16 v19, v0

    .local v19, uid:I
    sget-object v20, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .local v17, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, defaultIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .local v14, packages:[Ljava/lang/String;
    if-nez v14, :cond_5

    if-nez v19, :cond_2

    sget-object v20, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090361

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    :cond_0
    :goto_0
    const v20, 0x7f020046

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    sget-object v20, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v20, "mediaserver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x3f5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    :cond_3
    sget-object v20, Lcom/android/settings/fuelgauge/AppSipper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090362

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIconId:I

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .local v13, packageLabels:[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v22, v0

    move-object v0, v14

    move/from16 v1, v20

    move-object v2, v13

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v18, -0x1

    .local v18, preferIndex:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v20, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move/from16 v18, v8

    :cond_6
    :try_start_0
    aget-object v20, v13, v8

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, label:Ljava/lang/CharSequence;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v13, v8

    :cond_7
    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    aget-object v20, v14, v8

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_9
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v20, 0x0

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v20

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    move-object v6, v14

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v11, :cond_1

    aget-object v16, v6, v9

    .local v16, pkgName:Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .local v15, pi:Landroid/content/pm/PackageInfo;
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, nm:Ljava/lang/CharSequence;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .end local v12           #nm:Ljava/lang/CharSequence;
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v20

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatterySipper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mCpuFgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppSipper;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
