.class Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;
.super Ljava/lang/Object;
.source "CitSensorCheckBaseActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitSensorCheckBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitSensorCheckBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitSensorCheckBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;->this$0:Lcom/android/settings/cit/CitSensorCheckBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;->this$0:Lcom/android/settings/cit/CitSensorCheckBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitSensorCheckBaseActivity$1;->this$0:Lcom/android/settings/cit/CitSensorCheckBaseActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/cit/CitSensorCheckBaseActivity;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
