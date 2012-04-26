.class Lcom/android/server/location/GpsLocationProvider$HybridGps$2;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$HybridGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object v14, v0

    .local v14, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAcc:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAcc:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAcc:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSystemTime:[J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;)[J

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPreviousSamplingTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSamplingTime:[J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;)[J

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSystemTime:[J
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    aget-wide v2, v2, v3

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mPreviousSamplingTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2002(Lcom/android/server/location/GpsLocationProvider;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2408(Lcom/android/server/location/GpsLocationProvider;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mAccReady:Z
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2202(Lcom/android/server/location/GpsLocationProvider;Z)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAccReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAttitudeReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMagReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    #calls: Lcom/android/server/location/GpsLocationProvider$HybridGps;->hybridGpsDeliverSensorData()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$HybridGps;->access$6700(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLPPIsInStop:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPreviousSamplingTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v3

    const-wide/16 v5, 0x5dc

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeUTCLastReportedLocation:J
    invoke-static {v12}, Lcom/android/server/location/GpsLocationProvider;->access$6800(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v12

    const-wide/16 v14, 0x5dc

    add-long/2addr v12, v14

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V
    invoke-static/range {v1 .. v13}, Lcom/android/server/location/GpsLocationProvider;->access$6900(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V

    .end local v14           #sensor:Landroid/hardware/Sensor;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call reportLocation() forcefully : SystemTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UTC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeUTCLastReportedLocation:J
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$6800(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .restart local v14       #sensor:Landroid/hardware/Sensor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSamplingTime:[J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;)[J

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSystemTime:[J
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAccelerometerIndex:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPreviousSamplingTime:J
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    aput-wide v3, v1, v2

    goto/16 :goto_0
.end method
