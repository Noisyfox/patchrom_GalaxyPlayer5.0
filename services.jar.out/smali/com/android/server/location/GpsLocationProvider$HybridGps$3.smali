.class Lcom/android/server/location/GpsLocationProvider$HybridGps$3;
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
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

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

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ge v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMag:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMag:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMag:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMag:[[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAccuracyMagneticField:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2508(Lcom/android/server/location/GpsLocationProvider;)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mMagReady:Z
    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$2302(Lcom/android/server/location/GpsLocationProvider;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAccReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAttitudeReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMagReady:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    #calls: Lcom/android/server/location/GpsLocationProvider$HybridGps;->hybridGpsDeliverSensorData()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$HybridGps;->access$6700(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V

    :cond_1
    return-void
.end method
