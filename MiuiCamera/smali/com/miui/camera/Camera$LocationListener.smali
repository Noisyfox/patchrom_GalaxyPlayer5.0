.class Lcom/miui/camera/Camera$LocationListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/miui/camera/Camera;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/miui/camera/Camera$LocationListener;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/Camera$LocationListener;->mValid:Z

    .line 471
    iput-object p2, p0, Lcom/miui/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    .line 472
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/miui/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 473
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/miui/camera/Camera$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 476
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/miui/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-boolean v4, v0, Lcom/miui/camera/CameraGlobal;->mGpsHasSignal:Z

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 488
    iput-boolean v4, p0, Lcom/miui/camera/Camera$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/Camera$LocationListener;->mValid:Z

    .line 496
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 492
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 499
    packed-switch p2, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/camera/Camera$LocationListener;->mValid:Z

    .line 503
    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/miui/camera/Camera$LocationListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mGpsHasSignal:Z

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
